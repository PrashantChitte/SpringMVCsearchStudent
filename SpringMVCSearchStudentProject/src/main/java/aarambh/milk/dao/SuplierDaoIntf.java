package aarambh.milk.dao;

import java.util.List;


import aarambh.milk.bean.SuplierBean;
import aarambh.milk.entity.SuplierEntity;
import aarambh.milk.service.SuplierServiceImpl;

public interface SuplierDaoIntf {
	public void addSuplier(SuplierEntity suplierentity);

	public List<SuplierEntity> listPersons();
	public void deleteSuplier(int id);
	public SuplierEntity getSuplierById(int id);
	public void updateSuplier(SuplierEntity suplierentity);
}
