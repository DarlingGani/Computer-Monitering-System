package com.ganesh.CMS.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ganesh.CMS.Dao.ComputerDao;
import com.ganesh.CMS.Entity.ComputerEntity;
import com.ganesh.CMS.Entity.UserEntity;

@Service
public class ComputerServiceImpl implements ComputerService {

	@Autowired
	ComputerDao dao;
	
	@Override
	public List<Object[]> computerList() throws Exception {
		
		return dao.computerList();
	}
	
	@Override
	public int saveAddComputer(ComputerEntity computer) throws Exception {
		
		return dao.saveAddComputer(computer);
	}
	
	@Override
	public int deleteComputer(long id) throws Exception {
		
		return dao.deleteComputer(id);
	}
	
	@Override
	public Object[] getComputerEditData(int id) throws Exception {
		
		return dao.getComputerEditData(id);
	}
	
	@Override
	public int updateEditComputer(ComputerEntity computer) throws Exception {
		
		return dao.updateEditComputer(computer);
	}
	@Override
	public List<Object[]> userList() throws Exception {
		
		return dao.userList();
	}
	
	@Override
	public int saveAddUser(UserEntity user) throws Exception {
		
		return dao.saveAddUser(user);
	}
	
	@Override
	public int deleteUser(int id) throws Exception {
		
		return dao.deleteUser(id);
	}
	
	@Override
	public Object[] getUserEditData(int id) throws Exception {
		
		return dao.getUserEditData(id);
	}
	
	@Override
	public int updateEditUser(UserEntity user) throws Exception {
		
		return dao.updateEditUser(user);
	}
}
