package cn.tedu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.service.OnDutyService;
import utils.RemoteUtils;

@Controller
@RequestMapping("/onduty")
public class OnDutyController {
	@Autowired
	private OnDutyService onDudyService;
	
	@RequestMapping("/saveRecords.do")
	public String saveRecords(HttpServletRequest req,HttpServletResponse res) throws Exception{
		req.setCharacterEncoding("utf8");
		String remarks = req.getParameter("remarks").replaceAll("\\s+", "");
//		onDudyService.saveRecords();
		return "";
	}
}
