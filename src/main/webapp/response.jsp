<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.io.*, java.util.*" %>
<%
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String subject = request.getParameter("subject");
  String message = request.getParameter("message");
%>


<html>
  <head>
    <title>Form Submit Response</title>
    <%@include file="meta.html" %>
  </head>
  <body>
    <h2 class="response section_title-1">
      <span>Form Submit Response</span>
    </h2>
    <div class="response_container container grid">
      <div class="response_card">
        <div class="response_border"></div>
        <div class="response_content">
          <div class="response_icon">
            <div class="response_box"></div>
            <i class="ri-chat-quote-line"></i>
          </div>
          <h2 class="response_title">Your form has been submitted successfully</h2>
          <h2 class="response_info">Your name: <%=name%>
          </h2>
          <h2 class="response_info">Your email: <%=email%>
          </h2>
          <h2 class="response_info">Your subject: <%=subject%>
          </h2>
          <p class="response_info_msg">
            Message: <%=message%>
          </p>
          <p class="response_description">
            Above is your submission form, we will get back to you as soon as possible.
          </p>
        </div>
        <div class="response_back">
          <a href="index.jsp" class="button">
            <i class="ri-home-3-line"></i> Back Home
          </a>
        </div>
      </div>
    </div>
  </body>
</html>
