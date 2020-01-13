import React, {Component} from 'react';
import {MuiThemeProvider} from "@material-ui/core/styles";

class Footer extends Component {
    render() {
        return (
            <footer>
                <div className="footer-inner">
                    <div className="intro">
                        <h3>پایگاه اطلاع رسانی دکتر سید سعید حیدری طیب</h3>
                        <p>نامزد دوره یازدهم مجلس شورای اسلامی</p>
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
