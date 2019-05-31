<%-- 
    Document   : Stream
    Created on : 16-may-2019, 16:28:09
    Author     : MRSADIAD
--%>
<%@page import="modelo.Pelicula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Pelicula pelicula = (Pelicula) session.getAttribute("pelicula");
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
        <title>Preview Pelicula</title>
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
                        <div class="breadcrumbs">
                            <a href="index.jsp">Home</a>
                            <span><%=pelicula.getTitulo()%></span>
                        </div>
                        <div class="content">
                            <div class="row">
                                <div class="col-md-6">
                                    <figure class="movie-poster">
                                        <video width="100%" height="100%" controls autoplay >
                                            <source src="BufferStreamingServlet?video=<%=pelicula.getRutaVid()%>" codecs="avc1.42E01E,mp4a.40.2">    
                                            Tu navegador no soporta el video
                                        </video>
                                    </figure>
                                </div>
                                <div class="col-md-6">
                                    <h2 class="movie-title"><%=pelicula.getTitulo()%></h2>
                                    <div class="movie-summary">                  
                                        <p><%=pelicula.getDescripcion()%></p>
                                    </div>
                                    <ul class="movie-meta">
                                        <li><strong>Valoración:</strong> 
                                            <div class="star-rating" title="Valoracion"><span style="width:<%=pelicula.getValoracion()%>"></span></div>
                                        </li>
                                        <li><strong>Duración:</strong> <%=pelicula.getDuracion()%></li>
                                        <li><strong>Categoría:</strong> <%=pelicula.getCategoria()%></li>
                                        <li><strong>Formato de video:</strong> <%=pelicula.getExtension()%></li>
                                    </ul>                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="site-footer"></footer>
        </div>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/app.js"></script>
    </body>
</html>
