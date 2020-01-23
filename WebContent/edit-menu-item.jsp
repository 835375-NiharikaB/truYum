<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Menu List</title>
<link rel="shortcut icon" href="images/truYum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
    <c:set var="menuItem" value="${menuItem}">
    </c:set>
    <header>
    <p class="heading">truYum</p>
    <img src="images/truyum-logo-light.png" /> <a class="menu" href="ShowMenuItemListAdmin">
        Menu</a> </header>
    <h1 class="menu-text">Edit Menu Item</h1>

    <form action="EditMenuItem" method="post" name="menuItemForm"
        onsubmit="return validateMenuItemForm()">
        <table cellspacing=8 class="form">
            <tr>
               <td> <input type="hidden" name="id" value="${menuItem.getId()}"></td>
            </tr>
            <tr>
                <td><label for="name"><b>Name<b></label></td>
            </tr>
            <tr>
                <td colspan="8"><input id="name" type="text" name="name"
                    value="${menuItem.getName()}" autofocus size=142 autocomplete="off"
                    placeholder="Sandwich" spellcheck="false"></td>
            </tr>

            <tr>
                <td><label for="price"><b>Price(Rs.)<b></label></td>
                <td><label> <b>Active</b></label></td>
                <td><label> <b>Date of Launch</b></label></td>
                <td><label> <b>Category</b></label></td>
            </tr>

            <tr>
                <td><input id="price" type="text" name="price" value="${menuItem.getPrice()}"
                    autofocus autocomplete="off" spellcheck="false" placeholder="97"></td>


                <td><c:choose>
                        <c:when test="${menuItem.isActive()==true }">
                            <input type="radio" value="Yes" name="active" checked="checked" />Yes
                <input type="radio" value="No" name="active" />No
                </c:when>
                        <c:otherwise>
                            <input type="radio" value="Yes" name="active" />Yes
                <input type="radio" value="No" name="active" checked="checked" />No</c:otherwise>
                    </c:choose></td>


                <f:formatDate value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                    var="dateOfLaunch" />
                <td><input id="date" type="text" name="dateOfLaunch" value="${dateOfLaunch }"
                    autofocus size=20 autocomplete="off" placeholder="27/04/2022" spellcheck="false"></td>

                <td><select name="category">

                        <option value="${menuItem.getCategory()}">${menuItem.getCategory()}
                        </option>

                        <option value="Starters">Starters</option>
                        <option value="Main Course">Main Course</option>
                        <option value="Desserts">Desserts</option>
                        <option value="Drinks">Drinks</option>
                </select></td>
            </tr>

            <tr>
                <td><c:choose>
                        <c:when test="${menuItem.isFreedelivery()==true }">

                            <input type="checkbox" name="freeDelivery" value="Yes" checked="checked" />
                            <b>Free Delivery</b>
                        </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="freeDelivery" value="No">
                            <b>Free Delivery</b>
                        </c:otherwise>
                    </c:choose></td>

            </tr>

            <tr>
                <td><input type="submit" value="Save" name="submit" class="button" /></td>
            </tr>
        </table>


    </form>




    <footer>
    <h2 class="footer-text">Copyright &copy; 2019</h2>
    </footer>

</body>
</html>