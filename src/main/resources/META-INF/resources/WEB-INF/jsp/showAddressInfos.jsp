<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="en"/>
<fmt:setBundle basename="i18n/messages" />

<head>
<link href="/css/style.css" rel="stylesheet" type="text/css">
</head>

<jsp:include page="header.jsp"></jsp:include>

<h3><fmt:message key="label.add.addressinfo" /> </h3>

<jsp:include page="addressInfoForm.jsp"></jsp:include>

<h3><fmt:message key="label.user.addressinfo" /></h3>

<jsp:include page="addressInfoList.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>