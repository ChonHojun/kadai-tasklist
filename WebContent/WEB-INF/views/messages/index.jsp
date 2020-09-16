<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
    <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>タスクメッセージ一覧</h2>
        <ul>
            <c:forEach var="message" items="${tasks}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${message.id}">
                        <c:out value="${message.id}" />
                    </a>
                    : &gt; <c:out value="${message.content}" />
                </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">新規タスクメッセージの投稿</a></p>

    </c:param>
</c:import>