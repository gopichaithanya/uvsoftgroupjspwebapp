<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="en"/>
<fmt:setBundle basename="i18n/messages" />

<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
</head>

<jsp:include page="header.jsp"></jsp:include>

<body>
<h3><fmt:message key="label.user.registration.feature"/></h3>
 <jsp:include page="features.jsp"></jsp:include>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
