/**
 * 
 */
package com.wiare.psc.impl.bo;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.robolverap.SystemValues;
import com.wiare.psc.bo.SecurityBo;
import com.wiare.psc.dao.FuncionDao;
import com.wiare.psc.dao.UsuarioDao;
import com.wiare.psc.exceptions.SecurityException;
import com.wiare.psc.model.app.security.Funcion;
import com.wiare.psc.model.app.security.Usuario;
import com.wiare.psc.web.security.ecrypt.SHA256Util;

/**
 * @author jrobolvp
 *
 */
@Service("securityBo")
@Transactional(readOnly = true)
public class SecurityBoImpl implements SecurityBo {
	
	@Autowired
    @Qualifier("usuarioDao")
    UsuarioDao<Usuario> usuarioDao;
	
	@Autowired
    @Qualifier("funcionDao")
    FuncionDao<Funcion> funcionDao;
	

	@Override
	public Boolean validateLogin(String claveUser, String password) throws SecurityException {
		Usuario usr = this.usuarioDao.findBy("clave", claveUser);
		if(usr == null){
			throw new SecurityException("User not found: "+claveUser);
		}
		return SHA256Util.encodeToSha256(password).equals(usr.getContraseña());
	}

	@Override
	public Boolean userCanAccess(Usuario usr, String opcion) {
		Usuario usrAux = usuarioDao.findBy("clave", usr.getClave());
		Set<Funcion> funciones = usrAux.getRol().getFunciones();
		List<Funcion> funcList = new ArrayList<Funcion>(funciones);
		return funcList.contains(this.funcionDao.findBy("url", opcion
				.replaceAll(SystemValues.DEFAULT_SUFIX.toString(), "")
				.replaceAll(SystemValues.DEFAULT_MTTO.toString(), "")));
	}

	@Override
	public String encodePassword(String password) {
		return SHA256Util.encodeToSha256(password);
	}

	@Override
	public String generaToken() {
		SecureRandom random = new SecureRandom();
		byte bytes[] = new byte[20];
		random.nextBytes(bytes);
		String token = bytes.toString();
		return token;
	}
	

}
