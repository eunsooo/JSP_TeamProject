<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 - 투숙기간, 객실 선택 | 조선호텔앤리조트</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">

</head>
<body>

	<jsp:include page="../../include/header.jsp" />
	
	<form id="step0Form" name="step0Form" method="post" 
			action="<%=request.getContextPath()%>/step1.do">
			
		<br><br><br><br><br>
		<input type="text" name="resIn" id="resIn" value="0">				
		<input type="text" name="resOut" id="resOut" value="0">
		<input type="text" name="resNight" id="resNight" value="0">				
		<input type="hidden" name="resAdult" id="resAdult" value="0">								
		<input type="hidden" name="resChild" id="resChild" value="0">

		<div id="container" class="container">
		
			<div class="topArea">
				<div class="topInner">
					
					<h2 class="titDep1">Booking</h2>
					<p class="pageGuide">조선호텔앤리조트의 다양하고 감각적인 인테리어와 특별한 여유를
									<br> 느낄 수 있는 객실에서 잊을 수 없는 여행의 경험을 선사합니다.</p>
				</div>
			</div> <!-- class="topArea" -->
			
			<div class="inner">
			
				<ul class="dateSelect">					
					<li class="selectResDate">
						<hr>
						<p class="listTitle" style="display: inline">투숙기간 선택</p>
						<p class="dateText" id="dateText" style="display: inline">
							<span id="resInView">0000.00.00</span>&nbsp;<span id="inYoil">[요일]</span>&nbsp;-&nbsp;
							<span id="resOutView">0000.00.00</span>&nbsp;<span id="outYoil">[요일]</span>&nbsp;|&nbsp;
							<span id="nightResult" >0</span> 박
							<input type="button" onclick="countNight()" value="일수계산">
						</p>
						<button type="button" class="dToggleBtn">V</button><br>
						<div class="dToggleInner">
							<input type="date" id="resIn_val" onchange="viewDate('in');">&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="date" id="resOut_val" onchange="viewDate('out');">
						</div>
						<hr>
					</li>				
				</ul>
				
				<ul class="personSelect">	
					<li class="personCount">
						<p class="listTitle2" style="display: inline">인원 선택</p>
						<p class="countText" id="countText" style="display: inline">
							성인 <div id="resultA" style="display: inline">0</div>명 | 
							어린이 <div id="resultC" style="display: inline">0</div>명
						<button type="button" class="pToggleBtn">V</button><br>
						<div class="pToggleInner" >
							<div class="count">
								<input type="button" onclick="count('minus')" value="-"/>
								성인<div id="result" style="display: inline">0</div>
								<input type="button" onclick="count('plus')" value="+"/>
							</div>
							<div class="count">
								<input type="button" onclick="count2('minus')" value="-"/>
								어린이<div id="result2" style="display: inline">0</div>
								<input type="button" onclick="count2('plus')" value="+"/>
							</div>
						</div>
					</li>
				</ul>
				<input type="submit" value="객실 검색">
				
			</div>
			
		</div>	
		
	</form>
	<script type="text/javascript" src="js/reserve.js"></script>
	<jsp:include page="../../include/footer.jsp" />
	

</body>
</html>