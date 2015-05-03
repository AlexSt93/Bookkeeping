/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.User;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Александр
 */
@Stateless
public class UserFacade extends AbstractFacade<User> {

    @PersistenceContext(unitName = "BookkeepingPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UserFacade() {
        super(User.class);
    }

    public boolean findByUsername(String username) {
        Query query = em.createNamedQuery("User.findByLogin");
        query.setParameter("login", username);
        List l = query.getResultList();
        return !l.isEmpty();
    }

    public User findByNamePass(String username, String password) {
        Query query = em.createNamedQuery("User.findByLogPass");
        query.setParameter("login", username);
        query.setParameter("password", password);
        List l = query.getResultList();
        return (User)l.get(0);
    }

}
