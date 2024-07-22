package org.pokemon.webapp.service;

import java.util.List;
import org.pokemon.webapp.model.Pokemon;

/**
 *
 * @author Chepe
 */
public interface IPokemonService {

    public List<Pokemon> listarPokemones();

    public void agregarPokemones(Pokemon pokemon);
}
