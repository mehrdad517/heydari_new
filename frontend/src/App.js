import React from 'react';
import './asset/font/font-face.css';
import './asset/social/flaticon.css';
import './App.css';
import {Container, Paper, TextField} from "@material-ui/core";
import Grid from "@material-ui/core/Grid";
import ExpansionPanel from '@material-ui/core/ExpansionPanel';
import ExpansionPanelDetails from '@material-ui/core/ExpansionPanelDetails';
import ExpansionPanelSummary from '@material-ui/core/ExpansionPanelSummary';
import Typography from '@material-ui/core/Typography';
import ExpandMoreIcon from '@material-ui/icons/ExpandMore';
import { MuiThemeProvider, StylesProvider, jssPreset } from '@material-ui/core/styles';
import createMuiTheme from "@material-ui/core/styles/createMuiTheme";
import Button from "@material-ui/core/Button";
import { create } from 'jss';
import rtl from 'jss-rtl';

import flag from './asset/img/flag.png';
import iranr from './asset/img/iranr.png';
import heydaritayeb from './asset/img/heydaritayeb.png';
import logo from './asset/img/logo.png';

import '@fortawesome/fontawesome-free/css/all.min.css';
import InputAdornment from '@material-ui/core/InputAdornment';
import SearchIcon from '@material-ui/icons/Search';
import Slider from  './component/slider/slider';
import AliceCarousel from 'react-alice-carousel'
import 'react-alice-carousel/lib/alice-carousel.css'

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

