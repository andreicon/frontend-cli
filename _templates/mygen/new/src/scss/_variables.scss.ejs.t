---
to: <%=package%>/src/scss/_variables.scss
---
/**
 * Breakpoints
 */

$breakpoint-small: 768px !default; // Phone landscape
$breakpoint-medium: 960px !default; // Tablet Landscape
$breakpoint-large: 1200px !default; // Desktop
$breakpoint-xlarge: 1600px !default; // Large Screens

$breakpoint-xsmall-max: ($breakpoint-small - 1) !default;
$breakpoint-small-max: ($breakpoint-medium - 1) !default;
$breakpoint-medium-max: ($breakpoint-large - 1) !default;
$breakpoint-large-max: ($breakpoint-xlarge - 1) !default;


/**
 * Colors
 */
$colors: (
	primary: #212d40,
	success: #00af00,
	warning: #d36e02,
	danger: #bb0000,
	text: #11151c,
	bronze: #d3bd89,
	silver: #040505,
	gold: #ffd753,
	platinum: #afc4d7,
	diamond: #f9cacd,
	wolf-red: #e10000,
	light-blue: #81adc8,
	true-white: #fff,
	true-black: #000,
	dark-grey: #6a6e70,
	text-grey: #6B718B,
	silver-grey: #d2d2d2,
	silver-light-grey: #E5E8EA,
	grey-70: #c7cacf,
	medium-grey: #e4e4e4,
	light-grey: #f7f7f7,
	lighter-grey: #f5f5f5,
	dark-green: #0D5055,
	dark-blue-modal: #2A2B65,
	darker-grey: #272734,

	red-20: #b70406,
	red-30: #ea4c4c,
	red-50: #f07f7f,
	red-70: #f6b2b2,
	red-90: #fce5e5,

	dark-blue-10-white: #404652,
	dark-blue-30-white: #636b79,
	dark-blue-50-white: #8f959f,
	dark-blue-70-white: #bcbfc5,
	dark-blue-90-white: #e8e9eb,

	light-blue-30-white: #a6c5d8,
	light-blue-50-white: #c0d6e3,
	light-blue-70-white: #d9e6ee,
	light-blue-90-white: #f2f7fa,
	light-blue-table: #F6F7FB,
);

/**
 * Fontweights classes
 */
$fontweights: (
	'thin': 100,
	'light': 200,
	'regular': 400,
	'medium': 500,
	'bold': 700,
	'black': 900,
);

/**
* Fontsize classes
*/
$fontSizes: (
	'xs': 10,
	'sm': 12,
	'md': 14,
	'base': 16,
	'sl': 18,
	'lg': 20,
	'xl': 32,
	'xxl': 48,
	'xxxl': 64,
);

/**
 * Typography
 */
 $fontsizes: (
	s: (xxsmall: 10px,
		xsmall: 16px,
		default: 16px,
		small: 21px,
		medium: 28px,
		large: 30px,
		xlarge: 32px,
		xxlarge: 32px // not used,,,,,,,,,,,,
	),
	m: (xxsmall: 10px,
		xsmall: 16px,
		default: 16px,
		small: 21px,
		medium: 28px,
		large: 30px,
		xlarge: 50px,
		xxlarge: 50px // not used,,,,,,,,,,,,
	),
);

$global-font-family: 'Inter';
$global-font-size: get-fontsize(m, default);
$global-line-height: 1.4;

$global-xxlarge-font-size: get-fontsize(m, xxlarge);
$global-xlarge-font-size: get-fontsize(m, xlarge);
$global-large-font-size: get-fontsize(m, large);
$global-medium-font-size: get-fontsize(m, medium);
$global-small-font-size: get-fontsize(m, small);
$global-xsmall-font-size: get-fontsize(m, xsmall);
