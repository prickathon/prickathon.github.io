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

<style lang="scss">
@import "~/assets/css/util";

@media screen and (min-width: 480px) {
  section {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}

.second-section {
  background: #bbffff;

  .contact-list,
  .person-list {
    list-style: none;

    li:before {
      font-family: "Font Awesome 6 Free";
      font-weight: 900;
      margin-right: 0.5em;
    }

    .twitter:before {
      font-family: "Font Awesome 6 Brands";
      content: "\f099";
    }

    .email:before {
      content: "\f0e0";
    }

    .person:before {
      content: "\f007";
    }

    li a {
      text-decoration: none;
    }
  }

  .wf-roundedmplus1c,
  .wf-roundedmplus1c * {
    font-family: "Rounded Mplus 1c";
  }
}
</style>
