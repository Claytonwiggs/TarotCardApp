<template>
  <div id="app">
    <div id="nav">
      <router-link to="/">Fortune</router-link>
      |
      <router-link to="/cards">Cards</router-link>
      |
      <router-link to="/about" v-if="isLoggedIn()">Your Account</router-link>
      |
      <router-link v-if="!isLoggedIn()" to="/login">Login</router-link>
      |
      <router-link class="nav-item" v-if="isLoggedIn()" to="/logout">Logout</router-link>
      |
      <router-link v-if="!isLoggedIn()" to="/signup">Sign up</router-link>
    </div>
    <router-view />
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #71b0ee;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c4053;
}

#nav a.router-link-exact-active {
  color: #37774d;
}
</style>
<script>
export default {
  methods: {
    isLoggedIn: function () {
      return localStorage.getItem("jwt");
    },
  },
};
</script>
