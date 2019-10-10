package com.wiare.psc.bo;

import com.wiare.psc.model.app.security.Usuario;

/**
 * @author jrobolvp
 *
 */
public interface LoginBo {

	/**
	 * Coloca el ultimo acceso al usuario.
	 * @param user
	 */
	void setUltimoAcceso(Usuario user);
	
	
}
