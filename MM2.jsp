<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<!-- 지도를 표시할 div 입니다 -->
	<div id="map" style="width:30%;height:350px;"></div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b20cc804dc8229511910651cbaf72a3a"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	  mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    }; 

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// 커스텀 오버레이에 표시할 내용입니다     
	// HTML 문자열 또는 Dom Element 입니다 
	var content = '<div class ="label"><span class="left"></span><span class="center">카카오!</span><span class="right"></span></div>';

	// 커스텀 오버레이가 표시될 위치입니다 
	var position = new kakao.maps.LatLng(33.450701, 126.570667);  

	// 커스텀 오버레이를 생성합니다
	var customOverlay = new kakao.maps.CustomOverlay({
	    map: map,
	    position: position,
	    content: content
	}); // 커스텀 오버레이 생성

	// 커스텀 오버레이를 지도에 표시합니다
	customOverlay.setMap(map);
	</script>
</body>
</html>