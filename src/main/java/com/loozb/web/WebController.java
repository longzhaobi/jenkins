package com.loozb.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebController {
	
	@RequestMapping("index")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("content", "这里是测试jenkins持续集成的DEMO，可以改动此处进行测试11");
		return mav;
	}

}
