<template>
  <div id="root-container">
    <Home/>
    <Works :history="history" />
    <Contact/>
  </div>
</template>

<script>
import Home from "~/components/Home.vue";
import Contact from "~/components/Contact.vue";
import Works from "~/components/Works.vue";
import axios from "axios";
import history from "~/static/history.json";

export default {
  components: {
    Home,
    Contact,
    Works
  },
  data() {
    return { history };
  }
};
</script>

<style lang="scss">
@import "~skeleton-sass-official/src/core/config"; // Skeleton Sass core loader 
 
// import default theme variables 
@import "~skeleton-sass-official/src/themes/fresh/vars"; // theme variable overrides 
 
// import default theme styles 
@import "~skeleton-sass-official/src/themes/fresh/include_components"; // theme base styles 
@import "~skeleton-sass-official/src/themes/fresh/grid"; // theme grid styles 

@import url("//fonts.googleapis.com/css?family=Raleway:400,300,600");
@import url("//fonts.googleapis.com/earlyaccess/roundedmplus1c.css");
@import url("//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");

html,
body {
  height: 100%;
  margin: 0;
  font-family: "Raleway";
}
</style>

