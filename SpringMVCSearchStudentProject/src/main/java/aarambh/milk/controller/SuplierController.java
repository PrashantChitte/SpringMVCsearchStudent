package aarambh.milk.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import aarambh.milk.bean.SuplierBean;
import aarambh.milk.entity.SuplierEntity;
import aarambh.milk.service.SuplierService;

@Controller
public class SuplierController {

	@Autowired
	SuplierService suplierservice;
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String callForHomePage() {
		return "home";
	}
	
	
	@RequestMapping(value = "SuplierRegistration", method = RequestMethod.GET)
	public String callForSuplierPage() {
		return "suplier/SuplierRegistration";
	}
	@RequestMapping(value = "addSuplier", method = RequestMethod.POST)
	public String addSuplier(@ModelAttribute("supbean") SuplierBean suplierbean, 
			BindingResult result)
	{
		SuplierEntity suplierentity=prepareModel(suplierbean);
		suplierservice.addSuplier(suplierentity);
		return "suplier/SuplierRegistration";
		
	}
	/*@RequestMapping(value = "/addSupUpdated", method = RequestMethod.POST)
	public String addSupUpdated(@ModelAttribute("supbean") SuplierBean suplierbean, 
			BindingResult result)
	{
		
		SuplierEntity suplierentity=prepareModel(suplierbean);
		suplierservice.updateSuplier(suplierentity);
		return "suplier/DisplayAllSupliers";
		
	}*/
	@RequestMapping(value = "/edit/addSupUpadate", method = RequestMethod.POST)
	public String addSupUpdated(@ModelAttribute("supbean") SuplierBean suplierbean, 
			BindingResult result)
	{
		
		System.out.println("inside");
		SuplierEntity suplierentity=prepareModel(suplierbean);
		suplierservice.addSuplier(suplierentity);
		return "redirect:/ListSuplier";
		
	}
	
	@RequestMapping(value = "DisplayAllSupliers", method = RequestMethod.GET)
	public String displayAllSuplierPage() {
		return "suplier/DisplayAllSupliers";
	}
	@RequestMapping(value = "/ListSuplier", method = RequestMethod.GET)
	public ModelAndView listSuplier() {
		List<SuplierBean>  listofsup = new ArrayList<SuplierBean>();
		listofsup=prepareBean(suplierservice.listSupliers());
		return  new ModelAndView("suplier/DisplayAllSupliers","listSupliers",listofsup);
	}
	@RequestMapping("delete/{id}")
    public String removePerson(@PathVariable("id") int id){
		
        this.suplierservice.deleteSuplier(id);
        return "redirect:/ListSuplier";
    }
	
	@RequestMapping("/edit/{id}")
    public ModelAndView editSuplier(@PathVariable("id") int id,@ModelAttribute("supbean") SuplierBean suplierbean,BindingResult result){
		int flag=1;
    	SuplierBean supbean= prepareSuplierBean(this.suplierservice.getSuplierById(id));
    	System.out.println(supbean);
    	Map<String,Object>model=new HashMap<String, Object>();
       // List<SuplierBean> listofSup=new ArrayList<SuplierBean>();
       // listofSup=prepareBean(this.suplierservice.listSupliers());
        //listofSup.add(supbean);
    	model.put("supbean",supbean);
    	model.put("listSupliers",prepareBean(this.suplierservice.listSupliers()));
    	
        return  new ModelAndView("suplier/DisplayAllSupliers",model);
    }
	private SuplierEntity prepareModel(SuplierBean suplierbean) {
		SuplierEntity suplierentity=new SuplierEntity();
		suplierentity.setSupName(suplierbean.getSupName());
		suplierentity.setMobile(suplierbean.getMobile());
		suplierentity.setGender(suplierbean.getGender());
		suplierentity.setEmail(suplierbean.getEmail());
		suplierentity.setAddress(suplierbean.getAddress());
		suplierentity.setSupId(suplierbean.getSupId());
		return suplierentity;
	}
	
	public List<SuplierBean> prepareBean(List<SuplierEntity> suplierentity) {
		
		List<SuplierBean> beanlist=null;
		if(suplierentity!=null && !suplierentity.isEmpty())
		{
			beanlist=new ArrayList<SuplierBean>();
			SuplierBean supbean=null;
			for (SuplierEntity sEntity: suplierentity) 
			{
				supbean=new SuplierBean();
				supbean.setSupId(sEntity.getSupId());
				supbean.setSupName(sEntity.getSupName());
				supbean.setEmail(sEntity.getEmail());
				supbean.setGender(sEntity.getGender());
				supbean.setMobile(sEntity.getMobile());
				supbean.setAddress(sEntity.getAddress());
				beanlist.add(supbean);
			}
		}
		return beanlist;
	}
	private SuplierBean prepareSuplierBean(SuplierEntity supEntity){
		SuplierBean bean = new SuplierBean();
		bean.setSupId(supEntity.getSupId());
		bean.setSupName(supEntity.getSupName());
		bean.setMobile(supEntity.getMobile());
		bean.setGender(supEntity.getGender());
		bean.setEmail(supEntity.getEmail());
		bean.setAddress(supEntity.getAddress());
		return bean;
	}
}
