<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="en"/>
<fmt:setBundle basename="i18n/messages" />
<head>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>
<jsp:include page="header.jsp"></jsp:include>

<h3><fmt:message key="label.user.role"/></h3>

<jsp:include page="userRoleForm.jsp"></jsp:include>

<h3><fmt:message key="label.role.user.list"/></h3>

<jsp:include page="userRoleList.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>