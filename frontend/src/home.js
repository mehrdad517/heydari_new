import React, {Component} from 'react';
import Slider from "./component/slider/slider";
import AliceCarousel from "react-alice-carousel";
import Grid from "@material-ui/core/Grid";
import ExpansionPanel from "@material-ui/core/ExpansionPanel";
import ExpansionPanelSummary from "@material-ui/core/ExpansionPanelSummary";
import ExpandMoreIcon from "@material-ui/icons/ExpandMore";
import Typography from "@material-ui/core/Typography";
import ExpansionPanelDetails from "@material-ui/core/ExpansionPanelDetails";
import heydaritayeb from "./asset/img/heydaritayeb.png";
import {MuiThemeProvider} from "@material-ui/core/styles";
import {Container, Paper, TextField} from "@material-ui/core";
import flag from './asset/img/flag.png';
import iranr from './asset/img/iranr.png';
import logo from './asset/img/logo.png';
import InputAdornment from '@material-ui/core/InputAdornment';
import SearchIcon from '@material-ui/icons/Search';
import Button from "@material-ui/core/Button";
import ClipLoader from "react-spinners/SyncLoader";
import axios from "axios";
const handleOnDragStart = (e) => e.preventDefault();
const override = `
            transform: translate(-50%, -50%);
            position: absolute;
            top: 50%;
            left: 50%;
            z-index: 9999999999;
                `;

class Home extends Component {


    constructor(props) {
        super();
        this.state = {
            loading: true,
            response: []
        }
    }

    componentDidMount() {
        axios.get('http://localhost:8000/api/home').then((response) => {
            if (typeof response != "undefined") {
                this.setState({
                    loading: false,
                    response: response.data
                })
            }
        }).catch((error) => {
            console.log(error);
        });
    }


    render() {
        console.log(this.state.response);
        if (this.state.loading) {
            return <ClipLoader
                css={override}
                size={20}
                color={"#123abc"}
                loading={true}
            />
        }
        return (
            <div>
                <Container>
                    <Slider/>
                </Container>
                <Container>
                    <div style={{ margin: '25px 0', textAlign: 'center'}}>
                        <h2 style={{ margin: '20px 0'}}>اهداف و برنامه ها</h2>
                        <AliceCarousel
                            buttonsDisabled
                            Infinite loop
                            autoPlay ={false}
                            autoPlayDirection="rtl"
                            autoPlayInterval ={2000}
                            swipeDisabled={true}
                            responsive={{
                                0: {
                                    items: 1.5,
                                    nav: true
                                },
                                600: {
                                    items: 3,
                                    nav: true
                                },
                                768: {
                                    items: 3,
                                    nav: true
                                },
                                1000: {
                                    items: 4,
                                    nav: true,
                                    loop: true
                                },
                                1500: {
                                    items: 5,
                                    nav: true,
                                    loop: true
                                }
                            }}
                            mouseTrackingEnabled>
                            <Paper elevation={3} className='slider-box'>
                                <h3>1</h3>
                                <h6>سرتیتر</h6>
                                <p>به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات</p>
                            </Paper>
                            <Paper elevation={3} className='slider-box'>
                                <h3>2</h3>
                                <h6>سرتیتر</h6>
                                <p>به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات</p>
                            </Paper>
                            <Paper elevation={3} className='slider-box'>
                                <h3>3</h3>
                                <h6>سرتیتر</h6>
                                <p>به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات</p>
                            </Paper>
                            <Paper elevation={3} className='slider-box'>
                                <h3>1</h3>
                                <h6>سرتیتر</h6>
                                <p>به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات</p>
                            </Paper>
                            <Paper elevation={3} className='slider-box'>
                                <h3>5</h3>
                                <h6>سرتیتر</h6>
                                <p>به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات</p>
                            </Paper>
                            <Paper elevation={3} className='slider-box'>
                                <h3>1</h3>
                                <h6>سرتیتر</h6>
                                <p>به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات</p>
                            </Paper>
                            <Paper elevation={3} className='slider-box'>
                                <h3>1</h3>
                                <h6>سرتیتر</h6>
                                <p>به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات</p>
                            </Paper>
                            <Paper elevation={3} className='slider-box'>
                                <h3>1</h3>
                                <h6>سرتیتر</h6>
                                <p>به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات</p>
                            </Paper>
                            <Paper elevation={3} className='slider-box'>
                                <h3>1</h3>
                                <h6>سرتیتر</h6>
                                <p>به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات</p>
                            </Paper>
                        </AliceCarousel>
                    </div>
                </Container>
                <Container>
                    <div className='news'>
                        <h2>آخرین اخبار</h2>
                        <Grid container={true} spacing={3}>
                            {this.state.response.news && this.state.response.news.map((news) => {
                                return(
                                    <Grid item={true} xs={6} sm={4}>
                                        <Paper className='news-box' elevation={3}>
                                            <img src='https://media.mehrnews.com/d/2016/03/28/3/2034506.jpg?ts=1486462047399'/>
                                            <h3>{news.title}</h3>
                                            <p>{news.content}</p>
                                        </Paper>
                                    </Grid>
                                );
                            })}
                        </Grid>
                    </div>
                </Container>
                <Container>
                    <div className='faq'>
                        <h2>پرسش و پاسخ</h2>
                        {this.state.response.tickets.map((ticket, index) => {
                            return(
                                <ExpansionPanel expanded={true}>
                                    <ExpansionPanelSummary
                                        expandIcon={<ExpandMoreIcon />}
                                        aria-controls="panel1bh-content"
                                        id="panel1bh-header"
                                    >
                                        <Typography>{ticket.title}</Typography>
                                    </ExpansionPanelSummary>
                                    <ExpansionPanelDetails>

                                        <Typography></Typography>
                                    </ExpansionPanelDetails>
                                </ExpansionPanel>
                            );
                        })}
                    </div>
                </Container>
                <Container>
                    <Grid item xs={12}>
                        <Paper component='div' className='info-box' elevation={0}>
                            <img width={150} src={heydaritayeb} />
                            <p>{this.state.response.setting.introduce}</p>
                        </Paper>
                    </Grid>
                </Container>
            </div>
        );
    }
}

export default Home;
