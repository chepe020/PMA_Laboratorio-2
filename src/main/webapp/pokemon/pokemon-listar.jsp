<%-- 
    Document   : pokemon-listar
    Created on : 22/07/2024, 00:42:36
    Author     : Chepe
--%>
<%@page import="org.pokemon.webapp.model.Pokemon"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Pokemon</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <style>

            body {
                background-image: url('./image/fondoLista.png');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center;
            }
        </style>

        <style>
            body {
                color: black;
                padding-top: 80px;
            }
        </style>

    </head>
    <body>
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
                                    <a class="nav-link dropdown-toggle" role="button" href="pokemon-listar.jsp" data-bs-toggle="dropdown" aria-expanded="false">Pokemon</a>
                                    <ul class="dropdown-menu dropdown-menu-dark">
                                        <li><a class="dropdown-item" href="./pokemon/pokemon-Agregar.jsp">Agregar Pokemon</a></li>
                                        <li><a class="dropdown-item" href="./pokemon-servlet">Lista de Pokemon</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav> 
        </div>

        <div>

            <table class="table table-success table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">nombre</th>
                        <th scope="col">Descripcion</th>
                        <th scope="col">Elemento</th>
                        <th scope="col">Region de origen</th>
                    </tr>
                </thead>
                <tbody>
                    <%List<Pokemon> pokemones = (List) request.getAttribute("pokemones");%>
                    <%for (Pokemon pokemon : pokemones) {%>
                    <tr>
                        <th scope="row"><%=pokemon.getPokemonId()%> </th>
                        <th scope="row"><%=pokemon.getNombrePokemon()%> </th>
                        <th scope="row"><%=pokemon.getDescripcionPokemon()%> </th>
                        <th scope="row"><%=pokemon.getElementoPokemon()%> </th>
                        <th scope="row"><%=pokemon.getRegionOrigen()%> </th>
                    </tr>     

                    <%}%>
                </tbody>
            </table>
        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
