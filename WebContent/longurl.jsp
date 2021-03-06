<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Short Url</title>
<link href="css/index.css" rel="stylesheet" type="text/css" media="all">
<link href="css/footer.css" rel="stylesheet" type="text/css"
	media="all">
</head>
<body>
	<div class="header">
		<h1 align="center" class="title">
			<a href="./">Short Url</a>
		</h1>
	</div>

	<div class="container">
		<div class="menu">
			<a href="./">缩短网址</a> <a href="./longurl.jsp">还原网址</a>
		</div>
		<div class="content">
			<form method="GET" action="longurl.do">
				<p>
					短网址：<input class="textbox" type="text" name="tinyurl"
						value="${ requestScope.baiduShortUrlResult.tinyurl }" title="请输入短网址"
						style="border: 1px solid #ccc;" /> <input type="submit"
						value="还原网址" />
				</p>
			</form>

            <!-- Google短网址 -->
            <p>
                goo.gl&nbsp;&nbsp;：<a href="${ requestScope.googleShortUrlResult.longurl }" target="_blank">${ requestScope.googleShortUrlResult.longurl }</a>
            </p>
            
			<!-- 百度短网址 -->
			<p>
				<c:choose>
					<c:when test="${ requestScope.baiduShortUrlResult.isSuccess eq true }">
                       dwz.cn：<a
							href="${ requestScope.baiduShortUrlResult.longurl }"
							target="_blank">${ requestScope.baiduShortUrlResult.longurl }</a>
					</c:when>
					<c:otherwise>
                       dwz.cn：${ requestScope.baiduShortUrlResult.errmsg }
                    </c:otherwise>
				</c:choose>
			</p>

			<!-- 网易短网址 -->
			<p>
				<c:choose>
					<c:when test="${ requestScope.netEaseShortUrlResult.isSuccess eq true }">
                       126.am：<a
							href="${ requestScope.netEaseShortUrlResult.longurl }"
							target="_blank">${
							requestScope.netEaseShortUrlResult.longurl }</a>
					</c:when>
					<c:otherwise>
                       126.am：${ requestScope.netEaseShortUrlResult.errmsg }
                    </c:otherwise>
				</c:choose>
			</p>
		</div>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- footer -->

</body>
</html>
