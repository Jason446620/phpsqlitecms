CREATE TABLE phpsqlitecms_banlists (name varchar(255) NOT NULL default '', list text NOT NULL) CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE phpsqlitecms_gcb (id int(11) NOT NULL auto_increment, title varchar(255) NOT NULL default '', content text NOT NULL, content_formatting tinyint(4) default '0', PRIMARY KEY (id)) CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE phpsqlitecms_menus (id int(11) NOT NULL auto_increment, menu varchar(255) NOT NULL default '', sequence int(11) NOT NULL default '1', name varchar(255) NOT NULL default '', title varchar(255) NOT NULL default '', link varchar(255) NOT NULL default '', section varchar(255) NOT NULL default '', accesskey varchar(255) NOT NULL default '', PRIMARY KEY (id)) CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE phpsqlitecms_news (id int(11) NOT NULL auto_increment, page_id int(11), time int(11), title varchar(255) NOT NULL, teaser TEXT, text TEXT, text_formatting tinyint(4), linkname varchar(255), PRIMARY KEY (id)) CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE phpsqlitecms_notes (id int(11) NOT NULL auto_increment, note_section varchar(255) NOT NULL default '', sequence int(11) NOT NULL default '1', time int(11) NOT NULL default '0', title varchar(255) NOT NULL default '', text TEXT NOT NULL, text_formatting tinyint(4) default '0', link varchar(255) NOT NULL default '', linkname varchar(255) NOT NULL default '', PRIMARY KEY (id)) CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE phpsqlitecms_pages (id int(11) NOT NULL auto_increment, page varchar(255) NOT NULL default '', author int(11) NOT NULL default '0', type varchar(255) NOT NULL default '', type_addition varchar(255) NOT NULL default '', time int(11) NOT NULL default '0', display_time tinyint(4) default '0', last_modified int(11) NOT NULL default '0', last_modified_by int(11) NOT NULL default '0', title varchar(255) NOT NULL default '', page_title varchar(255) NOT NULL default '', description varchar(255) NOT NULL default '', keywords varchar(255) NOT NULL default '', category varchar(255) NOT NULL default '', page_info varchar(255) NOT NULL default '', language_file varchar(255) NOT NULL default '', breadcrumbs varchar(255) NOT NULL default '', sections varchar(255) NOT NULL default '', include_page int(11) NOT NULL default '0', include_order int(11) NOT NULL default '0', include_rss int(11) NOT NULL default '0', include_sitemap int(11) NOT NULL default '0', link_name varchar(255) NOT NULL default '', menu_1 varchar(255) NOT NULL default '', menu_2 varchar(255) NOT NULL default '', menu_3 varchar(255) NOT NULL default '', gcb_1 int(11) NOT NULL default '0', gcb_2 int(11) NOT NULL default '0', gcb_3 int(11) NOT NULL default '0', template varchar(255) NOT NULL default '', content_type varchar(255) NOT NULL default '', charset varchar(255) NOT NULL default '', headline varchar(255) NOT NULL default '', teaser_headline varchar(255) NOT NULL default '', teaser TEXT, teaser_formatting tinyint(4) default '0', teaser_img varchar(255) NOT NULL default '', content TEXT, content_formatting tinyint(4) default '0', sidebar_1 TEXT, sidebar_1_formatting tinyint(4) default '0', sidebar_2 TEXT, sidebar_2_formatting tinyint(4) default '0', sidebar_3 TEXT, sidebar_3_formatting tinyint(4) default '0', page_notes TEXT, edit_permission varchar(255) NOT NULL default '', edit_permission_general tinyint(4) default '0', custom_values varchar(255) NOT NULL default '', status tinyint(4) default '2', views int(11) NOT NULL default '0', include_news int(11) NOT NULL default '0', PRIMARY KEY (id)) CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE phpsqlitecms_photos (id int(11) NOT NULL auto_increment, gallery varchar(255) NOT NULL default '', sequence int(11) NOT NULL default '1', photo_thumbnail varchar(255) NOT NULL default '', photo_normal varchar(255) NOT NULL default '', photo_large varchar(255) NOT NULL default '', photo_xlarge varchar(255) NOT NULL default '', width int(11) NOT NULL default '0', height int(11) NOT NULL default '0', large_width int(11) NOT NULL default '0', large_height int(11) NOT NULL default '0', title varchar(255) NOT NULL default '', subtitle varchar(255) NOT NULL default '', description TEXT NOT NULL, description_formatting tinyint(4) default '0', template varchar(255) NOT NULL default '', photos_per_row tinyint(4) NOT NULL default '4', PRIMARY KEY (id)) CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE phpsqlitecms_settings (name varchar(255) NOT NULL default '', value varchar(255) NOT NULL default '') CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE phpsqlitecms_comments (id int(11) NOT NULL auto_increment, type tinyint(4) NOT NULL default '0', comment_id int(11) NOT NULL default '0', time int(11) NOT NULL default '0', ip varchar(255) NOT NULL default '', name varchar(255) NOT NULL default '', email_hp varchar(255) NOT NULL default '', comment text NOT NULL, PRIMARY KEY (id)) CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE phpsqlitecms_newsletter (id int(11) NOT NULL auto_increment, newsletter_id int(11) NOT NULL default '0', time int(11) NOT NULL default '0', ip varchar(255) NOT NULL default '', email varchar(255) NOT NULL default '', confirmed tinyint(4) default '0', confirmation_code varchar(255) NOT NULL default '', PRIMARY KEY (id))  CHARSET=utf8 COLLATE=utf8_general_ci;
CREATE TABLE phpsqlitecms_userdata (id int(11) NOT NULL auto_increment, name varchar(255) NOT NULL default '', type tinyint(4) NOT NULL default '0', pw varchar(255) NOT NULL default '', last_login int(11) NOT NULL default '0', wysiwyg tinyint(4) NOT NULL default '0', PRIMARY KEY (id)) CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO phpsqlitecms_banlists VALUES('user_agents', '');
INSERT INTO phpsqlitecms_banlists VALUES('ips', '');
INSERT INTO phpsqlitecms_banlists VALUES('words', '');

