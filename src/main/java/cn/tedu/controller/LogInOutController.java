package cn.tedu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import utils.RemoteUtils;

@Controller
@RequestMapping("/loginout")
public class LogInOutController {
	@RequestMapping("/login")
	public String login(HttpServletRequest req){
		String ip = RemoteUtils.getIp(req);
		System.out.println("ip:"+ip);
		String remoteMacAddr = RemoteUtils.getRemoteMacAddr(ip);
		System.out.println(remoteMacAddr);
		return "home";
	}
}
