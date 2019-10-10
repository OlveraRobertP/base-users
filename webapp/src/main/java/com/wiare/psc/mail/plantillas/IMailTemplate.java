/**
 * 
 */
package com.wiare.psc.mail.plantillas;

import com.wiare.psc.mail.MailInfo;

/**
 * @author jrolvera
 * 
 */
public interface IMailTemplate {
    /**
     * Obtiene la informacion necesaria para el envio de correo de colaboracion
     * 
     * @return La informacion del correo a enviar
     */
    MailInfo getTemplate();
    
  
    
}