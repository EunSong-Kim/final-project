<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
<style>
	.table-col-row {
		display:flex;
		display: -webkit-box;
		display: -ms-flexbox;
		overflow-x: auto;
		overflow-y: hidden;
	}
	.table-col-row tbody {
		display:flex;
	}
	.table-col-row th, .table-col-row td{display:block}
	
</style>
</head>
<body>
<c:set var="side" value="item-apply" />
<%@ include file="../common/navbar.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-2 bg-dark mr-3">
				<%@ include file="../common/sidebar.jsp" %>
			</div>
			<div class="col-10">
				<div class="row mb-3">
					<h2>휴가신청/취소</h2>
				</div>
				<hr>
			<form>
				<div class="row mb-3 bg-light p-4">
					<div>
						<label class="form-label"><strong>기준년도</strong></label>
						<select id="year" style="width: 100px">
						</select>
						<label class="form-label"><strong>결재상태</strong></label>
						<select style="width: 100px">
							<option>전체</option>
							<option>대기</option>
							<option>승인</option>
							<option>반려</option>
						</select>
						<label class="form-label"><strong>사원번호</strong></label>
						<input type="text" style="text-align:center; width:100px" />
						<button type="button" class="btn btn-danger" style="float:right;" id="btn-search">검색</button>
					</div>
				</div>
			</form>
			<ul class="nav nav-tabs mb-3">
		 		 <li class="nav-item">
		  		  <a class="nav-link active"><strong>휴가신청</strong></a>
		 		 </li>	
		 	</ul>
			<div class="row mb-3 bg-light">
				<hr>
				<div class="col">
				<p>
					<i class="bi bi-exclamation-circle-fill"></i>
					휴가신청후 결재상태가 "승인"된 경우에만 휴가 사용일수에 "+"가 되고, 잔여일수에 "-"가 됩니다.
				</p>
				</div>
			</div>		
			<div class="row mb-2 bg-light">
				<div style="width:33%;float:left;">
					<table class="table-sm table-col-row">
						<thead>
							<tr class="text-center">
								<th>사원번호</th>
								<th>사용일수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" placeholder="1001" style="text-align:center; width:100px" disabled/></td>
								<td><input type="text" placeholder="1" style="text-align:center; width:100px" disabled/></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div style="width:33%;float:right;">
					<table class="table-sm table-col-row">
						<thead>
							<tr class="text-center">
								<th>성명</th>
								<th>잔여일수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" placeholder="홍길동" style="text-align:center; width:100px" disabled/></td>
								<td><input type="text" placeholder="10" style="text-align:center; width:100px" disabled/></td>
							</tr>
						</tbody>
					</table>	
				</div>	
				<div style="width:33%;float:left;">
					<table class="table-sm table-col-row">
						<thead>
							<tr class="text-center">
								<th>기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" placeholder="2021-01-01" style="text-align:center; width:100px" disabled/>~
								<input type="text" placeholder="2021-12-31" style="text-align:center; width:100px" disabled/>
								</td>
							</tr>
						</tbody>
					</table>								
				</div>
			</div>
			<div class="row">
				<div class="col-3 text-left mb-1">
					<p>
						<i class="bi bi-arrow-right-square-fill text-danger"></i>
						<strong>휴가신청내역</strong>
					</p>
				</div>
			</div>
			<div class="row">
				<table class="table table-bordered table-hover table-striped table-sm">
					<colgroup>
						<col width="5%">
						<col width="10%">
						<col width="7%">
						<col width="10%">
						<col width="10%">
						<col width="7%">
						<col width="10%">
						<col width="*">
					</colgroup>
					<thead>
						<tr class="text-center">
							<th>No</th>
							<th>신청일</th>
							<th>휴가구분</th>
							<th>시작일</th>
							<th>종료일</th>
							<th>일수</th>
							<th>결재상태</th>
							<th>휴가사유</th>
						</tr>
					</thead>
					<tbody>
						<tr class="text-center">
							<td>1</td>
							<td>2022-01-31</td>
							<td>연차</td>
							<td>2022-02-02</td>
							<td>2022-02-03</td>
							<td>2</td>
							<td>승인</td>
							<td>개인사유</td>
						</tr>					
						<tr class="text-center">
							<td>1</td>
							<td>2022-01-31</td>
							<td>연차</td>
							<td>2022-02-02</td>
							<td>2022-02-03</td>
							<td>2</td>
							<td>승인</td>
							<td>개인사유</td>
						</tr>	
						<tr class="text-center">
							<td>1</td>
							<td>2022-01-31</td>
							<td>연차</td>
							<td>2022-02-02</td>
							<td>2022-02-03</td>
							<td>2</td>
							<td>승인</td>
							<td>개인사유</td>
						</tr>																				
					</tbody>
				</table>
			</div>
			<div class="row">
				<div class="col-6 text-left mb-1">
					<p>
						<i class="bi bi-arrow-right-square-fill text-danger"></i>
						<strong>휴가신청/수정/취소</strong>
					</p>
				</div>
				<div class="col-6 mb-1">
						<a href="" class="btn btn-outline-dark btn-sm" style="float:right; margin-right: 4px;" id="">양식다운로드</a>
				</div>
			</div>
			<form method="post" enctype="multipart/form-data">
				<table class="table">
					<tr class="fw-bold">
						<td>휴가신청일 <input type="text" id="currentDate" name="" value="" style="text-align:center; width:100px" disabled/></td>
						<td>휴가기간 <input type="date" id="vacation-start-date" name="" value="2023-02-03" style="text-align:center; width:130px"/>~
								<input type="date" id="vacation-end-date" name="" value="2023-02-03"style="text-align:center; width:130px"/>
								(일수: <input type="text" id="day-count"name="" value="" style="text-align:center; width:40px" disabled/>일)</td>
						</td>
						<td>휴가구분 <select style="width: 80px">
							<option>연차</option>
							<option>병가</option>
							<option>출산휴가</option>
							<option>반차</option>
						</select></td>
						<td>결재상태 <input type="text" placeholder="대기" style="text-align:center; width:70px" disabled/></td>
					</tr>
				</table>
				<table class="table">
					<tr class="fw-bold">
						<td>휴가사유 <input type="text" id="" style="width:500px;"></td>
						<td>첨부파일 <input type="file" id="fileUpload" /></td>
					</tr>
				</table>
			<div class="row mb-2 bg-light m-2">
					<hr>
					<div class="col">
					<p>
						<i class="bi bi-exclamation-circle-fill"></i>
						기존의 휴가신청 내역을 조회/수정/취소를 하고싶다면, 휴가신청내역에서 해당하는 신청정보를 클릭하세요.
					</p>
					<p>
						<i class="bi bi-exclamation-circle-fill"></i>
						결재상태가 이미 "승인"된 휴가신청은 수정 후 결재상태가 "대기"상태로 변경됩니다. <br>
						&nbsp;&nbsp;&nbsp;&nbsp수정하고자 하는 휴가신청의 휴가 시작일이 현재일보다 과거라면 수정할 수 없습니다.
					</p>		
					<p>
						<i class="bi bi-exclamation-circle-fill"></i>
						결재상태가 "대기", "반려"상태인 휴가신청만 삭제할 수 있습니다.
					</p>									
					</div>
			</div>
			<div class="row p-3">
				<div class="col">
					<button type="submit" class="btn btn-dark" style="float:right;" id="">신청</button>
					<a href="" class="btn btn-outline-dark" style="float:right; margin-right: 4px;" id="">수정</a>
					<a href="" class="btn btn-outline-dark" style="float:right; margin-right: 4px;" id="">취소</a>
				</div>
			</div>
			</form>
			</div>	
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
$(function() {
	let now = new Date();
	let now_year = now.getFullYear();
	
	$("#year").append("<option value=''>선택</option>");
	// i는 창립년도
	for (let i = 2010; i <= now_year; i++) {
		$("#year").append("<option value='"+ i +"'>"+ i +"</option>");
	}
	
	$('#currentDate').val(new Date().toISOString().substring(0, 10));
});
</script>
</body>
</html>