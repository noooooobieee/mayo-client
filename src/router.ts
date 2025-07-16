import { createRouter, createWebHashHistory } from "vue-router";
import Login from "./Login.vue";
import Home from "./Home.vue";
import Register from "./Register.vue";

const routes = [
  { path: "/", name: "Start", component: Home, meta: { depth: 1 } },
  { path: "/login", name: "Login", component: Login, meta: { depth: 2 } },
  { path: "/register", name: "Register", component: Register, meta: { depth: 3 } },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

export default router;