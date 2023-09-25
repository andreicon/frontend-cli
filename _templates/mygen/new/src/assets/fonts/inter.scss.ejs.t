---
to: <%=package%>/src/assets/fonts/inter.scss
---
$fontpath2: "../assets/fonts";
$fontFolder2: "inter";
$fontFamily2: "Inter";
$fontWeights2: 100, 200, 300, 400, 500, 600, 700, 800, 900;
$fontExtension2: "woff2";

@mixin fontface($folder2, $ffamily2, $fweight2, $fname2) {
	@font-face {
		@if $ffamily2 {
			font-family: $ffamily2;
		}

		@if $fweight2 {
			font-weight: $fweight2;
		}

		font-display: swap;
		font-style: normal;

		@if $folder2 {
			src: url("#{$fontpath2}/#{$folder2}/#{$fname2}.#{$fontExtension2}") format($fontExtension2);
		}

		@else {
			src: url("#{$fontpath2}/#{$fname2}.#{$fontExtension2}") format($fontExtension2);
		}
	}
}


@each $fweight2 in $fontWeights2 {
	@include fontface($fontFolder2, $fontFamily2, $fweight2, "cyrillic-ext");
}

@each $fweight2 in $fontWeights2 {
	@include fontface($fontFolder2, $fontFamily2, $fweight2, "cyrillic");
}

@each $fweight2 in $fontWeights2 {
	@include fontface($fontFolder2, $fontFamily2, $fweight2, "greek-ext");
}

@each $fweight2 in $fontWeights2 {
	@include fontface($fontFolder2, $fontFamily2, $fweight2, "greek");
}

@each $fweight2 in $fontWeights2 {
	@include fontface($fontFolder2, $fontFamily2, $fweight2, "latin-ext");
}

@each $fweight2 in $fontWeights2 {
	@include fontface($fontFolder2, $fontFamily2, $fweight2, "latin");
}

@each $fweight2 in $fontWeights2 {
	@include fontface($fontFolder2, $fontFamily2, $fweight2, "vietnamese");
}

// INTER
@mixin font-inter-100() {
	font-family: $fontFamily2;
	font-weight: 100;
}

@mixin font-inter-200() {
	font-family: $fontFamily2;
	font-weight: 200;
}

@mixin font-inter-300() {
	font-family: $fontFamily2;
	font-weight: 300;
}

@mixin font-inter-400() {
	font-family: $fontFamily2;
	font-weight: 400;
}

@mixin font-inter-500() {
	font-family: $fontFamily2;
	font-weight: 500;
}

@mixin font-inter-600() {
	font-family: $fontFamily2;
	font-weight: 600;
}

@mixin font-inter-700() {
	font-family: $fontFamily2;
	font-weight: 700;
}

@mixin font-inter-800() {
	font-family: $fontFamily2;
	font-weight: 800;
}

@mixin font-inter-900() {
	font-family: $fontFamily2;
	font-weight: 900;
}
