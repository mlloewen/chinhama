=== Host PHP Info ===
Contributors: eflyjason
Donate link: http://www.arefly.com/donate/
Tags: PHP, PHP Info
Requires at least: 3.0
Tested up to: 3.8
Stable tag: trunk
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

View PHP Info of your host. 查看伺服器的PHP信息

== Description ==

You can see your PHP Info in Tools->View PHP Info

你就可以在「工具->檢視PHP信息」看到伺服器的PHP信息

= Translators =

* Chinese, Simplified (zh_CN) - [Arefly](http://www.arefly.com/)
* Chinese, Traditional (zh_TW) - [Arefly](http://www.arefly.com)
* English (en_US) - [Arefly](http://www.arefly.com)

If you have created your own language pack, or have an update of an existing one, you can send [gettext PO and MO files](http://codex.wordpress.org/Translating_WordPress) to [Arefly](http://www.arefly.com/about/) so that I can bundle it into Host PHP Info. You can download the latest [POT file](http://plugins.svn.wordpress.org/host-php-info/trunk/lang/host-php-info.pot).

== Installation ==

###Updgrading From A Previous Version###

To upgrade from a previous version of this plugin, delete the entire folder and files from the previous version of the plugin and then follow the installation instructions below.

###Installing The Plugin###

Extract all files from the ZIP file, making sure to keep the file structure intact, and then upload it to `/wp-content/plugins/`.

This should result in the following file structure:

`- wp-content
    - plugins
        - host-php-info
            | info.php
            - lang
                | host-php-info-zh_CN.mo
                | host-php-info-zh_CN.po
                | host-php-info-zh_TW.mo
                | host-php-info-zh_TW.po
                | host-php-info.pot
                | readme.txt
            | host-php-info.php
            | LICENSE
            | license.txt
            | options.php
            | readme.txt`

Then just visit your admin area and activate the plugin.

And now you can see your PHP Info in Tools->View PHP Info

**See Also:** ["Installing Plugins" article on the WP Codex](http://codex.wordpress.org/Managing_Plugins#Installing_Plugins)

== Frequently Asked Questions ==

= I cannot active this plugin, what can i do? =

You may post on the [support forum of this plugin](http://wordpress.org/support/plugin/host-php-info/) to ask for help.

= I love this plugin! Can I donate to you? =

YES! I do this in my free time and I appreciate all donations that I get. It makes me want to continue to update this plugin. You can find more details on [About Me Page](http://www.arefly.com/about/).

== Screenshots ==

1. The PHP Info of My Host.

== Changelog == 

**Version 1.0.4**

* Remove All Remote Load File.

**Version 1.0.3**

* Fix Bug of `define`. (Thanks to cmhello)

**Version 1.0.2**

* Add Screen Shot.

**Version 1.0.1**

* Add Banners.

* Fix Bugs.

**Version 1.0**

* Initial release.

== Upgrade Notice ==

See Changelog.