package com.ganesh.CMS.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ComputerController {

	@RequestMapping(value = "/")
	public String computerList(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		
		return "computerList.jsp";
	}
}
