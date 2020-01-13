import React, {Component} from 'react';
import './slider.css'
import IconButton from '@material-ui/core/IconButton';
import ArrowBackIosIcon from '@material-ui/icons/ArrowBackIos';
import {Tooltip} from "@material-ui/core";
import Fab from "@material-ui/core/Fab";
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';
import CircularProgress from "@material-ui/core/CircularProgress";
class Slider extends Component {
    constructor(props){
        super(props);
        this.state={
            index:1,
            Interval:''
        }
    }
    componentDidMount() {
        let get = document.querySelector('.items div');
        if (get) {
            get.classList.add('seen');
          this.clear()
        }
    }
    clear(){
        this.clearinterval = setInterval(()=>{
            this.nextSlide()
        },3000)
    }
    click(){
        clearInterval(this.clearinterval)
        setTimeout(()=>{
            this.clear()
        },10)
    }
    nextSlide(){

        let Images = document.querySelectorAll('.items div')
        let seen=document.querySelector('.seen')
        if(seen){
            seen.classList.remove('seen')
            if (seen.nextElementSibling){
                seen.nextElementSibling.classList.add('seen')
            }
            if(!seen.nextElementSibling){
                Images[0].classList.add('seen')
            }
        }
    }
    prevSlide(){

        let Images = document.querySelectorAll('.items div')
        let seen=document.querySelector('.seen')
        if(seen){
            seen.classList.remove('seen')
            if (seen.previousElementSibling){
                seen.previousElementSibling.classList.add('seen')
            }
            if(!seen.previousElementSibling){
                Images[Images.length -2].classList.add('seen')
            }
        }

    }


    render() {
        console.log(this.props)
        if (this.props.data.length === 0) {
            return <CircularProgress color={"secondary"} size={15} />
        }
        return (
            <div className='slider'>
                <div className='items'>
                    {this.props.data.map((item, index)=>{
                        return(
                            <div key={index}>
                                {item.link ?
                                    <a href={item.link}>
                                        <img src={item.url}/>
                                        {item.caption &&
                                        <div className='slideTitle'>
                                            <p>{item.caption}</p>
                                        </div>}
                                    </a> :
                                    <div>
                                        <img src={item.url}/>
                                        {item.caption &&
                                        <div className='slideTitle'>
                                            <p>{item.caption}</p>
                                        </div>
                                        }
                                    </div>
                                }
                            </div>
                        )
                    })}
                </div>
                <Tooltip  className='nextSlider' title='next'>
                    <Fab
                        aria-label="save"
                        color="default"
                        onClick={()=>{this.nextSlide();this.click()}}
                    >
                        <ArrowForwardIosIcon />
                    </Fab>
                </Tooltip>
                <Tooltip  className='prevSlider' title='prev'>
                    <Fab
                        aria-label="save"
                        color="default"
                        onClick={()=>{this.prevSlide();this.click()}}
                    >
                        <ArrowForwardIosIcon style={{ transform: 'rotate(180deg)' }} />
                    </Fab>
                </Tooltip>
            </div>
        );
    }
}

export default Slider;