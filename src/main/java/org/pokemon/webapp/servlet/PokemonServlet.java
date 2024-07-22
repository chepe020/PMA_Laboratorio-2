package org.pokemon.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import org.pokemon.webapp.model.Pokemon;
import org.pokemon.webapp.service.PokemonService;

/**
 *
 * @author Chepe
 */
@WebServlet("/pokemon-servlet")
@MultipartConfig
public class PokemonServlet extends HttpServlet {

    private PokemonService poservice;

    @Override
    public void init() throws ServletException {
        super.init();
        this.poservice = new PokemonService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Pokemon> pokemon = poservice.listarPokemones();
        req.setAttribute("pokemones", pokemon);
        req.getRequestDispatcher("./pokemon/pokemon-listar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();

        if (path == null || path.equals("/")) {
            agregarpokemon(req, resp);
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }

    public void agregarpokemon(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombrePokemon = req.getParameter("nombrePokemon");
        String descripcionPokemon = req.getParameter("descripcionPokemon");
        String elementoPokemon = req.getParameter("elementoPokemon");
        String regionOrigen = req.getParameter("regionOrigen");

        poservice.agregarPokemones(new Pokemon(nombrePokemon, descripcionPokemon, elementoPokemon,regionOrigen));

        resp.sendRedirect(req.getContextPath() + "/");
    }

}
