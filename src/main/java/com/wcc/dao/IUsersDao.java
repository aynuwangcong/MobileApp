package com.wcc.dao;

import com.wcc.beans.User;
import com.wcc.beans.Users;
import com.wcc.page.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUsersDao {
    int insertUsers(Users users);

    int updateUsers(Users users);

    int deleteUsers(String id);

    Users selectUsersById(String id);

    List<Users> selectAllUsers();

    int selectAllUsers1();

    List<Users> selectCurrentPage(Page<Users> page);

    List<Users> selectCompound1(@Param("users") Users users, @Param("pageStartIndex") int pageStartIndex);

}
