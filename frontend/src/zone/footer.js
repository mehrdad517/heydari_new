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
        );
    }
}

export default Footer;
