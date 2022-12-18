<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
                <h2>タスク詳細ページ</h2>

                <table>
                    <tbody>
                        <tr>
                            <th>タスク名</th>
                            <td><c:out value="${task.content}" /></td>
                        </tr>
                        <tr>
                            <th>作成日時</th>
                            <td><fmt:formatDate value="${task.created_at}"
                                    pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                        <tr>
                            <th>更新日時</th>
                            <td><fmt:formatDate value="${task.updated_at}"
                                    pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                    </tbody>
                </table>


                <p>
                    <a class="ui teal button"
                        href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a>
                </p>
                <p>
                    <a class="fluid ui button"
                        href="${pageContext.request.contextPath}/index">一覧に戻る</a>
                </p>
            </c:when>
            <c:otherwise>
                <style>

/*======================
    404 page
=======================*/
.page_404 {
    padding: 40px 0;
    background: #fff;
    font-family: 'Arvo', serif;
}

.page_404  img {
    width: 100%;
}

.four_zero_four_bg {
    background-image:
        url(https://cdn.dribbble.com/users/285475/screenshots/2083086/dribbble_1.gif);
    height: 400px;
    background-position: center;
}

.four_zero_four_bg h1 {
    font-size: 80px;
}

.four_zero_four_bg h3 {
    font-size: 80px;
}

.link_404 {
    color: #fff !important;
    padding: 10px 20px;
    background: #39ac31;
    margin: 20px 0;
    display: inline-block;
}

.contant_box_404 {
    margin-top: -50px;
}
</style>
                <section class="page_404">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 ">
                                <div class="col-sm-10 col-sm-offset-1  text-center">
                                    <div class="four_zero_four_bg">
                                        <h2 class="text-center ">404</h2>


                                    </div>

                                    <div class="contant_box_404">
                                        <h3 class="h2">なにか問題があったようです</h3>

                                        <p>閲覧しようとしたページには何らかの問題があったようです。このページ閲覧する必要がある場合、管理者に連絡してください。</p>

                                        <a href="./" class="link_404">Go to Home</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>