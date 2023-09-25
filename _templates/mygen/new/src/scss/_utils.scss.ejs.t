---
to: <%=package%>/src/scss/_utils.scss
---
/**
 * get color from global $colors sass-map
 *
 * @param   {string}  $color  	color name
 * @param   {string}  $variant  color variation name
 *
 * @return  {color} return hex value
 */
 @function get-color($color, $lightness: false) {
	$base-color: map-get($colors, $color);
	
	@if $lightness {
		@return scale-color($base-color, $lightness: $lightness);
	} @else {
		@return $base-color;
	}
}


/**
 * get fontweight from global $fontweights sass-map by font name
 *
 * @param   {string}  $name font name
 *
 * @return  {fontweight} return fontweight
 */
 @function get-fontweight($name: 'light') {
	@return map-get($fontweights, $name);
}

/**
 * get fontsize from global $fontsizes sass-map
 *
 * @param   {string}  $breakpoint  	s | m
 * @param   {string}  $variant      fontsize variation name
 *
 * @return  {fontsize}             return fontsize in pixel
 */
 @function get-fontsize($breakpoint: 'm', $variant: 'default') {
	@return map-get(map-get($fontsizes, $breakpoint), $variant);
}
