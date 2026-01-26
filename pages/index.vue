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

<style lang="scss">
@import "skeleton-sass-official/src/core/config";
@import "skeleton-sass-official/src/themes/fresh/vars";
@import "skeleton-sass-official/src/themes/fresh/include_components";
@import "skeleton-sass-official/src/themes/fresh/grid";

@import url("//fonts.googleapis.com/css?family=Raleway:400,300,600");
@import url("//fonts.googleapis.com/earlyaccess/roundedmplus1c.css");

html,
body {
  height: 100%;
  margin: 0;
  font-family: "Raleway";
}
</style>
