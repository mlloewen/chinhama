<?php
/**
 * Loads customizer-related files (see `/inc/customize`) and sets up customizer functionality.
 *
 * @package    HybridCore
 * @subpackage Includes
 * @author     Justin Tadlock <justin@justintadlock.com>
 * @copyright  Copyright (c) 2008 - 2015, Justin Tadlock
 * @link       http://themehybrid.com/hybrid-core
 * @license    http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 */

# Load custom control classes.
add_action( 'customize_register', 'hybrid_load_customize_classes', 0 );

# Register customizer panels, sections, settings, and/or controls.
add_action( 'customize_register', 'hybrid_customize_register' );

# Register customize controls scripts/styles.
add_action( 'customize_controls_enqueue_scripts', 'hybrid_customize_controls_register_scripts', 0 );
add_action( 'customize_controls_enqueue_scripts', 'hybrid_customize_controls_register_styles',  0 );

# Register/Enqueue customize preview scripts/styles.
add_action( 'customize_preview_init', 'hybrid_customize_preview_register_scripts', 0 );
add_action( 'customize_preview_init', 'hybrid_customize_preview_enqueue_scripts'     );

/**
 * Loads framework-specific customize classes.  These are classes that extend the core `WP_Customize_*`
 * classes to provide theme authors access to functionality that core doesn't handle out of the box.
 *
 * @since  3.0.0
 * @access public
 * @return void
 */
function hybrid_load_customize_classes( $wp_customize ) {

	// Load customize setting classes.
	require_once( HYBRID_CUSTOMIZE . 'setting-array-map.php'  );
	require_once( HYBRID_CUSTOMIZE . 'setting-image-data.php' );

	// Load customize control classes.
	require_once( HYBRID_CUSTOMIZE . 'control-checkbox-multiple.php' );
	require_once( HYBRID_CUSTOMIZE . 'control-dropdown-terms.php'    );
	require_once( HYBRID_CUSTOMIZE . 'control-palette.php'           );
	require_once( HYBRID_CUSTOMIZE . 'control-radio-image.php'       );
	require_once( HYBRID_CUSTOMIZE . 'control-select-group.php'      );
	require_once( HYBRID_CUSTOMIZE . 'control-select-multiple.php'   );

	require_if_theme_supports( 'theme-layouts', HYBRID_CUSTOMIZE . 'control-layout.php' );

	// Register JS control types.
	$wp_customize->register_control_type( 'Hybrid_Customize_Control_Checkbox_Multiple' );
	$wp_customize->register_control_type( 'Hybrid_Customize_Control_Palette'           );
	$wp_customize->register_control_type( 'Hybrid_Customize_Control_Radio_Image'       );
	$wp_customize->register_control_type( 'Hybrid_Customize_Control_Select_Group'      );
	$wp_customize->register_control_type( 'Hybrid_Customize_Control_Select_Multiple'   );
}

/**
 * Register customizer panels, sections, controls, and/or settings.
 *
 * @since  3.0.0
 * @access public
 * @return void
 */


