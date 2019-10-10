/**
 * 
 */
package com.wiare.psc.impl.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wiare.psc.dao.ModuloDao;
import com.wiare.psc.impl.dao.factory.PersistenceAppMainDaoImpl;
import com.wiare.psc.model.app.security.Modulo;
import com.wiare.psc.model.app.security.Usuario;

/**
 * @author Roberto Olvera
 *
 */
@Repository("moduloDao")
public class ModuloDaoImpl 
		extends PersistenceAppMainDaoImpl<Modulo> 
		implements ModuloDao<Modulo> {
	
	@Override
	public List<Modulo> findAll() {
		return this.getSession().createQuery("From Modulo mo order by mo.orden").list();
	}

}
