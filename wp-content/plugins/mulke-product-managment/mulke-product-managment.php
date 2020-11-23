<?php
/**
 * @package MulkeProduktManagmentPlugin
 * @version 1.0.0
 */
/*
Plugin Name: Mulke Produkt Managment Plugin
Description: Dies ist ein Plugin zur Verwaltung der Mulke Topfkraeuter Produkte (Hinzufügen, Editieren, Löschen)
Author: Nagham Nader
*/

/** Absolut path : if not defined -> user with no rights -> die */
defined('ABSPATH') or die('Hey, you can not access this file');

// create plugin class
class MulkeProduktManagmentPlugin
{
    
    function activate()
    {
        
    }
    
    function deactivate()
    {
        
    }
    
    function uninstall()
    {
        echo 'plugin is uninstalled';
    }
    
}
if (class_exists('MulkeProduktManagmentPlugin')) {
    $mulkeProduktPlugin = new MulkeProduktManagmentPlugin();
}

//activation

register_activation_hook(__FILE__, array(
    $mulkeProduktPlugin,
    'activate'
));

//deactivation

register_deactivation_hook(__FILE__, array(
    $mulkeProduktPlugin,
    'deactivate'
));

// plugins setup function -> Hinzufügen des Plugins in das Wordpress Admin Menü(alle Produkte, Produkt hinzufügen)
add_action('admin_menu', 'mulke_management_plugin_setup_menu');
function mulke_management_plugin_setup_menu()
{
    
    // 1-title of options page 2-Label for admin panel 3-which users can see the option 4- is the slug which is used to identify the menu 5-name of the function we want to call when the option is selected
    add_menu_page('Mulke Management Plugin ', 'Mulke Produkt Managment', 'manage_options', 'mulke_Produkt_managment', 'open_plugin_home');
    add_submenu_page('mulke_Produkt_managment', 'Add Produkt', 'Add Produkt', 'manage_options', 'mulke_add_produkt_item', 'open_add_produkt');
}

// Öffnet "Alle Produkte"-Ansicht
function open_plugin_home()
{
    include 'all-product-view.php';
}

// Öffnet "Produkt hinzufügen"-Ansicht
function open_add_produkt()
{
    
    include 'add-product-view.php';
}


?>