import { Component } from '../../../../global/interfaces/component.interface';

export interface AtomButtonProps {
	/** The button's text string */
	text: string;
	/** The main button appearance type */
	type: 'primary' | 'secondary' | 'default' | 'ghost';
	/** HTML title attribute */
	title: string;
	/** The button's href */
	href?: string;
	/** Button target */
	target?: '_self' | '_blank' | '_parent' | '_top';
	/** Default = false. If true, the button will be disabled (not clickable) */
	isDisabled?: boolean;
	/** Default = false. If true, the uk-active class will be applied */
	isActive?: boolean;
	/** Default = false. If true, the button will have rounded corners */
	roundedCorners?: boolean;
	/** Default = medium. The size of the button */
	size?: 'small' | 'medium' | 'large';
	/** If true, the button will be full width on mobile */
	isResponsive?: boolean;
	/** If supplied, a uk-icon will be put inside the button */
	icon?: {
		/** The UI Kit icon name */
		name: string;
		/** Like 'left'. UK icon can be reversed */
		position: 'left' | string;
		/** @todo */
		highlighted?: boolean;
	};
	/** If suplied, a download attribute is added with the given filename */
	download?: string;
}

export const defaultButton: Component<AtomButtonProps> = {
	data: {
		text: 'Default Button',
		type: 'default',
		title: 'Button title',
	},
};

export const buttonWithIcon: Component<AtomButtonProps> = {
	data: {
		...defaultButton.data,
		icon: {
			name: 'arrow-left',
			position: 'left',
		},
	},
};

export const buttonWithHighlightedIcon: Component<AtomButtonProps> = {
	data: {
		...buttonWithIcon.data,
		icon: {
			name: 'arrow-left',
			position: 'left',
			highlighted: true,
		},
	},
};

export const buttonWithRoundedCorners: Component<AtomButtonProps> = {
	data: {
		...defaultButton.data,
		roundedCorners: true,
	},
};

export const responsiveButton: Component<AtomButtonProps> = {
	data: {
		...defaultButton.data,
		text: 'Responsive Button',
		type: 'primary',
		isResponsive: true,
	},
};