function App() {
    const handleOnDragStart = (e) => e.preventDefault();
    return (
        <StylesProvider jss={jss}>
            <MuiThemeProvider  theme={theme}>
                <div className='nav-top'>
                    <Container>
                        <div className='nav-top-inner'>
                            <p>مجلس برای ملت سنگر است؛ اما سنگری در مقابل دشمنان، در مقابل آمریکا، در مقابل ضد انقلاب</p>
                            <ul>
                                <li>info@heydaritayeb.ir&nbsp;<span className='fa fa-envelope'></span></li>
                            </ul>
                        </div>
                    </Container>
                </div>
                <Container>
                    <header>
                        <div className={'header-box dfr first-box'} style={{ justifyContent: 'flex-start' }}>
                            <ul className='dfr' style={{ padding: 0}}>
                                <li><a href="#"><span style={{color:'#B3BAC8', fontWeight: 'bold'}} className="flaticon-025-instagram"></span></a></li>
                                <li><a href="#"><span style={{color:'#B3BAC8', fontWeight: 'bold'}} className="flaticon-021-facebook"></span></a></li>
                                <li><a href="#"><span style={{color:'#B3BAC8', fontWeight: 'bold'}} className="flaticon-029-telegram"></span></a></li>
                                <li><a href="#"><span style={{color:'#B3BAC8', fontWeight: 'bold'}} className="flaticon-043-twitter"></span></a></li>
                            </ul>
                        </div>
                        <div className={'header-box'} style={{ textAlign: 'center', marginTop: '15px'}}>
                            <div style={{ position: 'relative'}}>
                                <div>
                                    <img width={200} src={logo}/>
                                    <p style={{ color: '#b8b8b8', position : 'relative', 'top' : '0px', fontSize: '12px'}}>نامزد دوره یازدهم مجلس شورای اسلامی</p>
                                </div>
                                <img style={{ position: 'absolute', 'top' : '-20px', right: '-10px', zIndex: -1}} src={flag} />
                            </div>
                        </div>
                        <div className={'header-box'} style={{ textAlign: 'left'}}>
                            <img width={120} src={iranr} />
                        </div>
                    </header>
                </Container>
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
                            <Grid item={true} xs={6} sm={4} >
                                <Paper className='news-box' elevation={3}>
                                    <img src='https://media.mehrnews.com/d/2016/03/28/3/2034506.jpg?ts=1486462047399'/>
                                    <h3>بازدید دکتر حیدری طیب از مناطق جنگی</h3>
                                    <p>لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می‌رسد و قلم‌ها و اندازه‌بندی‌ها چگونه در نظر گرفته شده‌است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می‌باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه‌آرایی می‌کنند تا مرحله طراحی و صفحه‌بندی را به پایان برند.</p>
                                </Paper>
                            </Grid>
                            <Grid item={true} xs={6} sm={4} >
                                <Paper className='news-box' elevation={3}>
                                    <img src='https://media.mehrnews.com/d/2016/03/28/3/2034506.jpg?ts=1486462047399'/>
                                    <h3>بازدید دکتر حیدری طیب از مناطق جنگی</h3>
                                    <p>لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می‌رسد و قلم‌ها و اندازه‌بندی‌ها چگونه در نظر گرفته شده‌است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می‌باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه‌آرایی می‌کنند تا مرحله طراحی و صفحه‌بندی را به پایان برند.</p>
                                </Paper>
                            </Grid>
                            <Grid item={true} xs={6} sm={4} >
                                <Paper className='news-box' elevation={3}>
                                    <img src='https://media.mehrnews.com/d/2016/03/28/3/2034506.jpg?ts=1486462047399'/>
                                    <h3>بازدید دکتر حیدری طیب از مناطق جنگی</h3>
                                    <p>لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می‌رسد و قلم‌ها و اندازه‌بندی‌ها چگونه در نظر گرفته شده‌است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می‌باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه‌آرایی می‌کنند تا مرحله طراحی و صفحه‌بندی را به پایان برند.</p>
                                </Paper>
                            </Grid>
                            <Grid item={true} xs={6} sm={4} >
                                <Paper className='news-box' elevation={3}>
                                    <img src='https://media.mehrnews.com/d/2016/03/28/3/2034506.jpg?ts=1486462047399'/>
                                    <h3>بازدید دکتر حیدری طیب از مناطق جنگی</h3>
                                    <p>لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می‌رسد و قلم‌ها و اندازه‌بندی‌ها چگونه در نظر گرفته شده‌است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می‌باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه‌آرایی می‌کنند تا مرحله طراحی و صفحه‌بندی را به پایان برند.</p>
                                </Paper>
                            </Grid>
                            <Grid item={true} xs={6} sm={4} >
                                <Paper className='news-box' elevation={3}>
                                    <img src='https://media.mehrnews.com/d/2016/03/28/3/2034506.jpg?ts=1486462047399'/>
                                    <h3>بازدید دکتر حیدری طیب از مناطق جنگی</h3>
                                    <p>لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می‌رسد و قلم‌ها و اندازه‌بندی‌ها چگونه در نظر گرفته شده‌است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می‌باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه‌آرایی می‌کنند تا مرحله طراحی و صفحه‌بندی را به پایان برند.</p>
                                </Paper>
                            </Grid>
                            <Grid item={true} xs={6} sm={4} >
                                <Paper className='news-box' elevation={3}>
                                    <img src='https://media.mehrnews.com/d/2016/03/28/3/2034506.jpg?ts=1486462047399'/>
                                    <h3>بازدید دکتر حیدری طیب از مناطق جنگی</h3>
                                    <p>لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می‌رسد و قلم‌ها و اندازه‌بندی‌ها چگونه در نظر گرفته شده‌است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می‌باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه‌آرایی می‌کنند تا مرحله طراحی و صفحه‌بندی را به پایان برند.</p>
                                </Paper>
                            </Grid>
                        </Grid>
                    </div>
                </Container>
               <div className='faq'>
                    <Container>
                        <h2>پرسش و پاسخ</h2>
                        <ExpansionPanel expanded={true}>
                            <ExpansionPanelSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1bh-content"
                                id="panel1bh-header"
                            >
                                <Typography>چرا امکان ثبت سفارش نقدی برای من وجود ندارد؟</Typography>
                            </ExpansionPanelSummary>
                            <ExpansionPanelDetails>
                                <Typography>
                                    به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب
                                </Typography>
                            </ExpansionPanelDetails>
                        </ExpansionPanel>
                        <ExpansionPanel>
                            <ExpansionPanelSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1bh-content"
                                id="panel1bh-header"
                            >
                                <Typography>چرا امکان ثبت سفارش نقدی برای من وجود ندارد؟</Typography>
                            </ExpansionPanelSummary>
                            <ExpansionPanelDetails>
                                <Typography>
                                    به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب
                                </Typography>
                            </ExpansionPanelDetails>
                        </ExpansionPanel>
                        <ExpansionPanel>
                            <ExpansionPanelSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1bh-content"
                                id="panel1bh-header"
                            >
                                <Typography>چرا امکان ثبت سفارش نقدی برای من وجود ندارد؟</Typography>
                            </ExpansionPanelSummary>
                            <ExpansionPanelDetails>
                                <Typography>
                                    به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب
                                </Typography>
                            </ExpansionPanelDetails>
                        </ExpansionPanel>
                        <ExpansionPanel>
                            <ExpansionPanelSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1bh-content"
                                id="panel1bh-header"
                            >
                                <Typography>چرا امکان ثبت سفارش نقدی برای من وجود ندارد؟</Typography>
                            </ExpansionPanelSummary>
                            <ExpansionPanelDetails>
                                <Typography>
                                    به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب
                                </Typography>
                            </ExpansionPanelDetails>
                        </ExpansionPanel>
                        <ExpansionPanel>
                            <ExpansionPanelSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1bh-content"
                                id="panel1bh-header"
                            >
                                <Typography>چرا امکان ثبت سفارش نقدی برای من وجود ندارد؟</Typography>
                            </ExpansionPanelSummary>
                            <ExpansionPanelDetails>
                                <Typography>
                                    به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب
                                </Typography>
                            </ExpansionPanelDetails>
                        </ExpansionPanel>
                        <ExpansionPanel>
                            <ExpansionPanelSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1bh-content"
                                id="panel1bh-header"
                            >
                                <Typography>چرا امکان ثبت سفارش نقدی برای من وجود ندارد؟</Typography>
                            </ExpansionPanelSummary>
                            <ExpansionPanelDetails>
                                <Typography>
                                    به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب
                                </Typography>
                            </ExpansionPanelDetails>
                        </ExpansionPanel>
                        <ExpansionPanel>
                            <ExpansionPanelSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1bh-content"
                                id="panel1bh-header"
                            >
                                <Typography>چرا امکان ثبت سفارش نقدی برای من وجود ندارد؟</Typography>
                            </ExpansionPanelSummary>
                            <ExpansionPanelDetails>
                                <Typography>
                                    به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب
                                </Typography>
                            </ExpansionPanelDetails>
                        </ExpansionPanel>
                        <ExpansionPanel>
                            <ExpansionPanelSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1bh-content"
                                id="panel1bh-header"
                            >
                                <Typography>چرا امکان ثبت سفارش نقدی برای من وجود ندارد؟</Typography>
                            </ExpansionPanelSummary>
                            <ExpansionPanelDetails>
                                <Typography>
                                    به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب
                                </Typography>
                            </ExpansionPanelDetails>
                        </ExpansionPanel>
                        <ExpansionPanel>
                            <ExpansionPanelSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1bh-content"
                                id="panel1bh-header"
                            >
                                <Typography>چرا امکان ثبت سفارش نقدی برای من وجود ندارد؟</Typography>
                            </ExpansionPanelSummary>
                            <ExpansionPanelDetails>
                                <Typography>
                                    به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب
                                </Typography>
                            </ExpansionPanelDetails>
                        </ExpansionPanel>
                        <ExpansionPanel>
                            <ExpansionPanelSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1bh-content"
                                id="panel1bh-header"
                            >
                                <Typography>چرا امکان ثبت سفارش نقدی برای من وجود ندارد؟</Typography>
                            </ExpansionPanelSummary>
                            <ExpansionPanelDetails>
                                <Typography>
                                    به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب
                                </Typography>
                            </ExpansionPanelDetails>
                        </ExpansionPanel>
                    </Container>
                </div>
                <Container>
                    <Grid item xs={12} >
                        <Paper component='div' className='info-box' elevation={0}>
                            <img width={150} src={heydaritayeb} />
                            <p>
                                به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی با رویای المپیک خداحافظی کرد و کره‌جنوبی هم پشت سر قطر به نیمه‌نهایی رسید.


                                کره‌ای‌ها که فردا هم در رشته فوتبال مقابل تیم امید ایران در مسیر المپیک قرار می‌گیرند، امروز یک نبرد حساس و جذاب را برابر شاگردان کولاکوویچ برگزار می‌کنند.


                                شاید با توجه به اتفاقات پیش آمده، دیدار نیمه‌نهایی برای معروف و یارانش از اهمیت بیشتری برخوردار باشد و به همین دلیل ایران با تمام توان برای صعود به فینال و نزدیک‌تر شدن به کسب تک سهمیه به میدان پای گذاشت.
                                به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی با رویای المپیک خداحافظی کرد و کره‌جنوبی هم پشت سر قطر به نیمه‌نهایی رسید.

                            </p>
                        </Paper>
                    </Grid>
                </Container>
                <footer>
                    <div className="footer-inner">
                        <div className="intro">
                            <h3>پایگاه اطلاع رسانی دکتر سید سعید حیدری طیب</h3>
                            <p>نامزد دوره یازدهم مجلس شورای اسلامی</p>
                            <ul>
                                <li><a href="#"><span className="flaticon-025-instagram"></span></a></li>
                                <li><a href="#"><span className="flaticon-021-facebook"></span></a></li>
                                <li><a href="#"><span className="flaticon-029-telegram"></span></a></li>
                                <li><a href="#"><span className="flaticon-045-linkedin"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div className="copy-right">
                        <p>کلیه حقوق این سایت محفوظ است.</p>
                    </div>
                </footer>
            </MuiThemeProvider>
        </StylesProvider>
    );
}

export default App;
