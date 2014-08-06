; starter make file
core = "7.x"
api = "2"

projects[] = drupal

; +++++ Modules +++++

projects[features][subdir] = "contrib"
projects[l10n_update][subdir] = "contrib"
projects[variable][subdir] = "contrib"

; +++++ Features +++++

projects[starter_core][type] = "module"
projects[starter_core][download][type] = "git"
projects[starter_core][download][url] = "git://github.com/jide/starter_core.git"
projects[starter_core][subdir] = "features"

projects[starter_admin][type] = "module"
projects[starter_admin][download][type] = "git"
projects[starter_admin][download][url] = "git://github.com/jide/starter_admin.git"
projects[starter_admin][subdir] = "features"

projects[starter_site_building][type] = "module"
projects[starter_site_building][download][type] = "git"
projects[starter_site_building][download][url] = "git://github.com/jide/starter_site_building.git"
projects[starter_site_building][subdir] = "features"

projects[starter_wysiwyg][type] = "module"
projects[starter_wysiwyg][download][type] = "git"
projects[starter_wysiwyg][download][url] = "git://github.com/jide/starter_wysiwyg.git"
projects[starter_wysiwyg][subdir] = "features"

projects[starter_forms][type] = "module"
projects[starter_forms][download][type] = "git"
projects[starter_forms][download][url] = "git://github.com/jide/starter_forms.git"
projects[starter_forms][subdir] = "features"

projects[starter_media][type] = "module"
projects[starter_media][download][type] = "git"
projects[starter_media][download][url] = "git://github.com/jide/starter_media.git"
projects[starter_media][subdir] = "features"

projects[starter_theming][type] = "module"
projects[starter_theming][download][type] = "git"
projects[starter_theming][download][url] = "git://github.com/jide/starter_theming.git"
projects[starter_theming][subdir] = "features"

projects[starter_date][type] = "module"
projects[starter_date][download][type] = "git"
projects[starter_date][download][url] = "git://github.com/jide/starter_date.git"
projects[starter_date][subdir] = "features"

projects[starter_devel][type] = "module"
projects[starter_devel][download][type] = "git"
projects[starter_devel][download][url] = "git://github.com/jide/starter_devel.git"
projects[starter_devel][subdir] = "features"