INSERT INTO phpsqlitecms_menus VALUES(1, 'main_menu', 1, 'Home', 'Home', '', 'home', '0');

INSERT INTO phpsqlitecms_pages (id, page, author, type, type_addition, time, display_time, last_modified, last_modified_by, title, page_title, description, keywords, page_info, language_file, breadcrumbs, sections, include_page, include_order, include_rss, include_sitemap, link_name, menu_1, menu_2, menu_3, gcb_1, gcb_2, gcb_3, template, content_type, charset, headline, teaser_headline, teaser, teaser_formatting, teaser_img, content, content_formatting, sidebar_1, sidebar_1_formatting, sidebar_2, sidebar_2_formatting, sidebar_3, sidebar_3_formatting, page_notes, edit_permission, edit_permission_general, custom_values, status, views, include_news) VALUES(1, 'index', 1, 'default', '', 1230764400, 0, 1275487165, 1, 'Home', 'A simple &amp; lightweight CMS', 'phpSQLiteCMS - a simple and lightweight content management system based on php and SQLite', 'CMS, content management system, php, sqlite', '', '', '', 'home', 0, 0, 0, 0, 'more...', 'main_menu', '', '', 0, 0, 0, 'default.tpl', '', '', '', '', '', 1, '', '<h1>Welcome to phpSQLiteCMS with MySQL!</h1>\r\n\r\n<p><em>phpSQLiteCMS</em> is a simple and lightweight open source web content management system (CMS) based on <a href="http://php.net/" class="extern">PHP</a> and <a href="http://www.sqlite.org/" class="extern">SQLite</a>. It''s licensed under the <a href="http://www.gnu.org/copyleft/gpl.html" class="extern">GNU General Public License</a>.</p>\r\n\r\n<p><em>phpSQLiteCMS</em> is good if you want to quickly set up a small website without needing to spend a lot of time studying, installing and configuring (as SQLite is file-based, it just runs "out of the box"). But note that it is no large scale content management system - it''s a tiny and simple one!</p>\r\n\r\n<h2>Features</h2>\r\n\r\n<ul>\r\n<li>Simple and lightweight</li>\r\n<li>Runs out of the box (no database setup required)</li>\r\n<li>Optional caching to save server performance</li>\r\n<li>Supports news, overview and commentable pages, photo galleries, search function, RSS feeds and XML sitemaps</li>\r\n</ul>\r\n\r\n<h2>Example websites</h2>\r\n\r\n<ul>\r\n<li><a href="http://mylittlehomepage.net/" class="extern">my little homepage</a> - as its name implies ;-)</li>\r\n<li><a href="http://mylittleforum.net/" class="extern">my little forum</a> - another project of the author of <em>phpSQLiteCMS</em></li>\r\n<li><a href="http://procosara.org/" class="extern">Pro Cosara</a> - an association dedicated to the conservation of Atlantic Forest in Paraguay</li>\r\n</ul>', 0, '<div class="sidebarbox">\r\n<h3>It works!</h3>\r\n<p>If you see this, <em>phpSQLiteCMS</em> seems to work! First thing to do is [[cms/index.php|log in]] and [[cms/index.php?mode=users&amp;edit=1|change the password]] (the default username and password is <i>admin</i>).</p>\r\n</div>\r\n\r\n<div class="sidebarbox subbox">\r\n<h3>Search</h3>\r\n<form id="search" action="search" method="post">\r\n<p><label for="searchfield">Search this website:</label><br />\r\n<input id="searchfield" type="text" name="q" value="" size="22" maxlength="200" /> <input type="image" name="" src="templates/images/submit.png" alt="&raquo;" /></p>\r\n</form>\r\n</div>', 0, '', 0, '', 0, 'Here you can write down some notes. These notes will not be published. If you see this, <em>phpSQLiteCMS</em> seems to work! First thing to do is [[cms/index.php|log in]] and [[cms/index.php?mode=user|change the password]] (the default username and password is <i>admin</i>). Then you can begin to [[cms/index.php?mode=edit&amp;id=1|edit this page]]. The other pages are examples to see what you can do with this CMS. Just play with them to learn about the functionality...', '', 0, '', 2, 0, 0);
INSERT INTO phpsqlitecms_pages (id, page, author, type, type_addition, time, display_time, last_modified, last_modified_by, title, page_title, description, keywords, page_info, language_file, breadcrumbs, sections, include_page, include_order, include_rss, include_sitemap, link_name, menu_1, menu_2, menu_3, gcb_1, gcb_2, gcb_3, template, content_type, charset, headline, teaser_headline, teaser, teaser_formatting, teaser_img, content, content_formatting, sidebar_1, sidebar_1_formatting, sidebar_2, sidebar_2_formatting, sidebar_3, sidebar_3_formatting, page_notes, edit_permission, edit_permission_general, custom_values, status, views, include_news) VALUES(2, '404', 1, 'default', '', 1230764400, 0, 1243521399, 1, 'Not Found', '404 Not Found', '', '', '', '', '', '', 0, 0, 0, 0, 'mehr...', 'main_menu', '', '', 0, 0, 0, 'default.tpl', '', '', 'Not Found', '', '', 1, '', 'The requested URL was not found on this server.', 1, '<div class="sidebarbox">\r\n<h3>Search</h3>\r\n<form id="search" action="search" method="post">\r\n<p><input id="searchfield" type="text" name="q" value="" size="22" maxlength="200" /> <input type="image" name="" src="templates/images/submit.png" alt="&raquo;" /></p>\r\n</form>\r\n</div>', 0, '', 0, '', 0, '', '', 0, '', 1, 0, 0);

