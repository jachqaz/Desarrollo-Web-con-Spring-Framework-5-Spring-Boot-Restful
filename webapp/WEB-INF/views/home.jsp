<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Bienvenido a Cineapp</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <spring:url value="/resources" var="urlPublic"/>
</head>
<body>
<%--<h1>Lista de Peliculas</h1>--%>
<%--<ul>--%>
<%--    <c:forEach items="${peliculas}" var="pelicula">--%>
<%--        <li>${pelicula}</li>--%>
<%--    </c:forEach>--%>
<%--</ul>--%>
<div class="card">
    <div class="card-header">Tabla de peliculas</div>
    <div class="card-body">
        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Duracion</th>
                <th>Clasificacion</th>
                <th>Genero</th>
                <th>Imagen</th>
                <th>Fecha Estrno</th>
                <th>Estatus</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${peliculas}" var="pelicula">
                <tr>
                    <td>${pelicula.id}</td>
                    <td>${pelicula.titulo}</td>
                    <td>${pelicula.duracion}</td>
                    <td>${pelicula.clasificacion}</td>
                    <td>${pelicula.genero}</td>
                    <td><img src="${urlPublic}/images/${pelicula.imagen}" width="80" height="100"></td>
                    <td><fmt:formatDate value="${pelicula.fechaEstreno}" pattern="dd/MM/yyyy"/></td>
                    <td>
                        <c:choose>
                            <c:when test="${pelicula.estatus=='Activa'}">
                                <span class="label label-success">ACTIVA</span>
                            </c:when>
                            <c:otherwise>
                                <span class="label label-danger">INACTIVA</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
