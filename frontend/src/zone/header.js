import React, {Component} from 'react';
import {Container} from "@material-ui/core";
import logo from "../asset/img/logo.png";
import flag from "../asset/img/flag.png";
import iranr from "../asset/img/iranr.png";
import {MuiThemeProvider} from "@material-ui/core/styles";

class Header extends Component {
    render() {
        return (
            <div>
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
            </div>
        );
    }
}

export default Header;
