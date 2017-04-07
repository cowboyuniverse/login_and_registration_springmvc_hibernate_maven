package kim.yosep.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kim.yosep.model.User;
import kim.yosep.model.dao.UserDao;

@Repository
public class UserDaoImpl implements UserDao{

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public User getUser(Integer id){

        return entityManager.find( User.class, id );
    }

    @Override
    public List<User> getUsers() {

        return entityManager.createQuery("from User order by user_id", User.class)
                .getResultList();
    }

    @Override
    @Transactional
    public User saveUser(User user) {
        return entityManager.merge(user);
    }

    @Override
    public User getUserByUserEmail(String email) {
        String query = "FROM Users WHERE email= :email";
        User user = entityManager.createQuery(query,User.class).setParameter("email", email).getSingleResult();
        return user;
    }
    @Override
    @Transactional
    public void delete( User user ) {

        entityManager.remove( user );
    }

    @Override
    @Transactional
    public void delete(int id){
        User user = entityManager.find( User.class, id );
        entityManager.remove( user );
    }


}
