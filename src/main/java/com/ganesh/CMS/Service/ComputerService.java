package com.ganesh.CMS.Service;

import java.util.List;

import com.ganesh.CMS.Entity.ComputerEntity;
import com.ganesh.CMS.Entity.UserEntity;

public interface ComputerService {

	
	public List<Object[]> festivalsList() throws Exception;

	public List<Object[]> festivals1List() throws Exception;

	public List<Object[]> dobList() throws Exception;
	
	public List<Object[]> computerList() throws Exception;

	public int saveAddComputer(ComputerEntity computer) throws Exception;

	public int deleteComputer(long id) throws Exception;

	public Object[] getComputerEditData(int id) throws Exception;

	public int updateEditComputer(ComputerEntity computer) throws Exception;

	public List<Object[]> userList() throws Exception;

	public int saveAddUser(UserEntity user) throws Exception;

	public int deleteUser(int id) throws Exception;

	public Object[] getUserEditData(int id) throws Exception;

	public int updateEditUser(UserEntity user) throws Exception;

	public List<Object[]> userDropdownList() throws Exception;

	

}
