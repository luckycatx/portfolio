<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
  <head>
    <title>About</title>
    <%@include file="meta.html" %>
  </head>
  <body>
    <%@include file="header.html" %>
    <section class="about section" id="about">
      <div class="about_container container grid">
        <h2 class="section_title-1">
          <span>About Me.</span>
        </h2>

        <div class="about_profile">
          <div class="about_profile_block">
            <img src="img/Cat.jpg" alt="image" class="about_img">
            <div class="about_shadow"></div>
            <div class="geometric-box"></div>
            <div class="about_box"></div>
          </div>
        </div>

        <div class="about_info">
          <p class="about_description">
            [Description written here]
          </p>
          <ul class="about_list">
            <li class="about_item">
              [Skills:...]
            </li>

            <li class="about_item">
              ...
            </li>
          </ul>

          <div class="about_contact">
            <a href="contact.jsp" class="button">
              <i class="ri-send-plane-line"></i> Contact Me
            </a>
          </div>
        </div>
      </div>
    </section>

    <section class="resume section">
      <h2 class="section_title-2">
        <span>Résumé.</span>
      </h2>

      <div class="resume_container container grid">
        <article class="resume_card">
          <div class="resume_border"></div>
          <div class="resume_content">
            <div class="resume_icon">
              <div class="resume_box"></div>
              <i class="ri-fire-line"></i>
            </div>

            <h2 class="resume_title">Interests</h2>
            <p class="resume_description">
              [Interests]
            </p>
          </div>
        </article>

        <article class="resume_card">
          <div class="resume_border"></div>
          <div class="resume_content">
            <div class="resume_icon">
              <div class="resume_box"></div>
              <i class="ri-briefcase-2-line"></i>
            </div>

            <h2 class="resume_title">Work Experiences</h2>
            <p class="resume_description">
              [Work Experiences]
            </p>
          </div>
        </article>

        <article class="resume_card">
          <div class="resume_border"></div>
          <div class="resume_content">
            <div class="resume_icon">
              <div class="resume_box"></div>
              <i class="ri-graduation-cap-line"></i>
            </div>

            <h2 class="resume_title">Educational Background</h2>
            <p class="resume_description">
              [Educational Background]
            </p>
          </div>
        </article>
      </div>
    </section>
    <%@include file="footer.html" %>
  </body>
</html>
