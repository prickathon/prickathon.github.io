<template>
  <div id="root-container">
    <Home />
    <Works :history="history" />
    <Contact />
  </div>
</template>

<script setup lang="ts">
import type { History } from '~/types/history'
import historyData from '~/public/history.json'

const history = ref<History>(historyData as History)
</script>

<style>
@import url("//fonts.googleapis.com/css?family=Raleway:400,300,600");
@import url("//fonts.googleapis.com/earlyaccess/roundedmplus1c.css");

html,
body {
  height: 100%;
  font-family: "Raleway", sans-serif;
}
</style>
