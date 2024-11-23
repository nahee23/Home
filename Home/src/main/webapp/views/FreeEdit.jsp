<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판-수정하기</title>
<script type="text/javascript">
    function validateForm(form) {
        if (form.name.value == "") {
            alert("작성자를 입력하세요.");
            form.name.focus();
            return false;
        }
        if (form.title.value == "") {
            alert("제목을 입력하세요.");
            form.title.focus();
            return false;
        }
        if (form.content.value == "") {
            alert("내용을 입력하세요.");
            form.content.focus();
            return false;
        }
    }
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
<jsp:include page="../Common/Link.jsp" />
	<!-- 공통 링크 -->
	<br>
	<main class="container">
<h2>Edit</h2>

<form name="writeFrm" method="post" enctype="multipart/form-data" action="../mvcboard/edit.do" onsubmit="return validateForm(this);">
<input type="hidden" name="idx" value="${ dto.idx }"/>
<input type="hidden" name="prevOfile" value="${ dto.ofile }" />
<input type="hidden" name="prevSfile" value="${ dto.sfile }" />
    
    <br>
<table class="table-border" width="100%">
    <tr>
        <td>작성자</td>
        <td>
            <input type="text" name="name" style="width:150px;" value="${ dto.name }" />
        </td>
    </tr>
    <tr>
        <td>제목</td>
        <td>
            <input type="text" name="title" style="width:90%;" value="${ dto.title }" />
        </td>
    </tr>
    <tr>
        <td>내용</td>
        <td>
            <textarea name="content" style="width:90%;height:100px;">${ dto.content }</textarea>
        </td>
    </tr>
    <tr>
        <td >첨부 파일</td>
        <td>
            <input type="file" name="ofile" class="mt-3" />
            <br><br>
        </td>
    </tr>
    
    <tr>
        <td colspan="2" align="center">
            <button class="btn btn-primary me-md-2" type="submit">작성 완료</button>
            <button class="btn btn-primary me-md-2" type="reset">RESET</button>
            <button class="btn btn-primary me-md-2" type="button" onclick="location.href='../mvcboard/list.do';">
                목록 바로가기
            </button>
        </td>
    </tr>
</table>    
</form>
</main>
</body>
</html>