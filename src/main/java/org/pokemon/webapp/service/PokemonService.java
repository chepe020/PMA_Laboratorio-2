package org.pokemon.webapp.service;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import org.pokemon.webapp.util.JPAUtil;
import java.util.List;
import org.pokemon.webapp.model.Pokemon;

/**
 *
 * @author Chepe
 */
public class PokemonService implements IPokemonService {

    private EntityManager em;

    public PokemonService() {
        this.em = JPAUtil.getEntityManager();
    }

    @Override
    public List<Pokemon> listarPokemones() {
        return em.createQuery("SELECT p FROM Pokemon p", Pokemon.class).getResultList();
    }

    @Override
    public void agregarPokemones(Pokemon pokemon) {
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();
            em.persist(pokemon);//agrgar
            transaction.commit();
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }

            e.printStackTrace();
        }
    }

}
