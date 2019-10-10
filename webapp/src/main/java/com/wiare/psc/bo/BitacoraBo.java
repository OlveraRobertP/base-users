/**
 * 
 */
package com.wiare.psc.bo;

import java.util.List;

import com.wiare.psc.model.app.security.Bitacora;
import com.wiare.psc.model.app.security.Usuario;
import com.wiare.psc.web.constants.BitacoraEventClaves;

/**
 * @author Roberto Olvera
 *
 */
public interface BitacoraBo {
	
	/**
	 * Retorna un rol por su clave
	 * @param clave
	 * @return
	 */
	Bitacora findByClave(String clave);

	/**
	 * Devuelve todos los roles
	 * 
	 * @return
	 */
	List<Bitacora> findAll();
	
	/**
	 * Registra en la bitacora del sistema
	 * @param descripcion
	 * @param usu
	 * @param evento
	 * @return Registro generado
	 */
	Bitacora add(String descripcion, Usuario usu, BitacoraEventClaves evento) ;

	/**
	 * Registra en la bitacora del sistema
	 * @param usu
	 * @param evento
	 * @return Registro generado
	 */
	Bitacora add(Usuario usu, BitacoraEventClaves evento);
}
