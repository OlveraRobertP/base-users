/**
 * 
 */
package com.wiare.psc.dao;

import java.util.List;

import com.wiare.psc.dao.factory.PersistenceDao;
import com.wiare.psc.model.app.security.Modulo;
import com.wiare.psc.model.app.security.Rol;

/**
 * @author Roberto Olvera
 *
 */
public interface FuncionDao<Funcion> extends PersistenceDao<Funcion>{
	
	/**
	 * Retorna las funciones asociadas a un rol y a un modulos
	 * @param us
	 * @param mod
	 * @return
	 */
	List<com.wiare.psc.model.app.security.Funcion> funcionesByUsuarioByModulo(Rol rol, Modulo mod);

	
}
