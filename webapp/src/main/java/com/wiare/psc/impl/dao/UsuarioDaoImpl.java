/**
 * 
 */
package com.wiare.psc.impl.dao;

import org.springframework.stereotype.Repository;

import com.wiare.psc.dao.UsuarioDao;
import com.wiare.psc.impl.dao.factory.PersistenceAppMainDaoImpl;
import com.wiare.psc.model.app.security.Usuario;

/**
 * @author Roberto Olvera
 *
 */
@Repository("usuarioDao")
public class UsuarioDaoImpl 
		extends PersistenceAppMainDaoImpl<Usuario> 
		implements UsuarioDao<Usuario> {



}
