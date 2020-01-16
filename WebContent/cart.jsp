<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link rel="shortcut icon" href="images/truYum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body>
    <header>
    <p class="heading">truYum</p>
    <img src="images/truyum-logo-light.png" /> <nav> <a href="ShowMenuItemListCustomer"
        class="menu">Menu</a> <a href="ShowCart" class="cart">Cart</a> </nav> </header>




    <h1 class="menu-text">Cart</h1>
    <c:if test="${ removeCartItemStatus==true }">
        <h4 class="status2">Item Removed From Cart Successfully</h4>
    </c:if>
    <c:set var="cart" value="${cart }"></c:set>
    <table width="50" cellspacing="9" cellpadding="10" class="cart-table-value">
        <tr>
            <th align="left"><b>Name</b></th>
            <th align="center"><b>Free Delivery</b></th>
            <th align="left"><b>Price</b></th>

        </tr>
        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${ menuItem.getName()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreedelivery()== 'true'}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>


                <td>${ menuItem.getPrice()}</td>



                <td align="center"><a href="RemoveCart?menuItemId=${menuItem.getId()}">Delete</a></td>

            </tr>
        </c:forEach>
        <tr>
            <td></td>
            <th>Total</th>
            <th align="left">Rs.${cart.getTotal()}</th>

        </tr>



    </table>
    <footer>
    <h2 class="footer-text">Copyright &copy; 2019</h2>
    </footer>

</body>
</html>
