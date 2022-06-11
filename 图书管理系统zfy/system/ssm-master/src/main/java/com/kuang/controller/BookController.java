package com.kuang.controller;

import com.kuang.pojo.Books;
import com.kuang.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    //应该是调用了server层
    private BookServiceImpl bookService;

    //查询全部书籍,并返回到一个书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryALLBook();
        model.addAttribute("list",list);
        //一开始以为这里要返回字符串, 后来觉 因不是@RestController
        // 所以要走解析器,so,就走allBook.jsp页面
        return "allBook";
    }

    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }

    @RequestMapping("/addBook")
    //因为Spring是基于反射来对方法进行调用的，在调用这个方法时，
    // 他会检验参数并建议参数类所包含的属性，如果表单里有同名同类则注入
    //====================================
    //不是后台知道前端发来的是Book类型
    // 是我们定义了一个Book类型去接收 如果不匹配会报错的
    public String addBook(Books books){
        System.out.println("===addBook==="+books);
        bookService.addBook(books);
        return "redirect:/book/allBook";//重定向到我们的@RequestMapping("/allBook")请求
    }

    //修改书籍的页面
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("QBook",books);
        return "updateBook";
    }


    //修改书籍
    @RequestMapping("/updatebBook")
    public String upDateBook(Books books){
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    //删除书籍,RestFul风格,比较厉害,且方便了,看前端怎么传的
    @RequestMapping("/deleteBook/{bookId}")
    public String upDateBook(@PathVariable("bookId") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    //查询书籍
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        Books books = bookService.queryBookByName(queryBookName);
        List<Books> list = new ArrayList<Books>();
        list.add(books);
        if (books==null){
            list = bookService.queryALLBook();
            model.addAttribute("error","未查到");
        }

        model.addAttribute("list",list);
        return "allBook";
    }

}
