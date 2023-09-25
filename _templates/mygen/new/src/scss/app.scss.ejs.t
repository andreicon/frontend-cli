---
to: <%=package%>/src/scss/app.scss
---
@import './utils.scss';
@import './font-faces.scss';
@import './variables.scss';
@import './spacing';
@import './mixins';
@import './typography';

@include generate(ml, margin-left);
@include generate(mr, margin-right);
@include generate(mt, margin-top);
@include generate(mb, margin-bottom);


@include generate(pl, padding-left);
@include generate(pr, padding-right);
@include generate(pt, padding-top);
@include generate(pb, padding-bottom);

// Add common scss files here
@import '../common/a-button/a-button.styles.scss';
@import '../common/a-button-system/a-button-system.styles.scss';

// Add your container or components scss files here
// @import '../views/sample/style.scss';
