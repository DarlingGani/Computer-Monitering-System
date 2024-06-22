package com.ganesh.CMS.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.ganesh.CMS.Entity.ComputerEntity;
import com.ganesh.CMS.Entity.UserEntity;

@Repository
@Transactional
public class ComputerDaoImpl implements ComputerDao {

	@PersistenceContext
	EntityManager em;
	
	public final static String COMPUTERLIST = "SELECT a.computerId, a.computerName, a.userName, a.processor, a.ram, a.rom FROM computer a,computer_user b WHERE a.userName=b.userName AND a.IsActive=1";
	@Override
	public List<Object[]> computerList() throws Exception {
		try {
			Query query = em.createNativeQuery(COMPUTERLIST);
		
			return query.getResultList();
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public final static String ADDCOMPUTER = "INSERT INTO computer (computerName, userName, processor, ram, rom, CreatedDate) VALUES(:computername, :username, :processor, :ram, :rom, :createddate)";
	@Override
	public int saveAddComputer(ComputerEntity computer) throws Exception {
		try {
		Query query = em.createNativeQuery(ADDCOMPUTER);
		query.setParameter("computername", computer.getComputerName());
		query.setParameter("username", computer.getUserName());
		query.setParameter("processor", computer.getProcessor());
		query.setParameter("ram", computer.getRam());
		query.setParameter("rom", computer.getRom());
		query.setParameter("createddate", computer.getCreatedDate());
		
		return query.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public final static String DELETECOMPUTER = "UPDATE computer SET IsActive=0 WHERE computerId = :id";
	@Override
	public int deleteComputer(long id) throws Exception {
		try {
			Query query = em.createNativeQuery(DELETECOMPUTER);
			query.setParameter("id", id);
		
			return query.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public final static String EDITCOMPUTERDATA = "SELECT computerId, computerName, userName, processor, ram, rom FROM computer WHERE computerId =:id";
	@Override
	public Object[] getComputerEditData(int id) throws Exception {
		Query query = em.createNativeQuery(EDITCOMPUTERDATA);
		query.setParameter("id", id);
		return (Object[]) query.getSingleResult();
	}
	
	public final static String UPDATEEDITCOMPUTER = "UPDATE computer SET computerName=:computername, userName=:username, processor=:processor, ram=:ram, rom=:rom, ModifiedDate=:modifieddate WHERE computerId=:id";
	@Override
	public int updateEditComputer(ComputerEntity computer) throws Exception {
		Query query = em.createNativeQuery(UPDATEEDITCOMPUTER);
		query.setParameter("id", computer.getComputerId());
		query.setParameter("computername", computer.getComputerName());
		query.setParameter("username", computer.getUserName());
		query.setParameter("processor", computer.getProcessor());
		query.setParameter("ram", computer.getRam());
		query.setParameter("rom", computer.getRom());
		query.setParameter("modifieddate", computer.getModifiedDate());
		
		return query.executeUpdate();
	}
	
	public final static String USERLIST = "SELECT userId, userName, dateOfBirth, address, gender, dateOfJoin FROM computer_user WHERE IsActive=1";
	@Override
	public List<Object[]> userList() throws Exception {
		Query query = em.createNativeQuery(USERLIST);
		
		return query.getResultList();
	}
	
	public final static String ADDUSER = "INSERT INTO computer_user (userName, dateOfBirth, address, gender, dateOfJoin,CreatedDate) VALUES( :username, :dob, :address, :gender, :doj, :CreatedDate)";
	@Override
	public int saveAddUser(UserEntity user) throws Exception {
		Query query = em.createNativeQuery(ADDUSER);
		query.setParameter("username", user.getUserName());
		
		query.setParameter("dob", user.getDateOfBirth());
		query.setParameter("address", user.getAddress());
		query.setParameter("gender", user.getGender());
		query.setParameter("doj", user.getDateOfJoin());
		query.setParameter("CreatedDate", user.getCreatedDate());
		return query.executeUpdate();
		
		
	}
	
	public final static String DELETEUSER = "UPDATE computer_user SET IsActive=0 WHERE userId=:id";
	@Override
	public int deleteUser(int id) throws Exception {
		Query query = em.createNativeQuery(DELETEUSER);
		query.setParameter("id", id);
		
		return query.executeUpdate();
	}
	
	public final static String EDITUSER = "SELECT userId, userName, dateOfBirth, address, gender, dateOfJoin FROM computer_user WHERE userId=:id";
	@Override
	public Object[] getUserEditData(int id) throws Exception {
		Query query = em.createNativeQuery(EDITUSER);
		query.setParameter("id", id);
		return (Object[]) query.getSingleResult();
	}
	
	public final static String UPDATEUSER = "";
	@Override
	public int updateEditUser(UserEntity user) throws Exception {
		Query query = em.createNativeQuery(UPDATEUSER);
		return 0;
	}
	
	public final static String USERDROPDOWNLIST = "SELECT userId, userName FROM computer_user where IsActive=1";
	@Override
	public List<Object[]> userDropdownList() throws Exception {
		Query query = em.createNativeQuery(USERDROPDOWNLIST);
		
		return query.getResultList();
	}
	
	public final static String NATIONALFESTIVALSLIST = "SELECT festivalId, festivalType, festivalName, festivalDate FROM festivals WHERE festivalType='N' ORDER BY festivalDate";
	@Override
	public List<Object[]> festivalsList() throws Exception {
		Query query = em.createNativeQuery(NATIONALFESTIVALSLIST);
		
		return query.getResultList();
	}
	
	public final static String REAGIONALFESTIVALSLIST = "SELECT festivalId, festivalType, festivalName, festivalDate FROM festivals WHERE festivalType='R' ORDER BY festivalDate";
	@Override
	public List<Object[]> festivals1List() throws Exception {
		Query query = em.createNativeQuery(REAGIONALFESTIVALSLIST);
		
		return query.getResultList();
	}
}
