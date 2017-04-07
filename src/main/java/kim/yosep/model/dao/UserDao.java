package kim.yosep.model.dao;

import java.util.List;

import kim.yosep.model.User;

public interface UserDao {

    User getUser( Integer id );
    List<User> getUsers();
    User saveUser( User user);
    void delete(User user);
    void delete(int id);
    User getUserByUserEmail(String email);

}
