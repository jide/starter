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

projects[starter_site_building_ui][type] = "module"
projects[starter_site_building_ui][download][type] = "git"
projects[starter_site_building_ui][download][url] = "git://github.com/jide/starter_site_building_ui.git"
projects[starter_site_building_ui][subdir] = "features"

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

projects[starter_fields][type] = "module"
projects[starter_fields][download][type] = "git"
projects[starter_fields][download][url] = "git://github.com/jide/starter_fields.git"
projects[starter_fields][subdir] = "features"

projects[starter_frontpage][type] = "module"
projects[starter_frontpage][download][type] = "git"
projects[starter_frontpage][download][url] = "git://github.com/jide/starter_frontpage.git"
projects[starter_frontpage][subdir] = "features"

projects[starter_content][type] = "module"
projects[starter_content][download][type] = "git"
projects[starter_content][download][url] = "git://github.com/jide/starter_content.git"
projects[starter_content][subdir] = "features"

projects[starter_content_article][type] = "module"
projects[starter_content_article][download][type] = "git"
projects[starter_content_article][download][url] = "git://github.com/jide/starter_content_article.git"
projects[starter_content_article][subdir] = "features"

projects[starter_content_page][type] = "module"
projects[starter_content_page][download][type] = "git"
projects[starter_content_page][download][url] = "git://github.com/jide/starter_content_page.git"
projects[starter_content_page][subdir] = "features"

projects[starter_multilingual][type] = "module"
projects[starter_multilingual][download][type] = "git"
projects[starter_multilingual][download][url] = "git://github.com/jide/starter_multilingual.git"
projects[starter_multilingual][subdir] = "features"

;projects[starter_multilingual_article][type] = "module"
;projects[starter_multilingual_article][download][type] = "git"
;projects[starter_multilingual_article][download][url] = "git://github.com/jide/starter_multilingual_article.git"
;projects[starter_multilingual_article][subdir] = "features"

;projects[starter_multilingual_page][type] = "module"
;projects[starter_multilingual_page][download][type] = "git"
;projects[starter_multilingual_page][download][url] = "git://github.com/jide/starter_multilingual_page.git"
;projects[starter_multilingual_page][subdir] = "features"

;projects[starter_multilingual_media][type] = "module"
;projects[starter_multilingual_media][download][type] = "git"
;projects[starter_multilingual_media][download][url] = "git://github.com/jide/starter_multilingual_media.git"
;projects[starter_multilingual_media][subdir] = "features"

projects[starter_seo][type] = "module"
projects[starter_seo][download][type] = "git"
projects[starter_seo][download][url] = "git://github.com/jide/starter_seo.git"
projects[starter_seo][subdir] = "features"

projects[starter_search][type] = "module"
projects[starter_search][download][type] = "git"
projects[starter_search][download][url] = "git://github.com/jide/starter_search.git"
projects[starter_search][subdir] = "features"

projects[starter_carousel][type] = "module"
projects[starter_carousel][download][type] = "git"
projects[starter_carousel][download][url] = "git://github.com/jide/starter_carousel.git"
projects[starter_carousel][subdir] = "features"

projects[starter_commerce][type] = "module"
projects[starter_commerce][download][type] = "git"
projects[starter_commerce][download][url] = "git://github.com/jide/starter_commerce.git"
projects[starter_commerce][subdir] = "features"

projects[starter_devel][type] = "module"
projects[starter_devel][download][type] = "git"
projects[starter_devel][download][url] = "git://github.com/jide/starter_devel.git"
projects[starter_devel][subdir] = "features"
