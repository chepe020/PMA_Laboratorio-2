package org.pokemon.webapp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author Chepe
 */
@Entity
@Table(name = "Pokemones")
public class Pokemon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long pokemonId;
    private String nombrePokemon;
    private String descripcionPokemon;
    private String elementoPokemon;
    private String regionOrigen;

    public Pokemon() {
    }

    public Pokemon(String nombrePokemon, String descripcionPokemon, String elementoPokemon, String regionOrigen) {
        this.nombrePokemon = nombrePokemon;
        this.descripcionPokemon = descripcionPokemon;
        this.elementoPokemon = elementoPokemon;
        this.regionOrigen = regionOrigen;
    }

    public Pokemon(long pokemonId, String nombrePokemon, String descripcionPokemon, String elementoPokemon, String regionOrigen) {
        this.pokemonId = pokemonId;
        this.nombrePokemon = nombrePokemon;
        this.descripcionPokemon = descripcionPokemon;
        this.elementoPokemon = elementoPokemon;
        this.regionOrigen = regionOrigen;
    }

    public long getPokemonId() {
        return pokemonId;
    }

    public void setPokemonId(long pokemonId) {
        this.pokemonId = pokemonId;
    }

    public String getNombrePokemon() {
        return nombrePokemon;
    }

    public void setNombrePokemon(String nombrePokemon) {
        this.nombrePokemon = nombrePokemon;
    }

    public String getDescripcionPokemon() {
        return descripcionPokemon;
    }

    public void setDescripcionPokemon(String descripcionPokemon) {
        this.descripcionPokemon = descripcionPokemon;
    }

    public String getElementoPokemon() {
        return elementoPokemon;
    }

    public void setElementoPokemon(String elementoPokemon) {
        this.elementoPokemon = elementoPokemon;
    }

    public String getRegionOrigen() {
        return regionOrigen;
    }

    public void setRegionOrigen(String regionOrigen) {
        this.regionOrigen = regionOrigen;
    }

    @Override
    public String toString() {
        return "pokemon{" + "pokemonId=" + pokemonId + ", nombrePokemon=" + nombrePokemon + ", descripcionPokemon=" + descripcionPokemon + ", elementoPokemon=" + elementoPokemon + ", regionOrigen=" + regionOrigen + '}';
    }
    
    
   

}
