<%-- 
    Document   : pokemon-Agregar
    Created on : 22/07/2024, 00:42:26
    Author     : Chepe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Pokemon</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        
        <style>

            body {
                background-image: url('../image/fondoAgregar.png');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
            }
        </style>

        <style>
            body {
                color: black;
                padding-top: 70px;
            }
        </style>
        
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="../index.jsp">
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
                                <a class="nav-link"  href="../index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link dropdown-toggle" role="button" href="../index.jsp" data-bs-toggle="dropdown" aria-expanded="false">Pokemon</a>
                                <ul class="dropdown-menu dropdown-menu-dark">
                                    <li><a class="dropdown-item" href="pokemon-Agregar.jsp">Agregar Pokemon</a></a></li>
                                    <li><a class="dropdown-item" href="../pokemon-servlet">Lista de Pokemon</a></a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>


        <div class="mt-3" >
            <form id="contactForm" action="/SBGDPokemon/pokemon-servlet" method="post" enctype="multipart/for-data">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="nombrePokemon" name="nombrePokemon" placeholder="" >
                    <label for="nombrePokemon">Nombre del pokemom</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="descripcionPokemon" name="descripcionPokemon" placeholder="">
                    <label for="descripcionPokemon">descripcion del Pokemon</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="elementoPokemon" name="elementoPokemon" placeholder="">
                    <label for="elementoPokemon">elemento del Pokemon</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="regionOrigen" name="regionOrigen" placeholder="">
                    <label for="regionOrigen">region de Origen del pokemon</label>
                </div>                

                <div>
                    <input type="submit" class="btn btn-dark" value="agregar">
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
