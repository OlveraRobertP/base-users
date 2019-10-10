/**
 * 
 */
package com.wiare.psc.bo;

import java.util.List;

import com.wiare.psc.model.app.security.Modulo;

/**
 * @author Roberto Olvera
 *
 */
public interface ModuloBo {
	
	/**
	 * Retorna un modulo por su clave
	 * @param clave
	 * @return
	 */
	Modulo findByClave(String clave);

	/**
	 * Devuelve todos los modulo
	 * 
	 * @return
	 */
	List<Modulo> findAll();
}
