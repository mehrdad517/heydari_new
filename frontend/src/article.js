import React, {Component} from 'react';
import Header from "./zone/header";
import Footer from "./zone/footer";
import ClipLoader from "react-spinners/SyncLoader";
import axios from 'axios';
import {Container, Paper} from "@material-ui/core";
import Grid from "@material-ui/core/Grid";
class Article extends Component {

    constructor(props)
    {
        super(props);
        this.state = {
            loading: true,
            response: null,
            show:'none'
        }
    }

    componentDidMount() {

        window.scrollTo(0, 0)

        window.addEventListener('click' ,(event)=>{
            let close = document.querySelector('.background');
            if(event.target === close){
                this.setState({
                    show:'none'
                })
            }
        })
        axios.get('http://localhost:8000/api/article/' + this.props.match.params.id).then((response) => {
            if (typeof response != "undefined") {
                this.setState({
                    loading: false,
                    response: response.data
                })
            }
        }).catch((error) => {
            console.log(error);
        })
    }

    render() {
        const override = `
            transform: translate(-50%, -50%);
            position: absolute;
            top: 50%;
            left: 50%;
            z-index: 9999999999;
                `;
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
                <Header />
                <Container>
                    <div className='article'>
                        <h1>{this.state.response.title}</h1>
                        <img onClick={()=>{this.setState({show:'flex', imgPopUp: this.state.response.images[0].url})}} src={this.state.response.images[0].url }/>
                        <p dangerouslySetInnerHTML={{__html: this.state.response.content}} />
                        <div className='article-gallery'>
                            <Grid container={true}>
                                {this.state.response.gallery.map((g, i) => {
                                    return(
                                        <Grid xs={12} sm={3}>
                                            <img onClick={()=>{this.setState({show:'flex', imgPopUp: g.url})}} width={100 + '%'} height={200 + 'px'} src={g.url} />
                                        </Grid>
                                    );
                                })}
                            </Grid>
                        </div>
                    </div>
                </Container>
                <Footer />
                <div className='background' style={{ position:'fixed', top: 0 ,alignItems:'center',justifyContent:'center',display:this.state.show ,backgroundColor:'rgba(0,0,0,.8)',height:100 + '%' , width:100 + '%'  , zIndex:100000}}>
                    <img style={{width:50 +'%',height:50 + '%'}}  src={this.state.imgPopUp }/>
                </div>
            </div>
        );
    }
}

export default Article;