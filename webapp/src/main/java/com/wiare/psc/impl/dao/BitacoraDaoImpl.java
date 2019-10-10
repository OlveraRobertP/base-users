/**
 * 
 */
package com.wiare.psc.impl.dao;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.wiare.psc.dao.BitacoraDao;
import com.wiare.psc.impl.dao.factory.PersistenceAppMainDaoImpl;
import com.wiare.psc.model.app.security.Bitacora;
import com.wiare.psc.model.app.security.BitacoraEvento;
import com.wiare.psc.web.constants.BitacoraEventClaves;

/**
 * @author Roberto Olvera
 *
 */
@Repository("bitacoraDao")
public class BitacoraDaoImpl 
		extends PersistenceAppMainDaoImpl<Bitacora> 
		implements BitacoraDao<Bitacora> {

	@Override
	public BitacoraEvento findEventoByClave(BitacoraEventClaves clave) {
		return (BitacoraEvento) this.getSession()
				.createCriteria(BitacoraEvento.class)
				.add(Restrictions.eq("clave", clave.toString()))
				.uniqueResult();
	}

}
