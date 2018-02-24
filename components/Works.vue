<template>
  <section class="works-section" id="works">
    <div class="section-content wf-roundedmplus1c">
      <h1 class="section-heading">成果物</h1>
      <ul class="events">
        <li v-for="event in history.events" :key="event.times">
          {{event.title}}
          <ul class="works">
            <li v-for="work in event.works" :key="work.id">
              <div class="work-container">
                <img :src="work.thumbnailUrl" class="work-thumbnail">
                <p class="work-name">
                  <a v-if="work.linkToContent" :href="work.linkToContent">
                    {{work.name}}
                  </a>
                  <span v-else>
                    {{work.name}}
                  </span>
                </p>
              </div>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </section>
</template>

<script>
export default {
  props: ['history'],
}
</script>

<style lang='scss'>
@import "~assets/css/util";

// TODO: スマホ向けレイアウトをまともにする
@media screen and (min-width: 480px) {
  section {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}

.works-section {
  background: #9fffb9;
}

.events {
  overflow-y: scroll;
  max-height: 55vh;
}

.works {
  display: flex;
  list-style: none;
}

.work-name {
  text-align: center;
}

.work-thumbnail {
  margin-left: auto;
  margin-right: auto;
  width: 70%;
  margin-left: 15%;
  margin-right: 15%;
}
</style>