function hybrid_customize_register( $wp_customize ) {

	// Always add the layout section so that theme devs can utilize it.
	$wp_customize->add_section(
		'layout',
		array(
			'title'    => esc_html__( 'Layout', 'hybrid-core' ),
			'priority' => 30,
		)
	);

	// Check if the theme supports the theme layouts customize feature.
	if ( current_theme_supports( 'theme-layouts', 'customize' ) ) {

		// Add the layout setting.
		$wp_customize->add_setting(
			'theme_layout',
			array(
				'default'           => hybrid_get_default_layout(),
				'sanitize_callback' => 'sanitize_key',
				'transport'         => 'postMessage'
			)
		);

		// Add the layout control.
		$wp_customize->add_control(
			new Hybrid_Customize_Control_Layout(
				$wp_customize,
				'theme_layout',
				array( 'label' => esc_html__( 'Global Layout', 'hybrid-core' ) )
			)
		);
	}

	/* Color Section*/
	$wp_customize->add_setting(
        'rakiya_topbar_color',
        array(
            'default'     => '#E9E0DB',
            'sanitize_callback' => 'sanitize_hex_color'
        )
    );
 
    $wp_customize->add_control(
    	 new WP_Customize_Color_Control(
            $wp_customize,
            'rakiya_topbar_color',
            array(
                'label'      => __( 'Top Bar Color', 'rakiya' ),
                'section'    => 'colors',
                'settings'   => 'rakiya_topbar_color',
                'type' => 'color'
            )
            )
    );
	
$wp_customize->add_setting(
        'rakiya_main_color',
        array(
            'default'     => '#4f2412',
            'sanitize_callback' => 'sanitize_hex_color'

        )
    );
 
    $wp_customize->add_control(
    	 new WP_Customize_Color_Control(
            $wp_customize,
            'rakiya_main_color',
            array(
                'label'      => __( 'Main Color', 'rakiya' ),
                'section'    => 'colors',
                'settings'   => 'rakiya_main_color',
                'type' => 'color',
                'description' => __('Color for links, widget headings', 'rakiya')
            )
            )
    );

    $wp_customize->add_setting(
        'rakiya_second_color',
        array(
            'default'     => '#C9A798',
            'sanitize_callback' => 'sanitize_hex_color'

        )
    );
 
    $wp_customize->add_control(
    	 new WP_Customize_Color_Control(
            $wp_customize,
            'rakiya_second_color',
            array(
                'label'      => __( 'Second Color', 'rakiya' ),
                'section'    => 'colors',
                'settings'   => 'rakiya_second_color',
                'type' => 'color',
                'description' => __('Color for link hover, category name', 'rakiya')
            )
            )
    );

      $wp_customize->add_setting(
        'rakiya_third_color',
        array(
            'default'     => '#000000',
            'sanitize_callback' => 'sanitize_hex_color'

        )
    );
 
    $wp_customize->add_control(
    	 new WP_Customize_Color_Control(
            $wp_customize,
            'rakiya_third_color',
            array(
                'label'      => __( 'Third Color', 'rakiya' ),
                'section'    => 'colors',
                'settings'   => 'rakiya_third_color',
                'type' => 'color',
                'description' => __('Color for slogan, footer, sidebar text', 'rakiya')
            )
            )
    );
/* Theme section panel */
	$wp_customize->add_panel (
		'rakiya_theme_options',
		array(
			'title'=> __( 'Theme Settings', 'rakiya' ),
			'priority' => 10
			)
		);



/* Social Network  section*/	
	$wp_customize->add_section(
		'rakiya_social_networks',
		array(
			'panel' => 'rakiya_theme_options',
			'title'    =>__( 'Social Networks', 'rakiya' ),
			'description' => __('Social Networks links', 'rakiya'),
			'priority' => 10,
		)
	);

	$wp_customize->add_setting (
		'rakiya_facebook_link',
		array(
			'default' => '',
			'sanitize_callback' =>'esc_url_raw',
			)	
		);
	$wp_customize->add_control (
		'rakiya_facebook_link',
		array(
			'section' => 'rakiya_social_networks',
			'label' => __('Facebook link','rakiya'),
			'type' => 'text',
			'sanitize_callback' => 'esc_url_raw',
			)
		);
	$wp_customize->add_setting (
		'rakiya_twitter_link',
		array(
			'default' => '',
			'sanitize_callback' => 'esc_url_raw',
			)	
		);
	$wp_customize->add_control (
		'rakiya_twitter_link',
		array(
			'section' => 'rakiya_social_networks',
			'label' => __('Twitter link', 'rakiya'),
			'sanitize_callback' => 'esc_url_raw',
			'type' => 'text'
			)
		);
	$wp_customize->add_setting (
		'rakiya_instagram_link',
		array(
			'default' => '',
			'sanitize_callback' => 'esc_url_raw',
			)	
		);
	$wp_customize->add_control (
		'rakiya_instagram_link',
		array(
			'section' => 'rakiya_social_networks',
			'label' => __('Instagram link', 'rakiya'),
			'type' => 'text',
			'sanitize_callback' => 'esc_url_raw',
			)
		);
	$wp_customize->add_setting (
		'rakiya_pinterest_link',
		array(
			'default' => '',
			'sanitize_callback' => 'esc_url_raw',
			)	
		);
	$wp_customize->add_control (
		'rakiya_pinterest_link',
		array(
			'section' => 'rakiya_social_networks',
			'label' => __('Pinterest link','rakiya'),
			'sanitize_callback' => 'esc_url_raw',
			'type' => 'text'
			)
		);
	$wp_customize->add_setting (
		'rakiya_youtube_link',
		array(
			'default' => '',
			'sanitize_callback' => 'esc_url_raw',
			)	
		);
	$wp_customize->add_control (
		'rakiya_youtube_link',
		array(
			'section' => 'rakiya_social_networks',
			'label' => __('Youtube link','rakiya'),
			'sanitize_callback' => 'esc_url_raw',
			'type' => 'text'
			)
		);
	$wp_customize->add_setting (
		'rakiya_bloglovin_link',
		array(
			'default' => '',
			'sanitize_callback' => 'esc_url_raw',
			)	
		);
	$wp_customize->add_control (
		'rakiya_bloglovin_link',
		array(
			'section' => 'rakiya_social_networks',
			'label' => __('Bloglovin link','rakiya'),
			'sanitize_callback' => 'esc_url_raw',
			'type' => 'text'
			)
		);
	$wp_customize->add_setting (
		'rakiya_google_plus_link',
		array(
			'default' => '',
			'sanitize_callback' => 'esc_url_raw',
			)	
		);
	$wp_customize->add_control (
		'rakiya_google_plus_link',
		array(
			'section' => 'rakiya_social_networks',
			'label' => __('Gogle Plus link','rakiya'),
			'sanitize_callback' => 'esc_url_raw',
			'type' => 'text'
			)
		);
	$wp_customize->add_setting (
		'rakiya_rss_link',
		array(
			'default' => '',
			'sanitize_callback' => 'esc_url_raw',
			)	
		);
	$wp_customize->add_control (
		'rakiya_rss_link',
		array(
			'section' => 'rakiya_social_networks',
			'label' => __('Rss link','rakiya'),
			'sanitize_callback' => 'esc_url_raw',
			'type' => 'text'
			)
		);


}
add_action( 'customize_register', 'hybrid_customize_register' );


