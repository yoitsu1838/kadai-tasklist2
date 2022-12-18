<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" />
            <br />
        </c:forEach>

    </div>
</c:if>

<div class="ui form">
    <div class="field">
        <label>タスク内容を入力※改行不可</label>
        <textarea name="content" id="content" value="${task.content}"></textarea>
    </div>


    <input type="hidden" name="_token" value="${_token}" />
    <button type="submit" class="ui teal labeled icon button">
        タスクを登録 <i class="add icon"></i>
    </button>

</div>
