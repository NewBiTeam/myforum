package forums.bsth.mcj.service;

import java.util.List;

import forums.bsth.mcj.entity.User;

public interface UserService {
	void insert(User user);

	List<User> allUsers();

	int count();

	// ��¼��֤
	User yz(User user);

	// ��¼��֤
	User login(User user);

}