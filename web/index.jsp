<%-- 
    Document   : StreamJSP
    Created on : 08-may-2019, 15:45:16
    Author     : MRSADIAD
--%>
<%@page import="modelo.Pelicula"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.AccesoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    AccesoDAO acceso = new AccesoDAO();
    ArrayList<Pelicula> listaPeliculas = acceso.getListaPeliculas();
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
        <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
        <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="Style/style.css">

        <title>Galeria Películas</title>
    </head>
    <body>
        <div id="site-content">
            <header class="site-header">
                <div class="container">
                    <a href="index.jsp" id="branding">
                        <img src="imagenes/logo.png" alt="logo" class="logo">
                        <div class="logo-copy">
                            <h1 class="site-title">Galeria Películas</h1>
                            <small class="site-description">Por Adrián Sánchez Díaz</small>
                        </div>
                    </a>
                </div>
            </header>
            <main class="main-content">
                <div class="container">
                    <div class="page"> 
                        <div class="slider">
                            <ul class="slides">
                                <%
                                    for (Pelicula pelicula : listaPeliculas) {
                                %>
                                <li>
                                    <a href="ServletEnvio?id=<%=pelicula.getId()%>" title="<%=pelicula.getTitulo()%>">
                                        <img src="<%=pelicula.getRutaSlider()%>" alt="<%=pelicula.getTitulo()%>">
                                        <div class="centrado">
                                            <label><%=pelicula.getTitulo()%></label>
                                        </div>
                                    </a>
                                </li>
                                <%
                                    }
                                %>
                            </ul>
                        </div>
                        <div class="breadcrumbs">		
                            <span>Lista completa de películas:</span>
                        </div>
                        <div class="movie-list">
                            <%
                                for (Pelicula pelicula : listaPeliculas) {
                            %>
                            <div class="movie" title="<%=pelicula.getTitulo()%>">
                                <figure class="movie-poster"><a href="ServletEnvio?id=<%=pelicula.getId()%>"><img src="<%=pelicula.getRutaImg()%>" alt="<%=pelicula.getTitulo()%>"></a></figure>
                                <div class="movie-title"><a href="ServletEnvio?id=<%=pelicula.getId()%>"><%=pelicula.getTitulo()%></a></div>                              
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="site-footer"> </footer>
        </div>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/app.js"></script>
    </body>

</html>