package com.accp.spring.controller;

import com.accp.spring.domain.Bill;
import com.accp.spring.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;


@Controller

public class BillController {
    protected static Logger logger=LoggerFactory.getLogger(BillController.class);
/*    private final static Logger logger = LoggerFactory.getLogger(Example.class);*/
    @Autowired
    private BillService billservice;


    @Value("${Bill.billno}")
    private String billno;
    @Value("${Bill.suppliername}")
    private String suppliername;

    @ResponseBody
    @RequestMapping("/value")
    public Object value(){
         logger.debug("访问hello");
         return "this is name"+billno;
    }
    @RequestMapping("/init")
    public Object init(Model model){
        System.out.println("........");
        List<Bill> bill=this.billservice.selectByAll();
        model.addAttribute("User",bill);
        logger.debug("访问");
        return "member";
    }
    @RequestMapping(value = "user",method = RequestMethod.GET)
    public Object user(){
        return "userinsert";
    }
    @RequestMapping(value = "sayhello",method =RequestMethod.POST)
    public Object sayhello(Bill bill,Model model){
        System.out.println(bill.getSupplieraddress()+"\t"+bill.getSuppliername());
         model.addAttribute("Bill",bill);
        return "userresutl";
    }
    @RequestMapping("/indexs")
    public ModelAndView indexs(){
        ModelAndView modelAndView = new ModelAndView("/index");
       /* modelAndView.addObject("learnList", learnList);*/
        return modelAndView;
    }

    @RequestMapping("/hsg")
    public String hsg(){
        System.out.println("hsg.......");
        return "index";
    }
    @ResponseBody
    @RequestMapping("/index")
    public Object index(){
        System.out.println("...index");
    Bill bill=this.billservice.selectByOne();
        System.out.println(bill.getDepartment());
        logger.trace("日志输出 trace");
        logger.debug("日志输出 debug");
        logger.info("日志输出 info");
        logger.warn("日志输出 warn");
        logger.error("日志输出 error");
        logger.debug("访问");
      return bill;
        }

        }
