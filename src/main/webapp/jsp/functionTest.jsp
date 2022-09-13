<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

${str='hello' ; ''}
${str2='<hr />' ; ''}
${fn:length(str)}<br />
${str2}<br />
${fn:escapeXml(str2)}<br />
                                                                                                                                                                                                                                                                              