/**
 * 
 */
package com.wiare.psc.dao;

import com.wiare.psc.dao.factory.PersistenceDao;
import com.wiare.psc.model.app.security.BitacoraEvento;
import com.wiare.psc.web.constants.BitacoraEventClaves;

/**
 * @author Roberto Olvera
 *
 */
public interface BitacoraDao<Bitacora> extends PersistenceDao<Bitacora>{

	/**
	 * 
	 * Devueve un evento que corresponda con la clave
	 * @param clave Clave del evento a buscar
	 * @return
	 */
	BitacoraEvento findEventoByClave(BitacoraEventClaves clave);
	
}
