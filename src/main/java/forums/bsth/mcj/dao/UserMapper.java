package forums.bsth.mcj.dao;

import java.util.List;

import forums.bsth.mcj.entity.User;

public interface UserMapper {
    void add(User user);
    
    List<User> all();
    
    int count();
    
    //��¼��֤
    User login(User user);
    
    // ��¼��֤
    User yz(User user);
}