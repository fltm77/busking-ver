<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, kr.kosta.bus.mapper.*"%>
<%@include file="/common/repairSubMenu.jsp" %>
<%@include file="/common/header.jsp" %> 
<main>
<form action="re-insert.do" method="post" class="form">
<fieldset>
<legend style="text-align: center"><!-- <img alt="icon" src="../resources/img/regi.png" class="formImg"> --> 차량 점검 등록</legend>
	<div class="form-con">
		<ul>
			<li class="hidden-li">
				<input class="hidden" type="text" name="re_code"
					id="re_code" placeholder="re_code">
			</li>
			<li>
				<!-- 버스번호가 select 안에서 보이지 않음 -->
				<select name="re_b_no">
					<c:forEach items="${repairlist}" var="repairlist">
						<option value="${repairlist.re_b_no}">
							버스번호
						</option>
					</c:forEach>
				</select>
				<input type="text" name="re_b_no" id="re_b_no" class="resized-input"
					placeholder="버스번호" value="${repairlist.re_b_no}" style="display: inline; width: 168px">
			</li>
			<li>
				<span>접수날짜</span>
				<input type="date" name="re_date" id="re_date" class="resized-input"
					placeholder="re_date">
			</li>
			<li>
				<span>정비가격</span>
				<input type="text" name="re_cost" id="re_cost" class="resized-input"
					placeholder="가격">
			</li>
			<li>
				<label for="re_breakdown" class="br">정비내역 </label>
				<input type="radio" name="re_breakdown"
					value="차량사고" class="radio">
				차량사고
				<input type="radio" name="re_breakdown"
					value="차량노후" class="radio">
				차량노후
			</li>
			<li>
				<label for="re_state" class="br">정비상태 </label>
				<input type="radio" name="re_state" value="정비접수"  class="radio">
				접수
				<input type="radio" name="re_state" value="정비중"  class="radio">
				수리중
				<input type="radio" name="re_state" value="정비완료"  class="radio">
				수리완료
			</li>
			<li>
				<span>특이사항 
					<textarea rows="10" cols="30" name="re_bigo"></textarea>
				</span>
			</li>
		</ul>
		<div class="btn-wrap">
			<input type="submit" value="확인" class="editBtn formBtn">
			<input type="reset" value="취소" class="editBtn formBtn red">
		</div>
	</div>
	</fieldset>
	</form>
	</main>
</body>

</html>
