import React, {Component} from 'react';
import {Route, Router as BrowserRouter} from "react-router";
import Home from "./home";
import {createBrowserHistory} from "history";
const history = createBrowserHistory();

class Router extends Component {
    render() {
        return (
            <div style={{ minHeight: '700px'}}>
                <BrowserRouter history={history}>
                    <Route component={Home} exact={true} path={'/'} />
                </BrowserRouter>
            </div>
        );
    }
}

export default Router;
