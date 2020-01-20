import React, {Component} from 'react';
import {MuiThemeProvider} from "@material-ui/core/styles";
import {Paper} from "@material-ui/core";

class Footer extends Component {
    render() {
        return (
            <footer>
                <div className="footer-inner">
                    <div className="intro">
                        <h3>پایگاه اطلاع رسانی دکتر سید سعید حیدری طیب</h3>
                        <p>نامزد دوره یازدهم مجلس شورای اسلامی</p>
                        <div className='footer-links'>
                            {this.props.hyperlink && this.props.hyperlink.map((link) => {
                                return(
                                    <div>
                                        <h5>{link.label}</h5>
                                        {link.children && <ul>
                                            {link.children.map((child) => {
                                                if (child.external_link_url && child.external_link) {
                                                    return(<li><a href={child.external_link}>{child.label}</a></li>);
                                                } else {
                                                    return(<li><a href={"/article/" + child.label.split(' ').join('-')}>{child.label}</a></li>);
                                                }
                                            })}
                                        </ul>}
                                    </div>
                                );
                            })}
                        </div>
                        <ul>
                            {this.props.data && this.props.data.social_media.map((s, i) => {
                                return(
                                    <li key={i}>
                                        <a href={s.value}>
                                            <span style={{color:'#B3BAC8', fontWeight: 'bold'}} className={s.icon}></span>
                                        </a>
                                    </li>
                                );
                            })}
                        </ul>
                        <ul className="analytic">
                            <li><span>تعداد کاربران حاضر:</span>{this.props.analytic.online}</li>
                            <li><span>تعداد بازدید امروز:</span>{this.props.analytic.today}</li>
                            <li><span>تعداد کل بازدیدکنندگان:</span>{this.props.analytic.all}</li>
                        </ul>
                    </div>
                </div>
                <div className="copy-right">
                    <p>کلیه حقوق این سایت محفوظ است.</p>
                </div>
            </footer>
        );
    }
}

export default Footer;
