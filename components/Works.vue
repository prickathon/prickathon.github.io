<template>
  <section class="works-section" id="works">
    <div class="section-content wf-roundedmplus1c">
      <h1 class="section-heading">成果物</h1>
      <ul class="events">
        <li v-for="event in history.events" :key="event.times">
          <span class="event-title">{{event.title}}</span>
          <ul class="works">
            <li v-for="work in event.works" :key="work.id">

              <div class="work-container">
                <div class="work-thumbnail">
                  <img :src="work.thumbnailUrl||'/yume-junbityu.jpg'" class="work-thumbnail-img">
                </div>
                <div class="work-text-content">
                  <p class="work-name">
                    <a v-if="work.linkToContent" :href="work.linkToContent">{{work.name}}</a>
                    <span v-else>{{work.name}}</span>
                  </p>
                  <p class="work-description">{{work.description}}</p>
                  <div class="work-meta">
                    <span class="work-authors">{{work.authors.join(" , ")}}</span>
                  </div>

                </div>
                
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
  .event-title{
    font-size: 2em;
  }
}

.works {
  display: flex;
  list-style: none;
  flex-wrap:wrap;
}

.work-container{
  width: 240px;
  transition: 0.5s;
  margin-left: 30px;
  margin-right: 30px;
  border: 1px solid #ddd;
  border-radius: 4px;
  background: #fff;
  box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.1), 0 8px 20px rgba(0, 0, 0, 0.1);
}

.work-thumbnail {
  position: relative;
  overflow: hidden;
  width: 100%;
  height: auto;
  .work-thumbnail-img {
    max-width: 100%;
  }
}

.work-text-content {
  padding: 16px;
  background-color: #eee;
  .work-name {
    margin: 0 0 12px 0;
    font-size: 20px;
    color: #4cc48e;
    font-weight: bold;
    a { color: inherit; }
  }
  .work-description {
    margin: 0 0 12px 0;
    font-size: 14px;
    color: #555;
    font-weight: lighter;
  }
}

.work-meta {
  overflow: hidden;
  width: 100%;
  font-size: 12px;
  .work-authors {
    float: left;
    color: #aaa;
  }
}

</style>

