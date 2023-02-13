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
		    center: new kakao.maps.LatLng(37.49491, 127.0315), // 지도의 중심좌표
		    level: 4 // 지도의 확대 레벨
		};
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		//마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다
		var positions = [
		{
		    content: '<div>농민백암왕순대</div>',
		    latlng: new kakao.maps.LatLng(37.49491, 127.0315)
		},
		{
		    content: '<div>강남불백</div>',
		    latlng: new kakao.maps.LatLng(37.4943264, 127.0315413)
		},
		{
		    content: '<div>중경마라탕</div>',
		    latlng: new kakao.maps.LatLng(37.4955, 127.0315)
		},
		{
		    content: '<div>세광양대창</div>',
		    latlng: new kakao.maps.LatLng(37.49534, 127.032)
		},
		{
		    content: '<div>제주몬트락</div>',
		    latlng: new kakao.maps.LatLng(37.49534, 127.032)
		}
		];
		
		for (var i = 0; i < positions.length; i ++) {
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    map: map, // 마커를 표시할 지도
		    position: positions[i].latlng // 마커의 위치
		});
		
		// 마커에 표시할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    content: positions[i].content // 인포윈도우에 표시할 내용
		});
		
		// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		// 이벤트 리스너로는 클로저를 만들어 등록합니다
		// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		}
		
		//인포윈도우를 표시하는 클로저를 만드는 함수입니다
		function makeOverListener(map, marker, infowindow) {
		return function() {
		    infowindow.open(map, marker);
		};
		}
		
		//인포윈도우를 닫는 클로저를 만드는 함수입니다
		function makeOutListener(infowindow) {
		return function() {
		    infowindow.close();
		};
		}
	</script>
</body>
</html>