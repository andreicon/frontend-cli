
import React from 'react';
import { AtomButtonProps } from './a-button.data';
import SvgIcon from 'src/components/IconComponent/SvgIcon';
import { CircularProgress } from '@material-ui/core';
export interface AtomButtonComponentProps extends AtomButtonProps {
	/** Element data attributes, like twig dataAttributes */
	dataAttributes?: { [x in string]: string; }
	/** Element classes, like twig classes array */
	classes?: string[];
	/** Element modifiers, like twig modifiers array */
	modifiers?: string[];
	/** If true, button will be disabled and show a loading spinner as the icon */
	isLoading?: boolean;
	/** Event fired when the button is clicked */
	onButtonClicked: (e: any) => void;
	toggleLoading?: () => void;
}

export class AtomButtonComponent extends React.Component<AtomButtonComponentProps, any> {
	private componentName = 'a-button';

	private button: React.RefObject<HTMLAnchorElement>;

	constructor(props: AtomButtonComponentProps) {
		super(props);

		this.button = React.createRef();
	}

	componentDidMount(): void {
		this.button.current && this.button.current.addEventListener('click', e => {

			// emit an event when the user clicks the button
			this.props.onButtonClicked(e);

		});
	}

	render(): JSX.Element {
		const href = this.props.href || '';
		const iconName = this.props.icon ? this.props.icon.name : null;
		const target = this.props.target || '_self';
		const title = this.props.title || '';
		const disabled = !!this.props.isDisabled;
		const download = this.props.download || null;
		const dataAttributes = this.props.dataAttributes || {};
		// set additional classes
		let classes = this.props.classes || [];
		classes = classes.length > 0 ? classes.map(c => c.toString().trim()).filter(c => c) : classes;

		// set component class modifiers
		let modifiers = this.props.modifiers || [];
		modifiers = modifiers.length > 0 ? modifiers
			.map(m => m.toString().trim())
			.filter(m => m)
			.map(m => this.componentName + '--' + m) : modifiers;

		return (
			<a
				ref={this.button}
				href={href}
				target={target}
				title={title}
				data-disabled={disabled}
				download={download}
				className={[
					this.componentName,
					'uk-button uk-flex-inline uk-text-center',
					disabled || this.props.isLoading ? 'uk-disabled' : '',
					['primary', 'secondary', 'default', 'ghost'].includes(this.props.type) ? (this.componentName + '--' + this.props.type) : '',
					this.props.icon && this.props.icon.name ? 'has-icon' : '',
					!this.props.text ? (this.componentName + '--icononly') : '',
					this.props.icon && this.props.icon.highlighted ? 'has-icon-highlighted' : '',
					this.props.icon && this.props.icon.position && ['left'].includes(this.props.icon.position) ? 'uk-flex-row-reverse' : '',
					this.props.isActive ? 'uk-active' : '',
					this.props.roundedCorners ? (this.componentName + '--rounded') : '',
					['small', 'medium', 'large'].includes(this.props.size || '') ? (this.componentName + '--' + this.props.size) : (this.componentName + '--medium'),
					this.props.isResponsive ? (this.componentName + '--responsive') : '',
					classes && classes.length > 0 ? classes.join(' ') : '',
					modifiers && modifiers.length > 0 ? modifiers.join(' ') : ''
				]
					.filter(c => c)
					.join(' ')}
				{...dataAttributes}
			>
				{
					this.props.text ? (
						<span className={this.componentName + '__text'}>
							{this.props.text.trim()}
						</span>
					) : ''
				}
				{
					iconName && !this.props.isLoading ? 
					<SvgIcon iconName={iconName} className='a-button__icon-wrapper' /> : ''
				}
				{
					this.props.isLoading ? (
						<CircularProgress style={{ color: 'white', width: '16px', height: '16px'}} />
					) : ''
				}
			</a>
		)
	}
}
