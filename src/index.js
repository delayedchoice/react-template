import React from 'react'
import { render } from 'react-dom'
import { makeServer } from './server'

import App from './App'

import './index.css'

if (process.env.NODE_ENV === 'development') {
  makeServer({ environment: 'development' })
}

render(
  <App />,
  document.getElementById('root')
)
