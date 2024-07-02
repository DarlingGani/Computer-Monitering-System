package com.ganesh.CMS.Controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ganesh.CMS.Entity.ComputerEntity;
import com.ganesh.CMS.Entity.UserEntity;
import com.ganesh.CMS.Service.ComputerService;

@Controller
public class ComputerController {

	@Autowired
	ComputerService service;
	
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	LocalDateTime now = LocalDateTime.now();
	
	@RequestMapping(value = {"Dashboard.htm"})
	public String dashboard(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			List<Object[]> festList = service.festivalsList();
			//List<Object[]> fest1List = service.festivals1List();
			
			req.setAttribute("festList", festList);
			req.setAttribute("fest1List", service.festivals1List());
			req.setAttribute("dobList", service.dobList());
			
			return "dashboard";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	@RequestMapping(value = "/")
	public String computerList(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			List<Object[]> list = service.computerList();
			req.setAttribute("jspList", list);
			
			return "computerList";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "AddComputer.htm")
	public String addComputer(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			List<Object[]> userList = service.userDropdownList();
			req.setAttribute("userDropdownList", userList);
			
			return "addComputer";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "SaveAddComputer.htm")
	public String saveAddComputer(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			ComputerEntity computer = new ComputerEntity();
			
			computer.setComputerName(req.getParameter("computername"));
			computer.setUserName(req.getParameter("username"));
			computer.setProcessor(req.getParameter("processor"));
			computer.setRam(req.getParameter("ram"));
			computer.setRom(req.getParameter("rom"));
			computer.setCreatedDate(dtf.format(now));
			int save = service.saveAddComputer(computer);
			
			if(save>0) {
				redir.addAttribute("success", "Computer Data Added Successfully ...!");
			}else {
				redir.addAttribute("successfail", "Computer Data Added Unsuccessful ...!");
			}
			return "redirect:/ComputerList.htm";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "ComputerList.htm")
	public String backComputerList(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			List<Object[]> list = service.computerList();
			req.setAttribute("jspList", list);
			
			return "computerList";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
		
	}
	
	@RequestMapping(value = "EditComputer.htm")
	public String editComputer(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			//String id = req.getParameter("id");
			Object[] computerEditData = service.getComputerEditData(Integer.parseInt(req.getParameter("id")));
			req.setAttribute("computerEditData", computerEditData);
			return "editComputer";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "UpdateEditComputer.htm")
	public String updateEditComputer(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			ComputerEntity computer = new ComputerEntity();
			System.out.println(req.getParameter("id"));
			computer.setComputerId(Integer.parseInt(req.getParameter("id")));
			computer.setComputerName(req.getParameter("computername"));
			computer.setUserName(req.getParameter("username"));
			computer.setProcessor(req.getParameter("processor"));
			computer.setRam(req.getParameter("ram"));
			computer.setRom(req.getParameter("rom"));
			computer.setModifiedDate(dtf.format(now));
			int updateComputer = service.updateEditComputer(computer);
			return "redirect:/ComputerList.htm";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	@RequestMapping(value = "DeleteComputer.htm")
	public String deleteComputer(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			int delete = service.deleteComputer(Integer.parseInt(req.getParameter("id")));
			
			return "redirect:/ComputerList.htm";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "MasterDashboard.htm")
	public String masterDashboard(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			
			return "masterDashboard";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "UserList.htm")
	public String userList(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			List<Object[]> list = service.userList();
			req.setAttribute("jspList", list);
			
			return "userList";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "AddUser.htm")
	public String addUser(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			
			return "addUser";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "SaveAddUser.htm")
	public String saveAddUser(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			UserEntity user = new UserEntity();
			user.setUserName(req.getParameter("username"));
			user.setDateOfBirth(req.getParameter("dob"));
			user.setAddress(req.getParameter("address"));
			user.setGender(req.getParameter("gender"));
			user.setDateOfJoin(req.getParameter("doj"));
			user.setCreatedDate(dtf.format(now));
			int saveUser = service.saveAddUser(user);
			return "redirect:/UserList.htm";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "DeleteUser.htm")
	public String deleteUser(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			String userId = req.getParameter("id");
			int delete = service.deleteUser(Integer.parseInt(userId));
			return "redirect:/UserList.htm";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "EditUser.htm")
	public String editUser(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			Object[] userData = service.getUserEditData(Integer.parseInt(req.getParameter("id")));
			req.setAttribute("userData", userData);
			
			return "editUser";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "SaveEditUser.htm")
	public String updateEditUser(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			UserEntity user = new UserEntity();
			user.setUserId(Integer.parseInt(req.getParameter("id")));
			user.setUserName(req.getParameter("username"));
			user.setGender(req.getParameter("gender"));
			user.setAddress(req.getParameter("address"));
			user.setDateOfBirth(req.getParameter("dob"));
			user.setDateOfJoin(req.getParameter("doj"));
			user.setModifiedDate(dtf.format(now));
			int updateUser = service.updateEditUser(user);
			return "redirect:/UserList.htm";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
	
	@RequestMapping(value = "UserDropdownList.htm")
	public String userDropdownList(HttpServletRequest req, HttpServletResponse resp, RedirectAttributes redir) throws Exception {
		try {
			List<Object[]> userList = service.userDropdownList();
			req.setAttribute("userDropdownList", userList);
			
			return "";
		}catch (Exception e) {
			e.printStackTrace();
			return "null";
		}
	}
}
