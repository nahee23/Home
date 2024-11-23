<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
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
</head>
<body class="bg-dark">
	<jsp:include page="../Common/Link.jsp" />
	<!-- 공통 링크 -->
	<br>
	<div class="container">
		<h1 class="text-white">Musical_Information</h1>
		<br>
		
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<c:forEach var="musical" items="${musicals}">
				<div class="col">
					<div class="card">
						<!-- 이미지 출력 -->
						<img src="${musical.imageUrl}" class="card-img-top" alt="${musical.title}">
						<div class="card-body">
							<!-- 제목 출력 -->
							<h5 class="card-title">[${musical.ing}]${musical.title}</h5>
							<!-- 추가 설명을 위한 텍스트 -->
							<p class="card-text">
								뮤지컬 상세 정보는 곧 추가될 예정입니다.
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