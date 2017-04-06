package kim.yosep.models.dao;

import java.util.List;

import kim.yosep.models.User;

public interface UserDao {

    User getUser( Integer id );
    List<User> getUsers();
    User saveUser( User user);
    void delete(User user);
    void delete(int id);
    User getUserByUserEmail(String email);

}
