---
to: <%=package%>/src/scss/_spacing.scss
---
/*
Spacing
*/

:root {
    --space-unit: 16px;
    --space-xxs:  calc(0.25 * var(--space-unit)); // 4px
    --space-xs:   calc(0.5 * var(--space-unit));  // 8px
    --space-sm:   calc(0.75 * var(--space-unit)); // 12px
    --space-md:   calc(1.5 * var(--space-unit));  // 24px
    --space-lg:   calc(2 * var(--space-unit));    // 32px
    --space-xl:   calc(3 * var(--space-unit));    // 48px
    --space-xxl:  calc(4 * var(--space-unit));    // 64px
    --space-xxxl:  calc(6 * var(--space-unit));    // 96px
}

$global-margin: var(--space-unit);
$global-xsmall-margin: var(--space-xs);
$global-small-margin: var(--space-sm);
$global-medium-margin: var(--space-md);
$global-large-margin: var(--space-lg);
$global-xlarge-margin: var(--space-xl);
