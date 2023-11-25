<%@ page contentType="text/html;charset=UTF-8"%>
<html lang="en">
  <head>
    <title>Contact</title>
    <%@include file="meta.html" %>
  </head>
  <body>
    <%@include file="header.html" %>
    <section class="contact section" id="contact">
      <div class="contact_container grid">
        <div class="contact_card">
          <h2 class="section_title-2">
            <span>Contact Me.</span>
          </h2>
          <p class="contact_description-1">
            Send me a form with message to get in touch,
            I'll get back to you.
          </p>
          <p class="contact_description-2">
            Your <b>Name</b> should be typed in and <b>Email Address</b> should be valid,
            you won't receive anything other than your reply.
          </p>
          <div class="geometric-box"></div>
        </div>

        <div class="contact_form_block">
          <h2 class="contact_title">
            Send Me A Message
          </h2>

          <form action="response.jsp" method="post" class="contact_form" id="contact-form">
            <div class="contact_group">
              <div class="contact_box">
                <input type="text" class="contact_input" id="name" name="name" placeholder="Name">
                <label for="name" class="contact_label">Name</label>
              </div>
              <div class="contact_box">
                <input type="text" class="contact_input" id="email" name="email" placeholder="Email Address">
                <label for="email" class="contact_label">Email Address</label>
              </div>
            </div>
            <div class="contact_box">
              <input type="text" class="contact_input" id="subject" name="subject" placeholder="Subject">
              <label for="subject" class="contact_label">Subject</label>
            </div>
            <div class="contact_box contact_message_block">
              <textarea class="contact_input" id="message" name="message" placeholder="Message"></textarea>
              <label for="message" class="contact_label">Message</label>
            </div>

            <p class="contact_prompt" id="contact-prompt"></p>

            <button type="submit" class="contact_submit button">
              <i class="ri-send-plane-line"></i> Send Message
            </button>
          </form>
        </div>

        <div class="contact_social">
          <!---->
          <div class="contact_social_content">
            <div>
              <p class="contact_social_description-1">
                Don't want to send emails?
              </p>
              <p class="contact_social_description-2">
                Get in touch by my social networks
              </p>
            </div>

            <div class="contact_social_block">
              <a href="https://facebook.com" target="_blank" class="contact_social_link">
                <i class="ri-facebook-box-line"></i>
              </a>
              <a href="https://instagram.com" target="_blank" class="contact_social_link">
                <i class="ri-instagram-line"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <%@include file="footer.html" %>
  </body>
</html>
