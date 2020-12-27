package com.wcc.service;

import com.wcc.beans.Users;
import com.wcc.dao.IUsersDao;
import com.wcc.page.Page;

import java.util.List;

public class IUsersServiceImpl implements IUsersService {
    IUsersDao usersDao;
    public void setUsersDao(IUsersDao usersDao) {
        this.usersDao = usersDao;
    }

    @Override
    public int addUsers(Users users) {
        return usersDao.insertUsers(users);
    }

    @Override
    public int modifyUsers(Users users) {
        return usersDao.updateUsers(users);
    }

    @Override
    public int removeUsers(String id) {
        return usersDao.deleteUsers(id);
    }

    @Override
    public Users findUsersById(String id) {
        return usersDao.selectUsersById(id);
    }

    @Override
    public List<Users> findAllUsers() {
        return usersDao.selectAllUsers();
    }


    @Override
    public List<Users> selectCompound1(Users users, int pageStartIndex) {
        return usersDao.selectCompound1(users,pageStartIndex);
    }

    @Override
    public Page<Users> findCurrentPage(int pagenum) {
        Page<Users> page = new Page<>();
        page.setPagenum(pagenum);
        int totalRows = usersDao.selectAllUsers1();
        page.setTotalRows(totalRows);
        List<Users> datas = usersDao.selectCurrentPage(page);
        page.setDatas(datas);
        return page;
    }
}
