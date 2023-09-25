import { Component } from '../../../../global/interfaces/component.interface';

export interface AtomButtonSystemProps {
    buttons: Array<any>;
    type: 'default' | 'flexible';
}

export interface AtomReactButtonSystemProps {
    type: 'fixed' | 'flexible';
    text: string;
    disabled: boolean;
    onClick: () => void;
}

export const AtomButtonSystem: Component<AtomButtonSystemProps> = {
    data: {
        buttons: [{ text: 'System fixed', disabled: false }, { text: 'System fixed', disabled: true }],
        type: 'default',
    }
}

export const AtomReactButtonSystem: Component<AtomReactButtonSystemProps> = {
    data: {
        type: 'fixed',
        text: 'Button System',
        disabled: false,
        onClick: () => console.log('clicked'),
    }
}

export const AtomButtonSystemSmall: Component<AtomButtonSystemProps> = {
    data: {
        buttons: [{ text: 'System flex', disabled: false }, { text: 'System flex', disabled: true }],
        type: 'flexible',
    }
}