/**
 * Register customizer controls scripts.
 *
 * @since  3.0.0
 * @access public
 * @return void
 */
function hybrid_customize_controls_register_scripts() {
	wp_register_script( 'hybrid-customize-controls', HYBRID_JS . 'customize-controls' . hybrid_get_min_suffix() . '.js', array( 'customize-controls' ), null, true );
}

/**
 * Register customizer controls styles.
 *
 * @since  3.0.0
 * @access public
 * @return void
 */
function hybrid_customize_controls_register_styles() {
	wp_register_style( 'hybrid-customize-controls', HYBRID_CSS . 'customize-controls' . hybrid_get_min_suffix() . '.css' );
}

/**
 * Register customizer preview scripts.
 *
 * @since  3.0.0
 * @access public
 * @return void
 */
function hybrid_customize_preview_register_scripts() {
	wp_register_script( 'hybrid-customize-preview', HYBRID_JS . 'customize-preview' . hybrid_get_min_suffix() . '.js', array( 'jquery' ), null, true );
}

/**
 * Register customizer preview scripts.
 *
 * @since  3.0.0
 * @access public
 * @return void
 */
function hybrid_customize_preview_enqueue_scripts() {

	if ( current_theme_supports( 'theme-layouts', 'customize' ) )
		wp_enqueue_script( 'hybrid-customize-preview' );
}
