<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<% %> : 자바코드 작성



<%!
    private String getCookieValue(Cookie[] cookies, String name) {
        if(cookie==null) return null;
        for(Cookie c:cookies) {
            if(c.getName().equals(name)) return c.getValue();
        }
        return null;
    }
%>
<%
    // 쿠키 가져오기
    Cookie[] cookies =  request.getCookies();
%>
<h4>이름<%=getCookieValue(cookies,"name")%></h4>
<h4>성별<%=getCookieValue(cookies,"gender")%></h4>
<h4>나이<%=getCookieValue(cookies,"age")%></h4>