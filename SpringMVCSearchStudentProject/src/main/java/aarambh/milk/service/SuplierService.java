package aarambh.milk.service;

import java.util.List;
import aarambh.milk.bean.SuplierBean;
import aarambh.milk.entity.SuplierEntity;

public interface SuplierService {

	public void addSuplier(SuplierEntity suplierentity);
	public List<SuplierEntity> listSupliers();
	public void deleteSuplier(int id);
	public SuplierEntity getSuplierById(int id);
	public void updateSuplier(SuplierEntity suplierentity);
	
}
