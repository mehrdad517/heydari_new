import React, {Component} from 'react';
import { Route} from 'react-router-dom';
import {connect} from 'react-redux';
import Login from "./login";
import ResetPassword from "./reset-password";
import Index from "./index";
import UserList from "./userBundle/user/list";
import Acl from "./userBundle/acl/acl";
import Setting from "./setting";
import {history} from "../store";
import {ConnectedRouter} from "connected-react-router";
import Header from "./header";
import {push} from 'connected-react-router';
import BlogCategory from './blogBundle/category/index'
import BlogContent from './blogBundle/content/list'
import Ticket from './ticketBundle/list'
import TicketCategory from "./ticketBundle/category/index";
import './../assets/styles/style.scss'
import ContentCreate from "./blogBundle/content/create";
import ContentEdit from "./blogBundle/content/edit";
import BlogCategoryEdit from "./blogBundle/category/edit";
import Gallery from './galleryBundle/list'
import GalleryCreate from './galleryBundle/create'
import GalleryEdit from './galleryBundle/edit'
import Region from "./regionBundle/index";
import Member from "./memberBundle/list";
import MemberCreate from "./memberBundle/create";
import MemberEdit from "./memberBundle/edit";
import Hyperlink from "./menuBundle/hyperlink";

class Router extends Component {

    componentDidMount() {

        if (!this.props.auth.login) {
            this.props.redirect();
        }
    }


    render() {
        return (
            <>
                {!this.props.auth.login ?
                    <ConnectedRouter  history={ history }>
                        <Route component={Login} path='/' exact={true}/>
                        <Route component={ResetPassword} path='/password/reset'/>
                    </ConnectedRouter>
                    :
                    <ConnectedRouter  history={ history }>
                        <Header/>
                        <Route component={Index} path='/' exact={true}/>

                        <Route component={UserList} path='/users' exact={true}/>
                        <Route component={Acl} path='/users/access/control/list'/>

                        <Route component={Setting} path={'/setting'} exact={true}/>
                        <Route component={Hyperlink} path='/menu/hyperlink' exact={true}/>

                        <Route component={BlogContent} path='/blog/contents' exact={true}/>
                        <Route component={ContentCreate} path='/blog/contents/create'/>
                        <Route component={ContentEdit} path='/blog/contents/:id/edit'/>

                        <Route component={BlogCategory} path='/blog/categories' exact={true}/>
                        <Route component={BlogCategoryEdit} path='/blog/categories/:id' exact={true}/>

                        <Route component={Member} path='/members' exact={true}/>
                        <Route component={MemberCreate} path='/members/create'/>
                        <Route component={MemberEdit} path='/members/:id/edit'/>

                        <Route component={Gallery} path='/galleries' exact={true}/>
                        <Route component={GalleryCreate} path='/galleries/create'/>
                        <Route component={GalleryEdit} path='/galleries/:id/edit'/>


                        <Route component={Ticket} path={'/tickets'} exact={true} />
                        <Route component={TicketCategory} path='/tickets/categories' exact={true}/>

                        <Route component={Region} path='/regions' exact={true}/>

                    </ConnectedRouter>
                }
            </>
        );
    }
}

function mapStateToProps(state) {
    return {
        auth: state.auth
    };
}

function mapDispatchToProps(dispatch) {
    return {
        redirect: function () {
            dispatch(push('/'));
        }
    }
}

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(Router);