INSERT INTO phpsqlitecms_settings VALUES('index_page','index');
INSERT INTO phpsqlitecms_settings VALUES('error_page','404');
INSERT INTO phpsqlitecms_settings VALUES('comment_order','1');
INSERT INTO phpsqlitecms_settings VALUES('comments_per_page','10');
INSERT INTO phpsqlitecms_settings VALUES('default_page_language_file','English.lang.php');
INSERT INTO phpsqlitecms_settings VALUES('website_title','phpSQLiteCMS');
INSERT INTO phpsqlitecms_settings VALUES('website_subtitle','A simple & lightweight CMS');
INSERT INTO phpsqlitecms_settings VALUES('website_footnote_1','');
INSERT INTO phpsqlitecms_settings VALUES('website_footnote_2','&copy; 2011 &hellip;');
INSERT INTO phpsqlitecms_settings VALUES('news_per_page','10');
INSERT INTO phpsqlitecms_settings VALUES('email','me@example.com');
INSERT INTO phpsqlitecms_settings VALUES('comment_notification','0');
INSERT INTO phpsqlitecms_settings VALUES('comment_maxlength','1000');
INSERT INTO phpsqlitecms_settings VALUES('word_maxlength','30');
INSERT INTO phpsqlitecms_settings VALUES('name_maxlength','50');
INSERT INTO phpsqlitecms_settings VALUES('email_hp_maxlength','100');
INSERT INTO phpsqlitecms_settings VALUES('default_image_class','teaser');
INSERT INTO phpsqlitecms_settings VALUES('default_thumbnail_class','teaser');
INSERT INTO phpsqlitecms_settings VALUES('default_gallery_image_class','thumbnail');
INSERT INTO phpsqlitecms_settings VALUES('image_classes','float-left, float-right, thumbnail');
INSERT INTO phpsqlitecms_settings VALUES('photos_commentable','0');
INSERT INTO phpsqlitecms_settings VALUES('count_views','0');
INSERT INTO phpsqlitecms_settings VALUES('default_template','default.tpl');
INSERT INTO phpsqlitecms_settings VALUES('default_photo_template','photo.tpl');
INSERT INTO phpsqlitecms_settings VALUES('default_slideshow_template','slideshow.tpl');
INSERT INTO phpsqlitecms_settings VALUES('location_maxlength','50');
INSERT INTO phpsqlitecms_settings VALUES('admin_entries_per_page','20');
INSERT INTO phpsqlitecms_settings VALUES('resize','640');
INSERT INTO phpsqlitecms_settings VALUES('resize_xy','x');
INSERT INTO phpsqlitecms_settings VALUES('compression','80');
INSERT INTO phpsqlitecms_settings VALUES('session_prefix','phpsqlitecms_');
INSERT INTO phpsqlitecms_settings VALUES('default_menu','main_menu');
INSERT INTO phpsqlitecms_settings VALUES('smiley_directory','images/smilies');
INSERT INTO phpsqlitecms_settings VALUES('comment_smilies','1');
INSERT INTO phpsqlitecms_settings VALUES('comment_auto_link','1');
INSERT INTO phpsqlitecms_settings VALUES('content_smilies','0');
INSERT INTO phpsqlitecms_settings VALUES('content_auto_link','0');
INSERT INTO phpsqlitecms_settings VALUES('default_description','');
INSERT INTO phpsqlitecms_settings VALUES('default_keywords','');
INSERT INTO phpsqlitecms_settings VALUES('akismet_key','');
INSERT INTO phpsqlitecms_settings VALUES('rss_maximum_items','20');
INSERT INTO phpsqlitecms_settings VALUES('search_results_per_page','20');
INSERT INTO phpsqlitecms_settings VALUES('counter_last_resetted','1249183456');
INSERT INTO phpsqlitecms_settings VALUES('notes_per_page','10');
INSERT INTO phpsqlitecms_settings VALUES('entries_show_email','0');
INSERT INTO phpsqlitecms_settings VALUES('mail_parameter','');
INSERT INTO phpsqlitecms_settings VALUES('base_url','');
INSERT INTO phpsqlitecms_settings VALUES('default_photos_per_row','4');
INSERT INTO phpsqlitecms_settings VALUES('version','2.0.2');
INSERT INTO phpsqlitecms_settings VALUES('caching','0');
INSERT INTO phpsqlitecms_settings VALUES('breadcrumbs','5');
INSERT INTO phpsqlitecms_settings VALUES('slideshow','0');
INSERT INTO phpsqlitecms_settings VALUES('base_path','');
INSERT INTO phpsqlitecms_settings VALUES('admin_language_file','English.admin.lang.php');
INSERT INTO phpsqlitecms_settings VALUES('default_formatting','0');
INSERT INTO phpsqlitecms_settings VALUES('akismet_entry_check','0');
INSERT INTO phpsqlitecms_settings VALUES('akismet_mail_check','0');
INSERT INTO phpsqlitecms_settings VALUES('prevent_repeated_posts_minutes','2');
INSERT INTO phpsqlitecms_settings VALUES('comment_remove_blank_lines','1');
INSERT INTO phpsqlitecms_settings VALUES('admin_auto_clear_cache','1');
INSERT INTO phpsqlitecms_settings VALUES('check_access_permission','0');
INSERT INTO phpsqlitecms_settings VALUES('wysiwyg_editor','1');
INSERT INTO phpsqlitecms_settings VALUES('time_zone','');
INSERT INTO phpsqlitecms_settings VALUES('simple_news_per_page','10');
INSERT INTO phpsqlitecms_settings VALUES('global_content_blocks','1');
INSERT INTO phpsqlitecms_settings VALUES('include_news_items','3');
INSERT INTO phpsqlitecms_settings VALUES('content_functions','0');
INSERT INTO phpsqlitecms_settings VALUES('rss_feed','rss');
INSERT INTO phpsqlitecms_settings VALUES('email_subject_maxlength','100');
INSERT INTO phpsqlitecms_settings VALUES('email_text_maxlength','10000');
INSERT INTO phpsqlitecms_settings VALUES('enable_fullfeeds','1');
INSERT INTO phpsqlitecms_settings VALUES('pingback_title_maxlength','60');
INSERT INTO phpsqlitecms_settings VALUES('pingbacks_enabled','1');
INSERT INTO phpsqlitecms_settings VALUES('lightbox_enabled','0');
INSERT INTO phpsqlitecms_settings VALUES('thumbnail_resize_xy','x');
INSERT INTO phpsqlitecms_settings VALUES('thumbnail_compression','70');
INSERT INTO phpsqlitecms_settings VALUES('thumbnail_resize','170');
INSERT INTO phpsqlitecms_settings VALUES('thumbnail_postfix','_thumbnail');
INSERT INTO phpsqlitecms_settings VALUES('thumbnail_prefix','');

INSERT INTO phpsqlitecms_userdata VALUES(1, 'admin', 1, '75470d05abd21fb5e84e735d2bc595e2f7ecc5c7a5e98ad0d7', 1230764400, 0);
