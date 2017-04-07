package kim.yosep.web.controllers;

import kim.yosep.model.Role;
import kim.yosep.model.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import kim.yosep.model.Role;
import kim.yosep.model.User;
import kim.yosep.model.UserAddress;
import kim.yosep.model.dao.UserDao;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
//import kim.yosep.validator.UserValidator;


/**
 * Created by cowboyuniverse on 4/6/17.
 */


@Controller
@SessionAttributes({ "user", "users" })
public class UserController {


    Role role;

    @Autowired
    private UserDao userDao;

//    @Autowired
//    private UserValidator userValidator;

    // List of users
    @RequestMapping("/user/list")
    public String list( ModelMap models ){

        models.put( "users", userDao.getUsers() );
        return "user/list";
    }

    // view all users
    @RequestMapping("/user/view")
    public String view1( @RequestParam Integer id, ModelMap models ){

        models.put( "user", userDao.getUser( id ) );
        return "user/view";
    }

    // User with id number
    @RequestMapping("/user/{id}")
    public String view2( @PathVariable Integer id, ModelMap models ){

        models.put( "user", userDao.getUser( id ) );
        return "user/view";
    }
    //---------------------------------------------------------------------
//	Edit user.(Get)
    @RequestMapping(value = "/user/edit", method = RequestMethod.GET)
    public String edit( @RequestParam Integer id, ModelMap models ){
        models.put("role", role.values());
        models.put( "user", userDao.getUser( id ) );
        models.put( "users", userDao.getUsers() );
        return "user/edit";
    }


    @RequestMapping(value = "/user/edit", method = RequestMethod.POST)
    public String edit( @RequestParam Integer id, @ModelAttribute User user, SessionStatus status,
                        @RequestParam String address1, @RequestParam String address2,
                        @RequestParam String city, @RequestParam String state,
                        @RequestParam String zip, @RequestParam String country,
                        @RequestParam String phoneHome, @RequestParam String phoneWork,
                        @RequestParam String phoneCell,  SessionStatus sessionStatus, ModelMap models) {

        UserAddress userAddress = new UserAddress(address1, address2, city, state, zip,
                country, phoneHome, phoneWork, phoneCell);
        user.setAddress(userAddress);
        models.put("user", user);
        userDao.saveUser(user);
        return "user/view";
    }


//----------------------------------------------------------




    // To add new User (Get)
    @RequestMapping(value = "/user/add", method = RequestMethod.GET)
    public String add( ModelMap models ){

        models.put("role", role.values());
        models.put( "user", new User() );
        models.put( "users", userDao.getUsers() );
        return "user/add";
    }

    //To add new User (Post)
    @RequestMapping(value = "/user/add", method = RequestMethod.POST)
    public String add( @ModelAttribute User user, SessionStatus status,
                       @RequestParam String address1, @RequestParam String address2,
                       @RequestParam String city, @RequestParam String state,
                       @RequestParam String zip, @RequestParam String country,
                       @RequestParam String phoneHome, @RequestParam String phoneWork,
                       @RequestParam String phoneCell,  SessionStatus sessionStatus, ModelMap models) {
        UserAddress userAddress = new UserAddress(address1, address2, city, state, zip,
                country, phoneHome, phoneWork, phoneCell);
        user.setAddress(userAddress);
        models.put("user",  user);
        userDao.saveUser(user);
        status.setComplete();
        return "user/view";
    }


    // Delete User.
    @RequestMapping(value = "/user/delete" )
    public String deleteUser(@RequestParam int id, HttpServletResponse response) {
        User user = userDao.getUser(id);
        userDao.delete(user);
        return "redirect:list.html";
    }


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap models) {

        models.put("user", new User());
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute User user, ModelMap models,
                        HttpSession session) {

        List<User> users = userDao.getUsers();
        for (User validUser : users) {
            if (validUser.getEmail().equals(user.getEmail())
                    && validUser.getPassword().equals(user.getPassword())) {

                session.setAttribute("sessionUser", validUser);
//                switch (validUser.getClass().getSimpleName()) {
//                    case "Student":
//                        return "redirect:/student/home.html";
//                    case "Staff":
//                        return "redirect:/staff/home.html";
//                    case "Administrator":
//                        return "redirect:/administrator/home.html";
//                }
                return "redirect:/user/list";
            }
        }
        return "login";
    }


}
