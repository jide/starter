; starter make file
core = "7.x"
api = "2"

projects[] = drupal

; +++++ Modules +++++

projects[features][subdir] = "contrib"
projects[features_override][subdir] = "contrib"
projects[l10n_update][subdir] = "contrib"
projects[variable][subdir] = "contrib"

; +++++ Features +++++

projects[starter_theming][type] = "module"
projects[starter_theming][download][type] = "git"
projects[starter_theming][download][url] = "git://github.com/jide/starter_theming.git"
projects[starter_theming][subdir] = "features"
