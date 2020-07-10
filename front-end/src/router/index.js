import Vue from 'vue'
import Router from 'vue-router'
import Perguntas from '../components/Perguntas.vue'
import Admin from '../components/Admin.vue'
import Resultado from '../components/Resultado.vue'
import Inicio from '../components/Inicio.vue'


Vue.use(Router)

const routes = [
    {
        name: 'inicio', 
        path: '/', 
        component: Inicio
    },
    {
        name: 'perguntas',
        path: '/perguntas',
        component: Perguntas,
    },
    {
        name: 'admin',
        path: '/admin',
        component: Admin
    },
    {
        name: 'resultado',
        path: '/resultado',
        component: Resultado
    }
]

const router = new Router({ routes })

export default router