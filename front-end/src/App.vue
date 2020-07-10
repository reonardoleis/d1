<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<script>

export default {

  name: 'App',
  data() {
    return {
      API_URL: 'http://localhost:8000/'
    }
  }
}
</script>

<style>
  * {
    font-family: "Arial", Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
  }
  @import './css/spectre.min.css';
  @import './css/spectre-exp.min.css';
  @import './css/spectre-icons.min.css';
  @import './css/custom.css';
</style>
