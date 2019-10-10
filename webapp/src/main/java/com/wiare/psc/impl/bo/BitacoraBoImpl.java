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

import com.wiare.psc.bo.BitacoraBo;
import com.wiare.psc.dao.BitacoraDao;
import com.wiare.psc.model.app.security.Bitacora;
import com.wiare.psc.model.app.security.Usuario;
import com.wiare.psc.web.constants.BitacoraEventClaves;

/**
 * @author Roberto Olvera
 *
 */
@Service("bitacoraBo")
@Transactional(readOnly = true)
public class BitacoraBoImpl implements BitacoraBo,Serializable {
	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7926098956525574843L;
	
	@Autowired
    @Qualifier("bitacoraDao")
    BitacoraDao<Bitacora> bitacoraDao;
    
  
	@Override
	public Bitacora findByClave(String clave) {
		return bitacoraDao.findBy("clave", clave);
	}

	@Override
	public List<Bitacora> findAll() {
		return bitacoraDao.findAll();
	}
	
	@Override
	@Transactional(readOnly = false)
	public Bitacora add(String descripcion, Usuario usu, BitacoraEventClaves evento) {
		Bitacora bit = new Bitacora();
		bit.setDescripcion(descripcion);
		bit.setFecReg(new Date());
		bit.setUsuReg(usu);
		bit.setEvento(bitacoraDao.findEventoByClave(evento));
		this.bitacoraDao.saveOrUpdate(bit);
		return bit;
	}

	@Override
	@Transactional(readOnly = false)
	public Bitacora add(Usuario usu, BitacoraEventClaves evento) {
		Bitacora bit = new Bitacora();
		bit.setFecReg(new Date());
		bit.setUsuReg(usu);
		bit.setEvento(bitacoraDao.findEventoByClave(evento));
		this.bitacoraDao.saveOrUpdate(bit);
		return bit;
	}

}
