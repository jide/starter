; starter make file
core = "7.x"
api = "2"

projects[] = drupal

; +++++ Themes +++++

projects[] = bootstrap

; +++++ Modules +++++

projects[features][subdir] = "contrib"
projects[l10n_update][subdir] = "contrib"
projects[variable][subdir] = "contrib"

; +++++ Features +++++

projects[starter_core][type] = "module"
projects[starter_core][download][type] = "git"
projects[starter_core][download][url] = "git://github.com/jide/starter_core.git"
projects[starter_core][subdir] = "features"

projects[starter_site_building][type] = "module"
projects[starter_site_building][download][type] = "git"
projects[starter_site_building][download][url] = "git://github.com/jide/starter_site_building.git"
projects[starter_site_building][subdir] = "features"

projects[starter_wysiwyg][type] = "module"
projects[starter_wysiwyg][download][type] = "git"
projects[starter_wysiwyg][download][url] = "git://github.com/jide/starter_wysiwyg.git"
projects[starter_wysiwyg][subdir] = "features"

projects[starter_media][type] = "module"
projects[starter_media][download][type] = "git"
projects[starter_media][download][url] = "git://github.com/jide/starter_media.git"
projects[starter_media][subdir] = "features"
