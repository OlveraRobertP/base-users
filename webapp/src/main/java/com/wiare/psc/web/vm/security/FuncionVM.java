/**
 * 
 */
package com.wiare.psc.web.vm.security;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import com.wiare.psc.bo.FuncionBo;
import com.wiare.psc.model.app.security.Funcion;

/**
 * @author jrobolvp
 *
 */
@ManagedBean(name = "funcionVM")
public class FuncionVM {
	
	@ManagedProperty("#{funcionBo}")
	private FuncionBo funcionBo;
	
	public void setFuncionBo(FuncionBo funcionBo) {
		this.funcionBo = funcionBo;
	}
	
	private List<Funcion> funciones;
	
	public List<Funcion> getFunciones() {
		return funciones;
	}
	
	@PostConstruct
	public void init() {
		this.funciones = this.funcionBo.findAll();
	}

}
