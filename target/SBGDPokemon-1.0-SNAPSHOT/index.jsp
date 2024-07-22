<%-- 
    Document   : index
    Created on : 22/07/2024, 00:25:27
    Author     : Chepe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <title>Pokemon</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="./index-style.css">
    </head>
    <body>
        <img class="image-container" src="${pageContext.request.contextPath}/image/fondo.webp" alt="FondoPagina"/>
        <div>
            <nav class="navbar navbar-dark bg-dark fixed-top">
                <div class="container-fluid">
                    <a class="navbar-brand" href="./index.jsp">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfa_HLU2Fn2kDWPME50YLHfWstKfMt71SH5Q&s" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
                        Pokemon 
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                        <div class="offcanvas-header">
                            <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Menu</h5>
                            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body">
                            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="./index.jsp">Inicio</a>
                                <li class="nav-item">
                                    <a class="nav-link dropdown-toggle" role="button" href="biblioteca-trabajadores/biblioteca-trabajadores.jsp" data-bs-toggle="dropdown" aria-expanded="false">Pokemo</a>
                                    <ul class="dropdown-menu dropdown-menu-dark">
                                        <li><a class="dropdown-item" href="pokemon/pokemon-Agregar.jsp">Agregar Pokemon</a></li>
                                        <li><a class="dropdown-item" href="./pokemon-servlet">Lista de Pokemon</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav> 
        </div>

        <!-- Popup de Bienvenida -->
        <div class="mensaje-bienvenida" id="welcomePopup" >
            <span class="close-btn" id="closePopup">&times;</span>
            <h2>Bienvenido </h2>
            <p>Gracias por visitarnos. Esperamos que disfrute la experiencia</p>
        </div>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var popup = document.getElementById("welcomePopup");
                var closeBtn = document.getElementById("closePopup");

                popup.style.display = "block";

                closeBtn.onclick = function () {
                    popup.style.display = "none";
                }

                window.onclick = function (event) {
                    if (event.target == popup) {
                        popup.style.display = "none";
                    }
                }
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
