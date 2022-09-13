<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>

<!-- request.setCharacterEncoding("utf-8")과 같다 -->
<fmt:requestEncoding value="utf-8" />

<!-- 로케일 설정, request가 유지되면 로케일이 설정된 값으로 유지된다. -->
<fmt:setLocale value="cn" scope="request" />
<fmt:bundle basename="props.message">
	<fmt:message key="GREETING" /><br />
</fmt:bundle>

<fmt:setLocale value="ko" scope="request" />
<fmt:bundle basename="props.message">
	<fmt:message key="GREETING" /><br />
</fmt:bundle>



<fmt:setLocale value="en" scope="request" />
<fmt:bundle basename="props.message">
	<fmt:message key="GREETING" /><br />
</fmt:bundle>

<fmt:setBundle var="message" basename="props.message" />
<fmt:message bundle="${message}" key="GREETING" /><br />

<!-- 
	formatting : 형식 변경, parsing : 내용 변경
 -->
 
<!--  1000000 숫자를 포맷해서 var1에 저장 -->
 <fmt:formatNumber value="1000000" type="number" var="var1" /><br />
 ${var1}<br />
 <fmt:formatNumber value="1000000" type="number" pattern="0,000,000" /><br />
 <fmt:formatNumber value="3.141592" type="number" pattern="0.00" /><br />
 
 <!-- 1,100.12라는 문자열을 패턴에 맞게 타입변환 -->
 <fmt:parseNumber value="1,100.12" pattern="0,000.00" var="num" />
 ${num}<br />
 
 <c:set var="date" value="<%=new java.util.Date() %>" />
 
 <fmt:setLocale value="ko" scope="request" />
 <fmt:formatDate value="${date}" type="date" dateStyle="full" /><br />
 <fmt:formatDate value="${date}" type="date" dateStyle="short" /><br />
 
 <fmt:setLocale value="en" scope="request" />
 <fmt:formatDate value="${date}" type="date" dateStyle="full" /><br />
 <fmt:formatDate value="${date}" type="date" dateStyle="short" /><br />
 
 <fmt:setLocale value="cn" scope="request" />
 <fmt:formatDate value="${date}" type="date" dateStyle="full" /><br />
 <fmt:formatDate value="${date}" type="date" dateStyle="short" /><br />
 
 <fmt:setLocale value="ko" scope="request" />
 <fmt:formatDate value="${date}" type="time" dateStyle="full" /><br />
 <fmt:formatDate value="${date}" type="time" dateStyle="short" /><br />
 <fmt:formatDate value="${date}" type="time" pattern="z a h:mm" /><br />
 
 
 <!-- 문자열로된 날짜/시간데이터를 날짜/시간객체로 변경 -->
 <fmt:parseDate value="2022년 09월 08일 13시 00분 05초" pattern="yyyy년 MM월 dd일 k시 mm분 ss초" var="date2" />
 ${date2}<br />
 <fmt:formatDate value="${date2}" pattern="yyyy년 MM월 dd일 k시 mm분 ss초" /><br />
 
  <c:set var="date3" value="<%=new java.util.Date() %>" />
 
 <!-- timeZone 설정한 태그내에서 timeZone 적용을 받는다 -->
 <fmt:timeZone value="Hongkong">
 	<fmt:formatDate value="${date3}" type="both" dateStyle="full" timeStyle="full" /><br />
 </fmt:timeZone>
 <fmt:timeZone value="Asia/Seoul">
 	<fmt:formatDate value="${date3}" type="both" dateStyle="full" timeStyle="full" /><br />
 </fmt:timeZone>
 
 <!-- settimeZone 설정한 코드 이후로 timeZone 적용을 받는다 -->
 <fmt:setTimeZone value="Asia/Seoul" />
 
 <c:forEach var="id" items="<%=java.util.TimeZone.getAvailableIDs() %>" >
 	${id}<br />
 </c:forEach>
 
 
 
 
 
 
 
 
 
 