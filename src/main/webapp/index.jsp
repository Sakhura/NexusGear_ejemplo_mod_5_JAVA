<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NEXUS GEAR - Gamming Store</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>
<body>
<div class="login-page">
    <div class="login-box">
        <!-- logo -->
        <div class="login-logo">NEXUS GEAR</div>
        <p class="login-sub">Sistema de Gestión Gamming</p>

        <%-- Mensaje de error desde el servlet (c:if con JSTL) --%>
        <c:if test="${not empty error}">
            <div class="alert alert-error">
                <c:out value="${error}"/>
            </div>
        </c:if>

        <%-- Mensaje de Sesion Cerrada --%>
        <c:if test="${not empty param.msg}">
            <c:if test="${param.msg eq 'logout'}">
                <div class="alert">Sesión cerrada correctamente</div>
            </c:if>
        </c:if>
    </div>
</div>
</body>
</html>