/**
 * 
 */
package com.wiare.psc.impl.bo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wiare.psc.bo.RolBo;
import com.wiare.psc.dao.BitacoraDao;
import com.wiare.psc.dao.RolDao;
import com.wiare.psc.model.app.security.Bitacora;
import com.wiare.psc.model.app.security.Rol;
import com.wiare.psc.model.app.security.Usuario;
import com.wiare.psc.web.constants.BitacoraEventClaves;

/**
 * @author Roberto Olvera
 *
 */
@Service("rolBo")
@Transactional(readOnly = true)
public class RolBoImpl implements RolBo,Serializable {
	
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = -8917149745218953568L;
	@Autowired
    @Qualifier("rolDao")
    RolDao<Rol> rolDao;
    
	@Autowired
    @Qualifier("bitacoraDao")
	BitacoraDao<Bitacora> bitacoraDao;
  
	@Override
	public Rol findByClave(String clave) {
		return rolDao.findBy("clave", clave);
	}

	@Override
	public List<Rol> findAll() {
		return rolDao.findAll();
	}
	
	@Override
	@Transactional(readOnly = false)
	public void delete(Rol rol,Usuario reg) {
		Bitacora bit = new Bitacora();
		bit.setEvento(bitacoraDao.findEventoByClave(BitacoraEventClaves.DEL_USR));
		bit.setDescripcion(rol.toString());
		bit.setFecReg(new Date());
		bit.setUsuReg(reg);
		this.bitacoraDao.saveOrUpdate(bit);
		rolDao.delete(rol);
	}

	@Override
	@Transactional(readOnly = false)
	public void saveOrUpdate(Rol rol,Usuario reg) {
		Bitacora bit = new Bitacora();
		bit.setDescripcion(rol.toString());
		bit.setFecReg(new Date());
		bit.setUsuReg(reg);
		if(rol.getUsuReg() == null) {
			bit.setEvento(bitacoraDao.findEventoByClave(BitacoraEventClaves.ADD_USR));
			rol.setFecReg(new Date());
			rol.setUsuReg(reg);
		}else {
			bit.setEvento(bitacoraDao.findEventoByClave(BitacoraEventClaves.MOD_USR));
		}
		rol.setFecMod(new Date());
		rol.setUsuMod(reg);
		this.bitacoraDao.saveOrUpdate(bit);
		rolDao.saveOrUpdate(rol);
	}

}
