import React, {Component} from 'react';
import './slider.css'
import IconButton from '@material-ui/core/IconButton';
import ArrowBackIosIcon from '@material-ui/icons/ArrowBackIos';
import {Tooltip} from "@material-ui/core";
import Fab from "@material-ui/core/Fab";
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';
const fadeImages = [
    "https://www.shana.ir/old/image/2017/05/234212_orig.jpg",
    "https://cdn.icana.ir/d/017/48093.jpg",
    "https://hmg.mop.ir/portal/Picture/ShowPicture.aspx?ID=2570451b-10d1-4606-a290-f8e2290ce499"
];
class Slider extends Component {
    constructor(props){
        super(props);
        this.state={
            index:1,
            Interval:''
        }
    }
    componentDidMount() {
        let get=document.querySelector('.items div')
        get.classList.add('seen')
        this.setState({
            Interval:setInterval(() => {
                this.nextSlide()
            }, 2000)
        })
    }
    nextSlide(){
        clearInterval(this.state.Interval)
        let Images = document.querySelectorAll('.items div')
        let seen=document.querySelector('.seen')
        seen.classList.remove('seen')
        if (seen.nextElementSibling){
            seen.nextElementSibling.classList.add('seen')
        }
        if(!seen.nextElementSibling){
            Images[0].classList.add('seen')
        }

    }
    prevSlide(){
        clearInterval(this.state.Interval)
        let Images = document.querySelectorAll('.items div')
        let seen=document.querySelector('.seen')
        seen.classList.remove('seen')
        if (seen.previousElementSibling){
            seen.previousElementSibling.classList.add('seen')
        }
        if(!seen.previousElementSibling){
            Images[Images.length -2].classList.add('seen')
        }
    }




    render() {
        return (
            <div className='slider'>
                <div className='items'>
                    {fadeImages.map((item)=>{
                        return(
                            <div>
                                <img  src={item}/>
                                <div className='slideTitle'>
                                    <p>به گزارش "ورزش‌سه"، صدرنشینی ایران در گروه اول انتخابی المپیک قاره آسیا آن هم به شکلی کاملا مقتدرانه قابل پیش‌بینی بود،‌ اما در گروه مقابل اتفاقات غیرقابل پیش‌بینی رخ داد. استرالیا در همان دور گروهی ب</p>
                                </div>
                            </div>
                        )
                    })}
                </div>
                <Tooltip  className='nextSlider' title='next'>
                    <Fab
                        aria-label="save"
                        color="default"
                        onClick={()=>{this.nextSlide()}}
                    >
                        <ArrowForwardIosIcon />
                    </Fab>
                </Tooltip>
                <Tooltip  className='prevSlider' title='prev'>
                    <Fab
                        aria-label="save"
                        color="default"
                        onClick={()=>{this.prevSlide()}}
                    >
                        <ArrowForwardIosIcon style={{ transform: 'rotate(180deg)' }} />
                    </Fab>
                </Tooltip>
            </div>
        );
    }
}

export default Slider;