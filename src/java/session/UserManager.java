/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.User;
import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.SessionContext;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Александр
 */
@Stateless
@TransactionManagement(TransactionManagementType.CONTAINER)
public class UserManager {

    @PersistenceContext(unitName = "BookkeepingPU")
    private EntityManager em;

    @EJB
    private UserFacade userFacade;

    @Resource
    private SessionContext context;

    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public User placeUser(String u, String p) {
        try {
            User user = null;
            if (!userFacade.findByUsername(u)) {
                user = addUser(u, p);
            }
            return user;
        } catch (Exception e) {
            context.setRollbackOnly();
            return null;
        }

    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    private User addUser(String u, String p) {

        User user = new User();
        user.setLogin(u);
        user.setPassword(p);

        em.persist(user);
        em.flush();
        return user;
    }

    public void changePass(User user) {        
        userFacade.edit(user);
    }
}
