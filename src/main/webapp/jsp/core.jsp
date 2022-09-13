<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.MemberBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- c:set var:변수명, value:변수값 -->
<c:set var="varName1" value="홍길동" />
<c:out value="${varName1}" /><br />
<c:set var="varName2" value='<%="홍길동"%>' />
<c:out value="${varName2}" /><br />
<c:set var="varName3" value="${'홍길동'}" />
<c:out value="${varName3}" /><br />
<c:set var="varName4" value="${varName1}" />
<c:out value="${varName4}" /><br />
 
<c:set var="varName5">
<input type="button" name="btn" value="클릭" />
</c:set>
<c:out value="${varName5}" escapeXml="false" /><br />
<c:out value="${varName5}" escapeXml="true" /><br />

<%
	MemberBean mBean = new MemberBean();
	mBean.setName("이순신");
	mBean.setAge(30);
	pageContext.setAttribute("mBean", mBean);
%>
<c:out value ="${mBean.name}" /><br />
<c:out value ="${mBean.age}" /><br />
<c:set target="${mBean}" property="name" value="강감찬" />
<c:set target="${mBean}" property="age" value="50" />
<c:out value ="${mBean.name}" /><br />
<c:out value ="${mBean.age}" /><br />

<c:set var="varName6" value="pageVal" scope="page" />
<c:set var="varName6" value="requestVal" scope="request" />
<c:set var="varName6" value="sessionVal" scope="session" />
<c:set var="varName6" value="applicationVal" scope="application" />
<c:out value="${varName6}" /><br />
<c:out value="${sessionScope.varName6}" /><br />

<c:remove var="varName6" scope="page" /> <!-- page영역의 varName6만 제거 -->

<c:remove var="varName6" /> <!-- 영역을 설정하지 않고 remove하면 모든 영역의 변수가 삭제 -->
<c:out value="${varName6}" /><br />
<c:out value="${sessionScope.varName6}" /><br />

<c:set var="varName6" value="3" />
<c:if test="${varName6>5}">varName6는 5보다 큽니다.</c:if><br />
<c:if test="${!(varName6>5)}">varName6는 5보다 크지 않습니다.</c:if><br />
<c:if test="${varName6<=5}">varName6는 5보다 크지 않습니다</c:if><br />


<c:set var="varName7" value="17" />
<c:choose>
	<c:when test="${varName7<10}">
		열살 미만입니다<br />
	</c:when>
	<c:when test="${varName7<20}">
		스무살 미만입니다<br />
	</c:when>
	<c:when test="${varName7<30}">
		서른살 미만입니다<br />
	</c:when>
	<c:otherwise>
		서른살 이상입니다<br />
	</c:otherwise>
</c:choose>

<%
	List<String> list = new LinkedList();
	list.add("apple");
	list.add("pear");
	list.add("orange");
	list.add("kiwi");
	list.add("banana");
	pageContext.setAttribute("list", list);
%>

<c:forEach var="varName8" items="${list}" varStatus="stat">
	<c:out value="${varName8}" /> : <c:out value="${stat.index}" /> : <c:out value="${stat.count}" /><br />
	<c:out value="${stat.first}" /><br />
	<c:out value="${stat.last}" /><br />
	<c:out value="${stat.current}" /><br />
</c:forEach>
<c:forEach var="i" begin="1" end="1000" step="2">
	<c:out value="${i+=' '}" />
</c:forEach>

${totalStr="apple,pear,orange,kiwi,banana";''}
<br />
<c:forTokens var="varName9" items="${totalStr}" delims="," varStatus="stat">
	<c:out value="${stat.count}" /> : <c:out value="${varName9+=''}" />
</c:forTokens>

<br />
<!-- 
	C태그 URL처리
 -->
 
<c:url var="naver" value="https://www.naver.com" />
<c:out value="${naver}" />

<%-- <c:redirect url="/jsp/otherJsp.jsp" context="/chap10" /> --%>
<%-- <c:redirect url="https//www.naver.com" /> --%>'


<c:redirect url="/jsp/redirectPage.jsp">
	<c:param name="name" value="홍길동" />
	<c:param name="age" value="30" />
</c:redirect>


