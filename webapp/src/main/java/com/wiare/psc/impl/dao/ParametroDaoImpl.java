/**
 * 
 */
package com.wiare.psc.impl.dao;

import org.springframework.stereotype.Repository;

import com.wiare.psc.dao.ParametroDao;
import com.wiare.psc.impl.dao.factory.PersistenceAppMainDaoImpl;
import com.wiare.psc.model.app.security.Parametro;

/**
 * @author Roberto Olvera
 *
 */
@Repository("parametroDao")
public class ParametroDaoImpl 
		extends PersistenceAppMainDaoImpl<Parametro> 
		implements ParametroDao<Parametro> {



}
