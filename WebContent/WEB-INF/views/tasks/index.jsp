<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>タスク一覧</h2>

        <a class="fluid ui button"
            href="${pageContext.request.contextPath}/new">新規タスクの登録</a>


        <ol class="c-list">
            <c:forEach var="task" items="${task}">
                <li>
                    <!--a href="${pageContext.request.contextPath}/show?id=${message.id}">
                        <c:out value="${message.id}" />
                    </a>
                    ：--> <a
                    href="${pageContext.request.contextPath}/show?id=${task.id}"><c:out
                            value="${task.content}"></c:out></a>
                </li>
            </c:forEach>
        </ol>

        <div id="pagination">
            （全 ${tasks_count} 件）<br />
            <c:forEach var="i" begin="1" end="${((tasks_count - 1) / 15) + 1}"
                step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}"
                            onclick="linkClick()"><c:out value="${i}" /></a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>

        <a class="fluid ui button"
            href="${pageContext.request.contextPath}/new">新規タスクの登録</a>

    </c:param>
</c:import>