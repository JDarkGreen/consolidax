<?php  

/***********************************************************************************************/
/* 	Define Constantes */
/***********************************************************************************************/
define('THEMEROOT', get_stylesheet_directory_uri());
define('IMAGES', THEMEROOT.'/images');
define('LANG', 'pretelli-framework');

/***********************************************************************************************/
/* Cargar archivos JS */
/***********************************************************************************************/

include_once("functions/theme/scripts.php");


/***********************************************************************************************/
/* Marcar la navegacion del padre activo cuanto se encuentra en un single post type */
/***********************************************************************************************/

require_once("functions/theme/nav-active-parent.php");

/***********************************************************************************************/
/* Agregar formatos al tema  */
/***********************************************************************************************/
include_once("functions/theme/support-formats.php");

/***********************************************************************************************/
/* Registrar Menus */
/***********************************************************************************************/
include_once("functions/theme/menu-register.php");


/***********************************************************************************************/
/* Agregando nuevos SIDEBARS y secciones para widgets */
/***********************************************************************************************/	
include_once("functions/theme/add-sidebars.php");

/***********************************************************************************************/
/* Agregando nuevos tipos de post  */
/***********************************************************************************************/
include_once("functions/theme/add-type-posts.php");

/***********************************************************************************************/
/* Registrar nuevas taxomomias  */
/***********************************************************************************************/
include_once("functions/theme/add-new-taxonomy.php");

/***********************************************************************************************/
/* Registrar nuevos metabox  */
/***********************************************************************************************/
include_once("functions/theme/add-new-metabox.php");

/***********************************************************************************************/
/* Localization Support */
/***********************************************************************************************/
function custom_theme_localization() {
	$lang_dir = THEMEROOT . '/lang';
	load_theme_textdomain( LANG , $lang_dir);
}
add_action('after_theme_setup', 'custom_theme_localization');


/***********************************************************************************************/
/* ADMINISTRACION WP   */
/***********************************************************************************************/

/***********************************************************************************************/
/* Cargas opciones de la página y customizar widgets  */
/***********************************************************************************************/
require_once('functions/theme/admin/theme-customizer.php');

/***********************************************************************************************/
/* Agregar nuevos estilos panel de administracion   */
/***********************************************************************************************/
require_once("functions/theme/admin/style-admin.php");


/***********************************************************************************************/
/* Agregar nuevas columnas en el panel de administracion   */
/***********************************************************************************************/
require_once("functions/theme/admin/new-columns.php");

/*
 * Desabilitar Panel de administración en el front end
 */

add_filter('show_admin_bar', '__return_false');