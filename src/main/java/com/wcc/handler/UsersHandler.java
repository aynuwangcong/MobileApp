package com.wcc.handler;


import com.wcc.beans.Users;
import com.wcc.page.Page;
import com.wcc.service.IUsersService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("users")
public class UsersHandler {
    private IUsersService usersService;
    @RequestMapping("/querystudent")
    public String querystudent(@RequestParam(defaultValue = "1") int pagenum, HttpServletRequest request, HttpServletResponse response){
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        usersService = (IUsersService) ac.getBean("usersService");

        Page<Users> page = usersService.findCurrentPage(pagenum);
        System.out.println("querystudent  pageStartIndex="+page.getPageStartIndex());
        request.getSession().setAttribute("pageStartIndex",page.getPageStartIndex());
        System.out.println("查询用户当前页1");
        for(Users u:page.getDatas()){
            System.out.println(u);
        }
        System.out.println("查询用户当前页2");
        //将list存放到request域中
        request.setAttribute("contactorList", page.getDatas());
        request.setAttribute("page",page);
        request.setAttribute("mainPage", "/jsp1/users_view.jsp");
        System.out.println(page.getDatas().size());
        return "admin";
    }
    @RequestMapping("/compound")
    public ModelAndView doCompound(Users users,@RequestParam("searchType") String searchType,@RequestParam("Text") String Text, Model model, HttpServletRequest request, int pageStartIndex) throws Exception {
        ModelAndView mv = new ModelAndView();
        System.out.println("复合查询-------------------接收到的数据");
        System.out.println("user="+users);

        System.out.println("searchType="+searchType);
        System.out.println("Text="+Text);
        request.setAttribute("Text",Text);
        if(("user_name").equals(searchType)){
            users.setUser_name(Text);
        }else if("department".equals(searchType)){
            users.setDepartment(Text);
        }else if("duty".equals(searchType)){
            users.setDuty(Text);
        }
        System.out.println("最终组合的user="+users);
        request.setAttribute("users1",users);
        System.out.println("pageStartIndex="+pageStartIndex);
        System.out.println("复合查询-------------------接收到的数据");
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        usersService = (IUsersService) ac.getBean("usersService");

        //执行查询业务
        List<Users> list = usersService.selectCompound1(users,pageStartIndex);
        //将list存放到request域中
        request.setAttribute("contactorList", list);
        request.setAttribute("mainPage", "/jsp1/users_view.jsp");
        System.out.println(list.size());

        //设置响应视图
        mv.setViewName("admin");
        return mv;
    }
    @RequestMapping("/delete")
    public ModelAndView doDelete(Model model, HttpServletRequest request) throws Exception {
        ModelAndView mv = new ModelAndView();

        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        usersService = (IUsersService) ac.getBean("usersService");
        //执行删除操作
        String user_id = request.getParameter("user_id");
        usersService.removeUsers(user_id);

        //执行查询业务
        List<Users> list = usersService.findAllUsers();
        //将list存放到request域中
        request.setAttribute("contactorList", list);
        request.setAttribute("mainPage", "/jsp1/users_view.jsp");
        System.out.println(list.size());

        //设置响应视图
        mv.setViewName("admin");
        return mv;
    }
    @RequestMapping("/preAdd")
    public ModelAndView dothird(Model model, HttpServletRequest request) throws Exception {
        ModelAndView mv = new ModelAndView();

        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        usersService = (IUsersService) ac.getBean("usersService");

        //辨别是修改还是添加
        String user_id=null;
        user_id = request.getParameter("user_id");
        Users users = new Users();
        if(user_id!=null){
            users = usersService.findUsersById(user_id);
            request.setAttribute("users",users);
        }

        request.setAttribute("mainPage", "/jsp1/users_add.jsp");
        //设置响应视图
        mv.setViewName("admin");
        return mv;
    }
    @RequestMapping("/add")
    public ModelAndView doAdd(Users users, Model model, HttpServletRequest request) throws Exception {
        ModelAndView mv = new ModelAndView();
        System.out.println("-------------------接收到的数据");
        System.out.println(users);
        System.out.println("-------------------接收到的数据");
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        usersService = (IUsersService) ac.getBean("usersService");

        //判断是添加还是修改
        //获取隐藏字段method的值，并把它转换为int型
        String id="";
        id = request.getParameter("method");
        System.out.println("method="+request.getParameter("method"));
        System.out.println("id="+id);
        if(id=="") {
            int row = usersService.addUsers(users);
            if (row > 0) {
                System.out.println("插入成功");
            } else {
                System.out.println("插入失败");
            }

        }
        else{
            users.setId(Integer.parseInt(request.getParameter("method")));
            System.out.println("要修改的数据----------------"+users);
            int row = usersService.modifyUsers(users);
            if(row>0) {
                System.out.println("修改成功");
            }else{
                System.out.println("修改失败");
            }
        }

        //执行查询业务
        List<Users> list = usersService.findAllUsers();
        //将list存放到request域中
        request.setAttribute("contactorList", list);
        //跳转到查询全部员工页面
        request.setAttribute("mainPage", "/jsp1/users_view.jsp");
        //设置响应视图
        mv.setViewName("admin");
        return mv;
    }

}
