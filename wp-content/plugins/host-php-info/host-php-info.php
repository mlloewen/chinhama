<?php
/*

**************************************************************************

Plugin Name:  Host PHP Info
Plugin URI:   http://www.arefly.com/host-php-info/
Description:  View PHP Info of your host. 查看伺服器的PHP信息
Version:      1.0.4
Author:       Arefly
Author URI:   http://www.arefly.com/
Text Domain:  host-php-info
Domain Path:  /lang/

**************************************************************************

	Copyright 2014  Arefly  (email : eflyjason@gmail.com)

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License, version 2, as 
	published by the Free Software Foundation.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

**************************************************************************/

define("HOST_PHP_INFO_PLUGIN_URL", plugin_dir_url( __FILE__ ));
define("HOST_PHP_INFO_FULL_DIR", plugin_dir_path( __FILE__ ));
define("HOST_PHP_INFO_TEXT_DOMAIN", "host-php-info");

/* Plugin Localize */
function host_php_info_load_plugin_textdomain() {
	load_plugin_textdomain(HOST_PHP_INFO_TEXT_DOMAIN, false, dirname(plugin_basename( __FILE__ )).'/lang/');
}
add_action('plugins_loaded', 'host_php_info_load_plugin_textdomain');

/* Add Links to Plugins Management Page */
function host_php_info_action_links($links){
	$links[] = '<a href="'.get_admin_url(null, 'options-general.php?page='.HOST_PHP_INFO_TEXT_DOMAIN.'-options').'">'.__("Settings", HOST_PHP_INFO_TEXT_DOMAIN).'</a>';
	return $links;
}
add_filter('plugin_action_links_'.plugin_basename(__FILE__), 'host_php_info_action_links');

function host_php_info_register_options_page() {
	add_management_page(__('View PHP Info', HOST_PHP_INFO_TEXT_DOMAIN), __('View PHP Info', HOST_PHP_INFO_TEXT_DOMAIN), 'manage_options', HOST_PHP_INFO_TEXT_DOMAIN.'-options', 'host_php_info_redirect');
}
add_action('admin_menu', 'host_php_info_register_options_page');

function host_php_info_redirect() {
	if(isset($_GET['page']) && $_GET['page'] == HOST_PHP_INFO_TEXT_DOMAIN.'-options'){
		wp_redirect(HOST_PHP_INFO_PLUGIN_URL."info.php");
		exit();
	}
}
add_action('admin_init', 'host_php_info_redirect', 1);