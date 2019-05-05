<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="en"/>
<fmt:setBundle basename="i18n/messages" />
<jsp:include page="header.jsp"></jsp:include>

<head>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>

<h3><fmt:message key="label.user.registration" /></h3>

<jsp:include page="userRegistrationForm.jsp"></jsp:include>

<h3><fmt:message key="label.registred.user.list"/></h3>

<jsp:include page="userRegistrationList.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>