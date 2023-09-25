---
to: <%=package%>/src/scss/_mixins.scss
---
/* 
mixins
*/

@mixin dimension($width: auto, $height: auto) {
    width: $width;
    height: $height;
}

@mixin mx-auto {
    margin-left: auto;
    margin-right: auto;
}

@mixin margin-x($marginLeft, $marginRight) {
    margin-left: $marginLeft;
    margin-right: $marginRight;
}

@mixin margin-y($marginTop, $marginBottom) {
    margin-top: $marginTop;
    margin-bottom: $marginBottom;
}

@mixin padding-x($paddingLeft, $paddingRight) {
    padding-left: $paddingLeft;
    padding-right: $paddingRight;
}

@mixin padding-y($paddingTop, $paddingBottom) {
    padding-top: $paddingTop;
    padding-bottom: $paddingBottom;
}

@mixin display-center {
    display: flex;
    justify-content: center;
    align-items: center;
}

@mixin flexbox($justifyContent: flex-start, $alignItems: flex-start) {
    display: flex;
    justify-content: $justifyContent;
    align-items: $alignItems;
}

@mixin generate($prefix, $property) {
    $sizes: 0, .25, .5, .75, 1, 1.25, 1.5, 2, 3, 4;
    $spacing: 16px; // Base Spacing

    @for $i from 1 through length($sizes) {
        $size: nth($sizes, $i);

        .#{$prefix}-#{$i - 1} {
            #{$property}: $spacing * $size;
        }
    }
}

@mixin line-clamp($lines: '3') {
    -webkit-line-clamp: $lines;
    overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical;
}

@mixin element-modifier($selector) {
    @at-root #{$selector} #{&} {
        @content;
    }
}

@mixin element-modifier-self($selector) {
    @at-root #{$selector}#{&} {
        @content;
    }
}