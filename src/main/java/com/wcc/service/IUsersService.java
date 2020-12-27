package com.wcc.service;

import com.wcc.beans.Users;
import com.wcc.page.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUsersService {
    int addUsers(Users users);

    int modifyUsers(Users users);

    int removeUsers(String id);

    Users findUsersById(String id);

    List<Users> findAllUsers();

    List<Users> selectCompound1(@Param("student") Users users, @Param("pageStartIndex") int pageStartIndex);//////////////////

    Page<Users> findCurrentPage(int pagenum);
}
