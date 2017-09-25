package com.webexp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * 后台接口
 * Created by zh on 2017-09-22.
 */
@Controller
@RequestMapping("/webexp")
public class AjaxRequestApi {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("home");
        return modelAndView;
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public ModelAndView search(@RequestParam("username") String username,
                             @RequestParam("password") String password) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("username");

        List<String> usernames = new ArrayList<>();
        for(int i = 0; i < 10; i++)
            usernames.add("zhangheng" + i);
        modelAndView.addObject("usernames", usernames);
        return modelAndView;
    }
}
