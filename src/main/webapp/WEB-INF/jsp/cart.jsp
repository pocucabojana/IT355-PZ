<%-- 
    Document   : header
    Created on : Apr 15, 2017, 5:42:15 AM
    Author     : BojanaPocuca
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>

<script>
    $(document).ready(function () {
        $('#example').DataTable({
            scrollY: '50vh',
            scrollCollapse: true,
            paging: false
        });
    });
</script>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Korpa</h1>
                    <p>Svi selektovani automobili u vasoj korpi</p>
                </div>
            </div>
        </section>

        <section class="container">



            <div>

                <c:if test="${not empty error}"><div class="alert-box error"><span>Error: </span>${error}</div></c:if>
                <a href="${pageContext.request.contextPath}/customer/cart/checkout" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
            </div>

            <br/><br/><br/>

            <table id="example" class="display" cellspacing="0" width="100%">
                <tr>
                    <th>Opcije</th>
                    <th>Lajk</th>
                    <th>Ime</th>
                    <th>Cena jednog dana</th>
                    <th>Kolicina</th>
                    <th>Total</th>
                </tr>
                <c:set var="s" value="0"></c:set>
                <c:forEach var="item" items="${sessionScope.cart}" varStatus="i">
                    <c:set var="s" value="${s + item.product.productPrice * item.qunatity}"></c:set>
                        <tr>
                            <td><a href="${pageContext.request.contextPath}/customer/cart/delete/${i.index}"><span class="glyphicon glyphicon-remove" style="color: red"></span></a></td>
                        <td><a href="${pageContext.request.contextPath}/product/viewProduct/${item.product.productId}"><img src="${item.product.productImage}" alt="image"/></a></td>
                        <td>${item.product.productName}</td>
                        <td>${item.product.productPrice}$</td>
                        <td>${item.qunatity}</td>
                        <td>${item.product.productPrice * item.qunatity}$</td>
                    </tr>
                </c:forEach>
                <tr><td colspan="6" align="right"><b>Sum</b></td>
                    <td>${s}$</td>
                </tr>
            </table>

            <a href="${pageContext.request.contextPath}/product/productList/all" class="btn btn-primary">Nastavi sa kupovinom </a>

        </section>



        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>