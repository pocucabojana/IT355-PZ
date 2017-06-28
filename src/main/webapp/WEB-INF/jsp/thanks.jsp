<%-- 
    Document   : header
    Created on : Apr 14, 2017, 11:44:02 AM
    Author     : BojanaPocuca
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Hvala Vam!</h1>
                    <p>Vase rentiranje je uspesno zavrseno. Automobil ce Vam biti dostavljen na kucnu adresu u roku od sat vremena.</p>
                    <p>Novac za jednodnevnu rentu ovog automobila dajete pouzecu, a ostatak placate po povracaju.</p>
                    <h2>Kliknite <a href="${pageContext.request.contextPath}/product/productList/all">ovde</a> da nastavite sa pretragom</h2>
                </div>
            </div>
        </section>


        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>
