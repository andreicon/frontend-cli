---
to: <%=package%>/src/scss/_typography.scss
---
/**
Typography 
*/

:root {
    /* set base values */
    --text-base-size: 16px;
    --text-scale-ratio: 1.25;

    /* type scale */
    --text-xs: calc(var(--text-base-size) / (var(--text-scale-ratio) * var(--text-scale-ratio)));
    --text-sm: calc(var(--text-base-size) / var(--text-scale-ratio));
    --text-md: calc(var(--text-base-size) * var(--text-scale-ratio));
    --text-lg: calc(var(--text-base-size) * var(--text-scale-ratio) * var(--text-scale-ratio));
    --text-xl: calc(var(--text-base-size) * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio));
    --text-xxl: calc(var(--text-base-size) * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio));
    --text-xxxl: calc(var(--text-base-size) * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio) * var(--text-scale-ratio));
}

/**
Fontsize classes
*/
@each $key, $font-size in $fontSizes {
  .text-#{$key} {
    font-size: #{$font-size}px;
  }
}

/**
Fontweight classes
*/
@each $key, $font-weight in $fontweights {
  .font-#{$key} {
    font-weight: $font-weight;
  }
}