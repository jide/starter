<?php

/**
 * Implements hook_form_alter().
 *
 * Select the current install profile by default.
 */
if (!function_exists("system_form_install_select_profile_form_alter")) {
  function system_form_install_select_profile_form_alter(&$form, $form_state) {
    foreach ($form['profile'] as $key => $element) {
      $form['profile'][$key]['#value'] = 'starter';
    }
  }
}

/**
 * Implement hook_install_tasks().
 */
function starter_install_tasks($install_state) {
  // Determine whether translation import tasks will need to be performed.
  $needs_translations = count($install_state['locales']) > 1 && !empty($install_state['parameters']['locale']) && $install_state['parameters']['locale'] != 'en';

  return array(
    'starter_import_translation' => array(
      'display_name' => st('Set up translations'),
      'display' => $needs_translations,
      'run' => $needs_translations ? INSTALL_TASK_RUN_IF_NOT_COMPLETED : INSTALL_TASK_SKIP,
      'type' => 'batch',
    ),
    /*
    'starter_replace_titles' => array(
      'display_name' => st('Replace titles'),
      'display' => TRUE,
      'run' => INSTALL_TASK_RUN_IF_NOT_COMPLETED,
      'type' => 'batch',
    ),
    */
  );
}

/**
 * Implement hook_install_tasks_alter().
 *
 * Perform actions to set up the site for this profile.
 */
function starter_install_tasks_alter(&$tasks, $install_state) {
  // Remove core steps for translation imports.
  unset($tasks['install_import_locales']);
  unset($tasks['install_import_locales_remaining']);
}

/**
 * Installation step callback.
 *
 * @param $install_state
 *   An array of information about the current installation state.
 */
function starter_import_translation(&$install_state) {
  // Enable installation language as default site language.
  include_once DRUPAL_ROOT . '/includes/locale.inc';
  $install_locale = $install_state['parameters']['locale'];
  locale_add_language($install_locale, NULL, NULL, NULL, '', NULL, 1, TRUE);

  // Build batch with l10n_update module.
  $history = l10n_update_get_history();
  module_load_include('check.inc', 'l10n_update');
  $available = l10n_update_available_releases();
  $updates = l10n_update_build_updates($history, $available);

  module_load_include('batch.inc', 'l10n_update');
  $updates = _l10n_update_prepare_updates($updates, NULL, array());
  $batch = l10n_update_batch_multiple($updates, LOCALE_IMPORT_KEEP);
  return $batch;
}

/**
 * Installation step callback.
 *
 * @param $install_state
 *   An array of information about the current installation state.
 */
function starter_replace_titles(&$install_state) {
  $batch = array(
    'title' => t('Replacing field values'),
    'operations' => array(),
  );

  $info = entity_get_info();
  foreach ($info as $entity_type => $entity_info) {
    if (!empty($entity_info['fieldable']) && !empty($info[$entity_type]['field replacement'])) {
      foreach ($info[$entity_type]['field replacement'] as $legacy_field => $data) {
        foreach ($entity_info['bundles'] as $bundle => $bundle_info) {
          $batch['operations'][] = array('title_field_replacement_batch', array($entity_type, $bundle, $legacy_field));
        }
      }
    }
  }

  return $batch;
}
