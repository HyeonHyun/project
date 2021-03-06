<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" /> 

<link rel="stylesheet" href="<c:url value="${path }/resource/css/event_page2.css"/>" />

<link
   href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
   rel="stylesheet">

<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3bootstrap2.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
   href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3style.css"/>" />

<link rel="stylesheet" href="<c:url value="${path}/resource/css/notice.css"/>" />




</head>
 <body>

		<div class="container">
			<div id="content">

				<article>
					<div class="header01">
					
					</div>
					<h2>이벤트</h2>
					<hr>

					<div class="table-responsive animate-box">
			
			<c:forEach items="${data }" var="arr">
				<div class="small_div">
					<div class="main_img">
						<a href="event_detail?event_no=${arr.event_no}"><img src="<c:url value="${path }/resource/images/${arr.main_img }"/>"></a>
					</div>
					<div class="main_text"><a href="event_detail?event_no=${arr.event_no}">${arr.title }</a></div>
				</div>
				
		</c:forEach>

						
						
					</div>




				<%-- <div class="pag">
					<ul class="pagination">
						<c:if test="${data.startPage>1 }">
							<a href="?nowPage=${startPage-1 }"><span>«</span></a>
						</c:if>
						<c:forEach begin="${data.startPage }" end="${data.endPage }"
							step="1" var="i">
							<c:choose>
								<c:when test="${data.nowPage==i }">[${i }]</c:when>
								<c:otherwise>
									<a href="?nowPage=${i }">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${data.endPage<data.lastPage }">
							<a href="?nowPage=${data.endPage+1 }"> <span>»</span>
							</a>
						</c:if>
					</ul>
				</div> --%>

					<!-- 검색 폼 영역 -->
<!-- 					<li id='liSearchOption'>
						<div>
							<select id='selSearchOption'>
								<option value='A'>제목+내용</option>
								<option value='T'>제목</option>
								<option value='C'>내용</option>
							</select> <input id='txtKeyWord' /> <a href="">검색</a>
						</div>
					</li> -->
				</article>

			</div>
		</div>

       



	
</body>
</html>