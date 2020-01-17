<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Menu List</title>
<link rel="shortcut icon" href="images/truYum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header>
    <p class="heading">truYum</p>
    <img src="images/truyum-logo-light.png" /> <a class="menu" href="ShowMenuItemListAdmin">
        Menu </a> </header>
    <h1 class="menu-text">Menu Items</h1>

    <table width="50" cellspacing="9" cellpadding="10" class="table-space">
        <tr>
            <th align="left"><b>Name</b></th>
            <th align="center"><b>Price</b></th>
            <th align="center"><b>Active</b></th>
            <th align="center"><b>Date of Launch</b></th>
            <th align="center"><b>Category</b></th>
            <th align="center"><b>Free Delivery</b></th>
            <th align="center"><b>Action</b></th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${ menuItem.getName()}</td>
                <td>Rs. ${ menuItem.getPrice()}</td>

                <td align="center"><c:choose>
                        <c:when test="${menuItem.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td align="center"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy" /></td>

                <td align="center">${ menuItem.getCategory()}</td>

                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreedelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td align="center"><a href="ShowEditMenuItem?menuItemId=${menuItem.getId()}">Edit</a></td>

            </tr>
        </c:forEach>

    </table>
    <footer>
    <h2 class="footer-text">Copyright &copy; 2019</h2>
    </footer>

</body>
</html>