package aarambh.milk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aarambh.milk.bean.SuplierBean;
import aarambh.milk.dao.SuplierDaoImpl;
import aarambh.milk.dao.SuplierDaoIntf;
import aarambh.milk.entity.SuplierEntity;


@Service("suplierService")
public class SuplierServiceImpl implements SuplierService{

	@Autowired
	SuplierDaoIntf suplierdao;
	
	public void addSuplier(SuplierEntity suplierentity) {
		suplierdao.addSuplier(suplierentity);
	}

	public List<SuplierEntity> listSupliers() {
		return this.suplierdao.listPersons();
	}

	public void deleteSuplier(int id) {
		suplierdao.deleteSuplier(id);
		
	}

	public SuplierEntity getSuplierById(int id) {
		
		return suplierdao.getSuplierById(id);
	}

	public void updateSuplier(SuplierEntity suplierentity) {
		suplierdao.updateSuplier(suplierentity);
	}
	
}
