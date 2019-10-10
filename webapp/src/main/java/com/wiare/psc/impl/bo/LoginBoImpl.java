/**
 * 
 */
package com.wiare.psc.impl.bo;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wiare.psc.bo.LoginBo;
import com.wiare.psc.dao.BitacoraDao;
import com.wiare.psc.dao.UsuarioDao;
import com.wiare.psc.model.app.security.Bitacora;
import com.wiare.psc.model.app.security.Usuario;
import com.wiare.psc.web.constants.BitacoraEventClaves;

/**
 * @author jrobolvp
 *
 */
@Service("loginBo")
@Transactional(readOnly = true)
public class LoginBoImpl implements LoginBo {
	
	@Autowired
    @Qualifier("usuarioDao")
    UsuarioDao<Usuario> usuarioDao;
	
	@Autowired
    @Qualifier("bitacoraDao")
	BitacoraDao<Bitacora> bitacoraDao;

	@Override
	@Transactional(readOnly = false)
	public void setUltimoAcceso(Usuario usuario) {
		Bitacora bit = new Bitacora();
		bit.setDescripcion(usuario.toString());
		bit.setFecReg(new Date());
		bit.setUsuReg(usuario);
		bit.setEvento(bitacoraDao.findEventoByClave(BitacoraEventClaves.RESET_PASS_USR));
	
		this.bitacoraDao.saveOrUpdate(bit);
		
		usuario.setUltimoAcceso(new Date());
		usuarioDao.saveOrUpdate(usuario);
	}

}
