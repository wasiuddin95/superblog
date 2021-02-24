require('./bootstrap');

window.Vue = require('vue');

// Editor Support
import 'v-markdown-editor/dist/v-markdown-editor.css';
import Editor from 'v-markdown-editor'

Vue.use(Editor);

// Vuex Support
import Vuex from 'vuex'
Vue.use(Vuex)
import storeData from "./store/index"
const store = new Vuex.Store(
    storeData
)

// Support moment js
import {filter} from './filter'

// Vue Router
import VueRouter from 'vue-router'
Vue.use(VueRouter)

import {routes} from './routes';

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('example-component', require('./components/ExampleComponent.vue'));
Vue.component('admin-main', require('./components/admin/AdminMaster.vue').default);
Vue.component('home-main', require('./components/public/PublicMaster.vue').default);

// V-form
import { Form, HasError, AlertError } from 'vform'

Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)
window.Form = Form;

// Sweet Alert 2
import Swal from 'sweetalert2'
window.Swal = Swal;

const Toast = Swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 3000,
  timerProgressBar: true,
  didOpen: (toast) => {
    toast.addEventListener('mouseenter', Swal.stopTimer)
    toast.addEventListener('mouseleave', Swal.resumeTimer)
  }
})

window.Toast = Toast;

const router = new VueRouter({
    routes, // short for `routes: routes`
    mode:'hash'
  })


const app = new Vue({
    el: '#app',
    router,
    store
});
