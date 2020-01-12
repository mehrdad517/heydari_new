import React, {Component} from 'react';
import './asset/font/font-face.css';
import './asset/social/flaticon.css';
import './App.css';
import { MuiThemeProvider, StylesProvider, jssPreset } from '@material-ui/core/styles';
import createMuiTheme from "@material-ui/core/styles/createMuiTheme";
import { create } from 'jss';
import rtl from 'jss-rtl';
import '@fortawesome/fontawesome-free/css/all.min.css';
import 'react-alice-carousel/lib/alice-carousel.css'
import Header from "./zone/header";
import Footer from "./zone/footer";
import Router from "./router";
import {CircularProgress} from "@material-ui/core";
import axios from 'axios'
import ClipLoader from "react-spinners/SyncLoader";
const jss = create({ plugins: [...jssPreset().plugins, rtl()] });

const theme = createMuiTheme({
    direction: "rtl",
    overrides: {
        MuiButtonBase:{
            root: {
                fontFamily:'Shabnam !important',
            }
        },
        MuiTypography: {
            root: {
                fontFamily: 'Shabnam !important',
            }
        },
        MuiFormControl: {
            root: {
                fontFamily: 'Shabnam',
            },
        },
        MuiFormLabel: {
            root: {
                fontFamily: 'Shabnam'
            },
        },
        MuiInput: {
            root:{
                color: '#000',
                fontFamily: 'Shabnam',
            }
        },
    },
});


class App extends Component{
    render() {
        return(
            <StylesProvider jss={jss}>
                <MuiThemeProvider  theme={theme}>
                    <Header />
                    <Router />
                    <Footer />
                </MuiThemeProvider>
            </StylesProvider>
        );
    }
}

export default App;
