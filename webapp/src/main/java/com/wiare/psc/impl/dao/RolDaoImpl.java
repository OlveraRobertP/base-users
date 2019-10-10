/**
 * 
 */
package com.wiare.psc.impl.dao;

import org.springframework.stereotype.Repository;

import com.wiare.psc.dao.RolDao;
import com.wiare.psc.impl.dao.factory.PersistenceAppMainDaoImpl;
import com.wiare.psc.model.app.security.Rol;

/**
 * @author Roberto Olvera
 *
 */
@Repository("rolDao")
public class RolDaoImpl 
		extends PersistenceAppMainDaoImpl<Rol> 
		implements RolDao<Rol> {



}
