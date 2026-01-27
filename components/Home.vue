<template>
  <section class="first-section" id="home">
    <div class="section-content">
      <div class="row">
        <div id="nav" class="fourteen columns text-center">
          <ul>
            <li>
              <a href="#home">Home</a>
            </li>
            <li>
              <a href="#works">Works</a>
            </li>
            <li>
              <a href="#contact">Contact</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="row home-content wf-roundedmplus1c">
        <div class="one-half column">
          <h1 class="section-heading">プリッカソンとは</h1>
          <div class="pretty-row">
            <img class="mini-image" src="/mini/mini-mirei.png">
            <div class="text-container">
              <span>
                プリパラを技術の面から支えていきたい，
                <br />そんな思いから生まれたハッカソン．
              </span>
            </div>
          </div>
          <div class="pretty-row">
            <img class="mini-image" src="/mini/mini-rar.png">
            <div class="text-container">
              <span>
                プリパラと自分の技術を組み合わせて，
                <br />面白いことをしていきましょう！
              </span>
            </div>
          </div>
          <div class="pretty-row">
            <img class="mini-image" src="/mini/mini-sofy.png">
            <div class="text-container">
              <span>
                み～んなともだち、み～んなハッカー！
                <br />創作はじめる時間だよ!
              </span>
            </div>
          </div>
        </div>
        <div class="one-half column">
          <img class="hero-image" src="/rar-kashikoma.jpeg">
        </div>
      </div>

      <div class="row entry-row">
        <div class="fourteen column text-center">
          <a class="button button-primary" href="https://prickathon.connpass.com/">
            <span class="wf-roundedmplus1c">参加登録</span>
          </a>
        </div>
      </div>
    </div>
  </section>
</template>

<style>
@import "~/assets/css/util.css";

@media screen and (min-width: 480px) {
  section {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
  .home-content {
    width: 60%;
    margin-left: auto;
    margin-right: auto;
  }
}

.first-section {
  background: #ffffbb;
}

.first-section .hero-image {
  border-radius: 100%;
  display: block;
  margin-top: 3em;
  margin-left: auto;
  margin-right: auto;
  width: 60%;
  height: 60%;
}

.first-section .button {
  border: none;
}

.first-section .button span {
  color: white;
}

.first-section .text-center {
  text-align: center;
}

.first-section #nav {
  margin: 13px 0 0 0;
}

.first-section #nav ul li {
  display: inline;
  margin: 0 20px 0 0;
}

.first-section #nav a {
  text-decoration: none;
}

.first-section #nav a:hover {
  text-decoration: underline;
}

.first-section .row .mini-image {
  width: 20%;
  height: 20%;
  vertical-align: middle;
  display: inline-block;
  margin-left: 0.2em;
}

.first-section .row .text-container {
  width: 70%;
  font-size: 0.65em;
  display: inline-block;
  vertical-align: middle;
}

.first-section .pretty-row {
  margin-bottom: 1em;
}
</style>
