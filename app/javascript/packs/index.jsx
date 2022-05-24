import React from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import Login from '../components/Login'
import Signup from '../components/Signup'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <BrowserRouter>
      <Switch>
       <Route exact path ="/login" component={ Login }/>
       <Route exact path ="/signup" component={ Signup }/>
      </Switch>
    </BrowserRouter>,
    document.getElementById('root')
    
  )
})
