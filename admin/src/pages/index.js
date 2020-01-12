import React, {Component} from 'react';
import {connect} from 'react-redux';
import Api from "../api";
import Header from "./header";
import {CircularProgress} from "@material-ui/core";
import FusionCharts from "fusioncharts";
import ReactFC from "react-fusioncharts";
// Step 4 - Include the chart type
import mscombi2d  from 'fusioncharts/fusioncharts.charts';

// Step 5 - Include the theme as fusion
import FusionTheme from 'fusioncharts/themes/fusioncharts.theme.fusion';
import Container from "@material-ui/core/Container";

import Grid from "@material-ui/core/Grid";
import Box from "@material-ui/core/Box";
import Typography from "@material-ui/core/Typography";
import Paper from "@material-ui/core/Paper";
import ClipLoader from 'react-spinners/SyncLoader';
import CurrencyFormat from 'react-currency-format';
ReactFC.fcRoot(FusionCharts, mscombi2d , FusionTheme);

class Index extends Component {


    constructor(props) {

        super(props);

        this.state = {
            loading: true,
            chart: [],
            reports: []
        };


        this.api = new Api();
    }


    async componentDidMount() {

        await new Promise(resolve => {
            resolve(this.api.mapReports(this.props.auth.token).then((response) => {
                if (typeof response != "undefined") {
                    this.setState({
                        reports: response
                    })
                }
            }));
        });

        await new Promise((resolve => {
            resolve(this.setState({
                loading: false
            }));
        }));

    }


    render() {

        const override = `
            transform: translate(-50%, -50%);
            position: absolute;
            top: 50%;
            left: 50%;
            z-index: 9999999999;
     
        `;

        return (
            <div>
                <div className="content">
                    <Container>
                        {Boolean(this.props.auth.permissions.report.map_reports.access) && <Box>
                            <Grid style={{ marginTop: '25px'}} spacing={2} container={true}>
                                {this.state.reports.length > 0 && this.state.reports.map((report, index) => {
                                    return (
                                        <Grid key={index} item xs={6} sm={4} md={4}>
                                            <Paper className='animated bounceIn' style={{ padding: '10px 0px', textAlign: "center", margin: '5px 0 0 0'}}>
                                                <Typography variant={"subtitle1"}>
                                                    {report.title}
                                                </Typography>
                                                <Typography component="h4" variant={"h4"}  style={{ marginTop: '10px'}}>
                                                    <CurrencyFormat value={report.counter} displayType={'text'} thousandSeparator={true}  />
                                                </Typography>
                                            </Paper>
                                        </Grid>
                                    );
                                })}
                            </Grid>
                        </Box>}
                    </Container>
                </div>
            </div>
        );
    }
}

function mapStateToProps(state) {
    return {
        auth: state.auth
    };
}

function mapDispatchToProps(dispatch) {
    return{}
}

export default connect(
    mapStateToProps,
    mapDispatchToProps,
)(Index);
