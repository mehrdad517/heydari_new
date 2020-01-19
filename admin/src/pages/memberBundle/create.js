import React, {Component} from 'react';
import ExpansionPanel from '@material-ui/core/ExpansionPanel';
import ExpansionPanelDetails from '@material-ui/core/ExpansionPanelDetails';
import ExpansionPanelSummary from '@material-ui/core/ExpansionPanelSummary';
import Typography from '@material-ui/core/Typography';
import Container from "@material-ui/core/Container";
import {Box} from "@material-ui/core";
import Grid from "@material-ui/core/Grid";
import Button from "@material-ui/core/Button";
import NavigationIcon from "@material-ui/icons/Navigation";
import TextField from "@material-ui/core/TextField";
import MenuItem from "@material-ui/core/MenuItem";
import Api from "../../api";
import {toast} from "react-toastify";
import ExpansionPanelActions from "@material-ui/core/ExpansionPanelActions";
import Divider from "@material-ui/core/Divider";
import {Link} from "react-router-dom";
import ExpandMoreIcon from '@material-ui/icons/ExpandMore';
import CircularProgress from "@material-ui/core/CircularProgress";
import {connect} from "react-redux";

class ContentCreate extends Component {

    constructor(props) {
        super(props);
        this.state = {
            loading: true,
            regions: [],
            form: {
                name: '',
                family: '',
                code: '',
                mobile: '',
                address: '',
                gender: 'male',
                region_id: -1
            },
        };

        this.api = new Api();
    }

    componentDidMount() {
        this.handleRequest();
    }

    async handleRequest() {

        this.api.getRegions(true).then((response) => {
            this.setState({
                regions : response,
                loading: false
            })
        })
    }


    handleChangeElement = (event) => {
        let form = this.state.form;

        form[event.target.name] = event.target.value;

        this.setState({
            form,
        });
    };

    handleSubmit (event) {
        event.preventDefault();

        this.setState({
            loading: true
        });

        this.api.postMember(this.state.form).then((response) => {
            if (typeof response != "undefined") {
                if (response.status) {
                    toast.success(response.msg);
                    this.props.history.push('/members')
                } else {
                    toast.error(response.msg);
                }
            }
            this.setState({
                loading: false
            });
        }).catch((error) => {
            console.log(error);
            this.setState({
                loading: false
            });
        })

    }
    render() {
        console.log(this.state);
        return (
            <div className='content'>
                <Container>
                    <Box style={{ margin: '10px 0 20px 0'}}>
                        <Grid container alignItems="center">
                            <Grid item xs={12} sm={6}>
                                <h2>افزودن عضو جدید</h2>
                                <p style={{ color: '#8e8e8e'}}>عضو جدید اضافه کنید.</p>
                            </Grid>
                            <Grid item xs={12} sm={6} >
                                <div style={{ display: 'flex', justifyContent: 'flex-end'}}>
                                    <Link to='/blog/contents'>
                                        <Button variant="contained" color="default" >
                                            <NavigationIcon />
                                        </Button>
                                    </Link>
                                </div>
                            </Grid>
                        </Grid>
                    </Box>
                    <Box>
                        <form onSubmit={this.handleSubmit.bind(this)}>
                            <ExpansionPanel expanded={true}>
                                <ExpansionPanelSummary
                                    expandIcon={<ExpandMoreIcon />}
                                    aria-controls="panel1bh-content"
                                    id="panel1bh-header"
                                >
                                    <Typography><b>اطلاعات اولیه</b></Typography>
                                </ExpansionPanelSummary>
                                <ExpansionPanelDetails>
                                    <Grid container spacing={2}>
                                        <Grid item xs={12} sm={6} >
                                            <TextField
                                                label="نام"
                                                variant="filled"
                                                margin='dense'
                                                value={this.state.form.name}
                                                fullWidth
                                                name='name'
                                                onChange={this.handleChangeElement.bind(this)}
                                                InputLabelProps={{
                                                    shrink: true,
                                                }}
                                            />
                                        </Grid>
                                        <Grid item xs={12} sm={6} >
                                            <TextField
                                                label="نام خانوادگی"
                                                variant="filled"
                                                margin='dense'
                                                value={this.state.form.family}
                                                fullWidth
                                                name='family'
                                                onChange={this.handleChangeElement.bind(this)}
                                                InputLabelProps={{
                                                    shrink: true,
                                                }}
                                            />
                                        </Grid>
                                        <Grid item xs={12} sm={4} >
                                            <TextField
                                                label="کد ملی"
                                                variant="filled"
                                                margin='dense'
                                                value={this.state.form.code}
                                                fullWidth
                                                name='code'
                                                onChange={this.handleChangeElement.bind(this)}
                                                InputLabelProps={{
                                                    shrink: true,
                                                }}
                                            />
                                        </Grid>
                                        <Grid item xs={12} sm={4}>
                                            <TextField
                                                select
                                                label="موقعیت"
                                                value={this.state.form.region_id}
                                                variant="filled"
                                                margin='dense'
                                                fullWidth
                                                name='region_id'
                                                onChange={this.handleChangeElement.bind(this)}
                                                InputLabelProps={{
                                                    shrink: true,
                                                }}
                                            >
                                                <MenuItem value={-1}>انتخاب</MenuItem>
                                                {this.state.regions.map((item) => {
                                                    return (
                                                        <MenuItem value={item.value}>{item.label}</MenuItem>
                                                    );
                                                })}
                                            </TextField>
                                        </Grid>
                                        <Grid item xs={12} sm={4}>
                                            <TextField
                                                select
                                                label="جنسیت"
                                                value={this.state.form.gender}
                                                variant="filled"
                                                margin='dense'
                                                fullWidth
                                                name='gender'
                                                onChange={this.handleChangeElement.bind(this)}
                                                InputLabelProps={{
                                                    shrink: true,
                                                }}
                                            >
                                                <MenuItem value='male'>مرد</MenuItem>
                                                <MenuItem value='female'>زن</MenuItem>
                                            </TextField>
                                        </Grid>
                                        <Grid item xs={12}>
                                            <TextField
                                                label="موبایل"
                                                variant="filled"
                                                margin='dense'
                                                value={this.state.form.mobile}
                                                fullWidth
                                                name='mobile'
                                                onChange={this.handleChangeElement.bind(this)}
                                                InputLabelProps={{
                                                    shrink: true,
                                                }}
                                            />
                                        </Grid>
                                        <Grid item xs={12}>
                                            <TextField
                                                label="آدرس"
                                                variant="filled"
                                                margin='dense'
                                                value={this.state.form.address}
                                                fullWidth
                                                name='address'
                                                onChange={this.handleChangeElement.bind(this)}
                                                InputLabelProps={{
                                                    shrink: true,
                                                }}
                                            />
                                        </Grid>
                                    </Grid>
                                </ExpansionPanelDetails>
                                <ExpansionPanelActions>
                                    <Divider/>
                                </ExpansionPanelActions>
                            </ExpansionPanel>
                            <Box style={{ margin: '20px 0', display: 'flex', justifyContent: 'flex-end' }}>
                                <Button disabled={this.state.loading} variant='contained' color='primary' type="submit">ایجاد عضو جدید</Button>
                            </Box>
                        </form>
                    </Box>
                </Container>
                {this.state.loading && <CircularProgress size={20} color={"secondary"} />}
            </div>
        );
    }
}

function mapStateToProps(state) {
    return {
        auth: state.auth
    };
}

export default connect(
    mapStateToProps,
)(ContentCreate);


