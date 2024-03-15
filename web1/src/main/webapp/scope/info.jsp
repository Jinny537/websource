<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<% 

    request.setCharacterEncoding("utf-8");

    // id,name,age 가져오기
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String age = request.getParameter("age");


    // HttpServletRequest : 유효범위
    // request.getParameter() : 사용자가 입력값을 가지고 올 때 범위가 제한 됨
    // form action의 값으로 사용된 페이지까지 가능

    // info.jsp 가 알고있는 값(사용자입력값, db값)을 다른 페이지랑 공유
    // 1) get/post 방식으로 넘겨준다
    // 2) spcoe 이용
    //    (1) page : 현재 페이지
    //    (1) request : HttpServletRequest 유효범위
    //    (1) session : HttpSession 유효범위
    //    (1) application : 톰캣 서버 범위(X)
    //    request.setAttribute("key", 값), request.getAttribute("key")
    //    session.setAttribute("key", 값), session.getAttribute("key")
%>
<h3>id : <%=id%></h3>
<h3>name : <%=name%></h3>
<h3>age : <%=age%></h3>
<%
    // request scope 사용
    request.setAttribute("id", id);
    request.setAttribute("name", name);
    request.setAttribute("age", age);

    // session scope 사용
    session.setAttribute("id", id);
    session.setAttribute("name", name);
    session.setAttribute("age", age);
%>

<%-- <form action="info.jsp" method="post">
    <div>
      <label for="id">id</label>
      <input type="text" name="id" id="id" value="<%=id%>" readonly/>
    </div>
    <div>
      <label for="name">name</label>
      <input type="text" name="name" id="name" value="<%=name%>" readonly/>
    </div>
    <div>
      <label for="age"></label>age</label>
      <input type="text" name="age" id="age" value="<%=age%>" readonly/>
    </div>
    <div>
      <button type="submit">전송</button>
    </div>
</form> --%>

<%-- <h3>
    <a href="next.jsp?id=<%=id%>+&name=<%=name%>&age=<%=age%>">다음 페이지</a>
</h3> --%>

<h3>
<a href="next.jsp"></a>
</h3>