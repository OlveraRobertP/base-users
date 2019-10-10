/**
 * 
 */
package com.wiare.psc.web.vm.security;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import com.wiare.psc.bo.ModuloBo;
import com.wiare.psc.model.app.security.Modulo;

/**
 * @author jrobolvp
 *
 */
@ManagedBean(name = "moduloVM")
public class ModuloVM {
	
	@ManagedProperty("#{moduloBo}")
	private ModuloBo moduloBo;
	
	public void setModuloBo(ModuloBo moduloBo) {
		this.moduloBo = moduloBo;
	}
	
	private List<Modulo> modulos;
	
	public List<Modulo> getModulos() {
		return modulos;
	}
	
	@PostConstruct
	public void init() {
		this.modulos = this.moduloBo.findAll();
	}

}
