---
to: <%=package%>/src/assets/fonts/saira.scss
---
$fontpath: "../assets/fonts";
$fontFolder: "saira";
$fontFamily: "Saira";
$fontWeights: 100, 200, 300, 400, 500, 600, 700, 800, 900;
$fontExtension: "woff2";

@mixin fontface($folder, $ffamily, $fweight, $fname) {
	@font-face {
		@if $ffamily {
			font-family: $ffamily;
		}

		@if $fweight {
			font-weight: $fweight;
		}

		font-display: swap;
		font-style: normal;

		@if $folder {
			src: url("#{$fontpath}/#{$folder}/#{$fname}.#{$fontExtension}") format($fontExtension);
		}

		@else {
			src: url("#{$fontpath}/#{$fname}.#{$fontExtension}") format($fontExtension);
		}
	}
}


@each $fweight in $fontWeights {
	@include fontface($fontFolder, $fontFamily, $fweight, "latin-ext");
}

@each $fweight in $fontWeights {
	@include fontface($fontFolder, $fontFamily, $fweight, "latin");
}

@each $fweight in $fontWeights {
	@include fontface($fontFolder, $fontFamily, $fweight, "vietnamese");
}


// Saira
@mixin font-saira-100() {
	font-family: 'Saira', sans-serif;
	font-weight: 100;
}

@mixin font-saira-200() {
	font-family: 'Saira', sans-serif;
	font-weight: 200;
}

@mixin font-saira-300() {
	font-family: 'Saira', sans-serif;
	font-weight: 300;
}

@mixin font-saira-400() {
	font-family: 'Saira', sans-serif;
	font-weight: 400;
}

@mixin font-saira-500() {
	font-family: 'Saira', sans-serif;
	font-weight: 500;
}

@mixin font-saira-600() {
	font-family: 'Saira', sans-serif;
	font-weight: 600;
}

@mixin font-saira-700() {
	font-family: 'Saira', sans-serif;
	font-weight: 700;
}

@mixin font-saira-800() {
	font-family: 'Saira', sans-serif;
	font-weight: 900;
}
