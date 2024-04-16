/* eslint no-magic-numbers: 0 */
import React, { useState } from 'react';

import { Abc, Bca } from '../lib';


const App = ({ tag: Tag, ...otherProps }) => {
    // helper to mimic setProps functionality
    console.log(Tag);
    const [state, setState] = useState(otherProps);
    return <Tag setProps={props => setState({ ...state, ...props })} {...state} />;
};



export default App;
