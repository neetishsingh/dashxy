import React from 'react';
import PropTypes from 'prop-types';
import { Dac as RealComponent } from '../LazyLoader';

/**
 * ExampleComponent is an example component.
 * It takes a property, `label`, and
 * displays it.
 * It renders an input with the property `value`
 * which is editable by the user.
 */
const Abc = (props) => {

    //props elements-neetish singh
    const {
        className,
        class_name,
        html_size,
        valid,
        invalid,
        value,
        ...otherProps
    } = props;

    const handleChange = e => {
        if (props.setProps) {
            props.setProps({ value: e.target.value });
        }
    };


    return (
        <React.Suspense fallback={null}>
            <h1 style={props.style}>Hi i am abc..</h1>
        </React.Suspense>
    );
};

Abc.defaultProps = {};

Abc.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * A label that will be printed when this component is rendered.
     */
    label: PropTypes.string.isRequired,

    /**
     * The value displayed in the input.
     */
    value: PropTypes.string,
    style: PropTypes.any,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func
};

export default Abc;

export const defaultProps = Abc.defaultProps;
export const propTypes = Abc.propTypes;
