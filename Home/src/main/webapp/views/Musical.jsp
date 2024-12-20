<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%
// 서블릿이 아닌 직접 접근한 경우만 리다이렉트
if (request.getAttribute("musicals") == null) {
    String contextPath = request.getContextPath();
    response.sendRedirect(contextPath + "/musical");
    return; // 리다이렉트 후 추가 처리 방지
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Musical</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<style>
		.card {
    width: 15rem; /* 카드 너비 */
    height: 400px; /* 카드 높이 */
}

.card-img-top {
    width: 100%;
    height: 280px; /* 원하는 높이로 설정 */
    object-fit: contain; /* 비율 유지하면서 잘림 */
}
.card-title {
    font-size: 1.0rem; /* 제목 크기 작게 */
}

.card-text {
    font-size: 0.7rem; /* 본문 텍스트 크기 작게 */
}
	</style>
</head>
<body class="bg-dark">
	<jsp:include page="/Common/Link.jsp" />
	<!-- 공통 링크 -->
	<br>
	<div class="container">
		<h1 class="text-white">Musical_Information</h1>
		<br>
		
		<div class="row row-cols-1 row-cols-md-4 g-4">
			<c:forEach var="musical" items="${musicals}">
				<div class="col flex-grow-0">
					<div class="card">
						<!-- 이미지 출력 -->
						<img src="${musical.imageUrl}" class="card-img-top" alt="${musical.title}">
						<div class="card-body">
							<!-- 제목 출력 -->
							<h5 class="card-title">${musical.title}</h5>
							<!-- 추가 설명을 위한 텍스트 -->
							<p class="card-text">
								날짜 : ${musical.date} <br>
								장소 : ${musical.place}
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>