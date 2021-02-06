<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   
   <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
   <spring:url var="css" value="/resources/css"/>
   <spring:url var="js" value="/resources/js"/>
   <spring:url var="images" value="/resources/images"/>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shopping - ${title }</title>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">

    <link href="${css}/themes.css" rel="stylesheet">
    
    <!-- Add custom CSS here -->
    <link href="${css}/shop-homepage.css" rel="stylesheet">

	<script>
		window.menu="${title}";
	</script>


</head>

<body>


	<div class="wrapper">
	
	    <!-- navbar start -->
	    <%-- <%@include file="./shared/navbar.jsp" %> --%>
	    <jsp:include page="./shared/navbar.jsp"></jsp:include>
	    <!-- navbar end -->
	
	
		<div class="content">
		
		    <!-- content start -->
		    
		    <c:if test="${userClickedHome == true}">
		   		 <%-- <%@include file="home.jsp" %> --%>
		    	<jsp:include page="home.jsp"></jsp:include>
		    </c:if>
		    <c:if test="${userClickedAbout == true}">
		   		 <%-- <%@include file="home.jsp" %> --%>
		    	<jsp:include page="about.jsp"></jsp:include>
		    </c:if>
		    <c:if test="${userClickedContact == true}">
		   		 <%-- <%@include file="home.jsp" %> --%>
		    	<jsp:include page="contact.jsp"></jsp:include>
		    </c:if>
		    <c:if test="${userClickedProducts == true}">
		   		 <%-- <%@include file="home.jsp" %> --%>
		    	<jsp:include page="listProducts.jsp"></jsp:include>
		    </c:if>
		    
		    <!-- content end -->
		    
	    </div>
	
	    <!-- footer start -->
	    <%-- <%@include file="./shared/footer.jsp" %> --%>
	    <jsp:include page="./shared/footer.jsp"></jsp:include>
	    <!-- footer end -->

	</div>

    <!-- JavaScript -->
    <script src="${js}/jquery-1.10.2.js"></script>
    <script src="${js}/bootstrap.js"></script>
    <script src="${js}/script.js"></script>

</body>

</html>

