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
import {Container, Paper, TextField, Tooltip} from "@material-ui/core";
import flag from './asset/img/flag.png';
import iranr from './asset/img/iranr.png';
import logo from './asset/img/logo.png';
import InputAdornment from '@material-ui/core/InputAdornment';
import SearchIcon from '@material-ui/icons/Search';
import Button from "@material-ui/core/Button";
import ClipLoader from "react-spinners/SyncLoader";
import axios from "axios";
import Header from "./zone/header";
import Footer from "./zone/footer";
import AddCircleIcon from '@material-ui/icons/AddCircle';
import IconButton from "@material-ui/core/IconButton";
import Link from "react-router-dom";
import Fab from "@material-ui/core/Fab";
import ArrowForwardIosIcon from "@material-ui/core/SvgIcon/SvgIcon";
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Slide from '@material-ui/core/Slide';

const Transition = React.forwardRef(function Transition(props, ref) {
    return <Slide direction="up" ref={ref} {...props} />;
});
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
            response: [],
            open: false,
            form: {
                name: '',
                mobile: '',
                title: ''
            }
        }
    }

    handleChangeElement(event)
    {
        let form = this.state.form;
        form[event.target.name] = event.target.value;
        this.setState({
            form
        })

    }
    handleSubmit(event)
    {
        event.preventDefault();
        if (this.state.form.name === '' || this.state.form.mobile === '' || this.state.form.title === '') {
            alert('فرم را تکمیل نمایید.');
            return;
        }

        axios.post('http://localhost:8000/api/ticket', this.state.form, {
            headers: {
                'Accept': 'application/json',
            }
        }).then((response) => {
            if (typeof response != "undefined") {
                alert(response.data.msg);
                this.setState({
                    open: false
                })
            }
        });
        console.log(this.state.form)
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
                size={15}
                color={"#123abc"}
                loading={true}
            />
        }
        return (
            <div>
                <Header data={this.state.response.setting} />
                <Container>
                    <Slider data={this.state.response.slider} />
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
                            {this.state.response.goals.map((g, index) => {
                                return(
                                    <Paper  style={{ cursor: 'pointer'}} onClick={() => this.props.history.push("/article/" + g.id)} elevation={3} className='slider-box'>
                                        <h3>{index + 1}</h3>
                                        <h6>{g.title}</h6>
                                        <p dangerouslySetInnerHTML={{__html: g.content.substr(0, 200)}} />
                                    </Paper>
                                );
                            })}
                        </AliceCarousel>
                    </div>
                </Container>
                <Container>
                    <div className='news'>
                        <h2>آخرین اخبار</h2>
                        <Grid container={true} spacing={3}>
                            {this.state.response.news && this.state.response.news.map((news, index) => {
                                return(
                                    <Grid key={index} item={true} xs={12} sm={4}>
                                        <Paper style={{ cursor: 'pointer'}} onClick={() => this.props.history.push("/article/" + news.id)} className='news-box' elevation={3}>
                                            {news.images.length && <img height={220} src={news.images[0].url}/>}
                                            <h3>{news.title}</h3>
                                            <p dangerouslySetInnerHTML={{__html: news.content.substr(0, 400)}} />
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
                        <div  style={{ display: 'flex', justifyContent: 'flex-end' }}>
                            <Tooltip title='پرسش جدید'>
                                <IconButton onClick={() => this.setState({ open : true})} color={"primary"}>
                                    <AddCircleIcon />
                                </IconButton>
                            </Tooltip>
                        </div>
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
                                        {ticket.conversations.map((c) => {
                                            return(
                                                <Typography>{c.content}</Typography>
                                            );
                                        })}
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
                <Footer data={this.state.response.setting}/>
                <Dialog
                    fullWidth={true}
                    open={this.state.open}
                    TransitionComponent={Transition}
                    keepMounted
                    onClose={() => this.setState({ open: false})}
                    aria-labelledby="alert-dialog-slide-title"
                    aria-describedby="alert-dialog-slide-description"
                >
                    <DialogTitle id="alert-dialog-slide-title">
                        پرسش خود را مطرح کنید
                    </DialogTitle>
                    <form onSubmit={this.handleSubmit.bind(this)}>
                        <DialogContent>
                            <Grid container spacing={2}>
                                <Grid item xs={12} >
                                    <TextField
                                        label="نام و نام خانوادگی"
                                        variant="filled"
                                        margin='dense'
                                        fullWidth
                                        name='name'
                                        onChange={this.handleChangeElement.bind(this)}
                                        InputLabelProps={{
                                            shrink: true,
                                        }}
                                    />
                                </Grid>
                                <Grid item xs={12} >
                                    <TextField
                                        label="شماره موبایل"
                                        variant="filled"
                                        margin='dense'
                                        fullWidth
                                        name='mobile'
                                        onChange={this.handleChangeElement.bind(this)}
                                        InputLabelProps={{
                                            shrink: true,
                                        }}
                                    />
                                </Grid>
                                <Grid item xs={12} >
                                    <TextField
                                        label="پرسش"
                                        variant="filled"
                                        margin='dense'
                                        fullWidth
                                        name='title'
                                        onChange={this.handleChangeElement.bind(this)}
                                        InputLabelProps={{
                                            shrink: true,
                                        }}
                                    />
                                </Grid>
                            </Grid>

                        </DialogContent>
                        <DialogActions>
                            <Button onClick={() => this.setState({ open: false})} color="primary">
                                انصراف
                            </Button>
                            <Button type='submit' color="primary">
                                ارسال فرم
                            </Button>
                        </DialogActions>
                    </form>
                </Dialog>
            </div>
        );
    }
}

export default Home;
