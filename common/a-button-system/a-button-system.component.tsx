import React from 'react';
import { AtomReactButtonSystemProps } from './a-button-system.data';
import Button from '@material-ui/core/Button';
import { makeStyles, createStyles, Theme } from '@material-ui/core/styles';

const useStyles = makeStyles((theme: Theme) =>
    createStyles({
        container: {
            '& > *': {
                margin: theme.spacing(1),
            },
        },
        button: {
            borderRadius: 0,
            backgroundColor: '#212d40',
            color: 'white',
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: 500,
            textTransform: 'none',
            height: 48,

            '&:hover': {
                backgroundColor: '#6b718b',
            },

            '&:focused': {
                backgroundColor: '#2b3162',
            },

            '&:disabled': {
                backgroundColor: '#f8f8fa',
            }
        },
        fixed: {
            width: 160,
        },
        flexible: {
            paddingLeft: 32,
            paddingRight: 32,
        },
    }),
);

function ReactButtonSystem(props: AtomReactButtonSystemProps): JSX.Element {
    const classes = useStyles();
    const { type, text, onClick, disabled } = props;

    return (
        <div className={classes.container}>
            <Button variant="contained" className={`${classes.button} ${type === 'fixed' ? classes.fixed : classes.flexible}`} disabled={disabled} onClick={() => onClick()} >{text}</Button>
        </div>
    );
}
export default ReactButtonSystem;