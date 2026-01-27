<template>
  <section class="second-section" id="contact">
    <div class="section-content">
      <div class="row">
        <div class="one-half column">
          <h1 class="section-heading wf-roundedmplus1c">お問い合わせ</h1>
          <p class="wf-roundedmplus1c">
            <a href="https://prickathon.connpass.com/event/76592/">イベントページ</a>か、以下の連絡先へお願いいたします。
          </p>
          <ul class="person-list">
            <li class="person">
              @takanakahiko
              <ul class="contact-list">
                <li class="email">takanakahiko [at] gmail.com</li>
                <li class="twitter">
                  <a href="https://twitter.com/takanakahiko">@takanakahiko</a>
                </li>
              </ul>
            </li>
            <li class="person">
              @e_ntyo
              <ul class="contact-list">
                <li class="email">entyo.contact [at] gmail.com</li>
                <li class="twitter">
                  <a href="https://twitter.com/e_ntyo">@e_ntyo</a>
                </li>
              </ul>
            </li>
          </ul>
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
}

.second-section {
  background: #bbffff;
}

.second-section .contact-list,
.second-section .person-list {
  list-style: none;
}

.second-section .contact-list li:before,
.second-section .person-list li:before {
  font-family: "Font Awesome 6 Free";
  font-weight: 900;
  margin-right: 0.5em;
}

.second-section .contact-list .twitter:before,
.second-section .person-list .twitter:before {
  font-family: "Font Awesome 6 Brands";
  content: "\f099";
}

.second-section .contact-list .email:before,
.second-section .person-list .email:before {
  content: "\f0e0";
}

.second-section .contact-list .person:before,
.second-section .person-list .person:before {
  content: "\f007";
}

.second-section .contact-list li a,
.second-section .person-list li a {
  text-decoration: none;
}

.second-section .wf-roundedmplus1c,
.second-section .wf-roundedmplus1c * {
  font-family: "Rounded Mplus 1c";
}
</style>
