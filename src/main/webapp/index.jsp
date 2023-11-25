<%@ page contentType="text/html;charset=UTF-8"%>
<html lang="en">
  <head>
    <title>Home</title>
    <%@include file="meta.html"%>
  </head>
  <body>
    <%@include file="header.html"%>
      <section class="home section" id="home">
        <div class="home_container container grid">
          <h1 class="home_name">
            John Doe
          </h1>

          <div class="home_profile">
            <div class="home_profile_block">
              <img src="img/Cat.jpg" alt="image" class="home_profile_img">
              <div class="home_profile_shadow"></div>
              <!---->
              <!---->
              <div class="geometric-box"></div>
            </div>

            <div class="home_social">
              <a href="https://github.com" target="_blank" class="home_social_link">
                <i class="ri-github-fill"></i>
              </a>
              <a href="https://linkedin.com" target="_blank" class="home_social_link">
                <i class="ri-linkedin-box-line"></i>
              </a>
              <a href="https://x.com" target="_blank" class="home_social_link">
                <i class="ri-twitter-x-line"></i>
              </a>
            </div>
          </div>
          <div class="home_info">
            <p class="home_description">
              [Description Writing Here]
            </p>
            <a href="about.jsp" class="home_switch">
              <div class="home_switch-box">
                <i class="ri-arrow-right-s-line"></i>
              </div>
              <span class="home_switch-text">About Me</span>
            </a>
          </div>
        </div>
      </section>
    <%@include file="footer.html"%>
  </body>
</html>
