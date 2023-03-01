package cn.kgc.ssm.controller;

import cn.kgc.ssm.pojo.BookInfo;
import cn.kgc.ssm.service.BookInfoService;
import cn.kgc.ssm.service.TypeInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class StatisticsController {
    @Autowired
    private BookInfoService bookInfoService;

    @Autowired
    private TypeInfoService typeInfoService;

    @GetMapping("statisticIndex")
    public String statistics(Model model){
        List<BookInfo> list = bookInfoService.getBookCountByType();
        model.addAttribute("list",list);
        return "count/statisticIndex";
    }

}
