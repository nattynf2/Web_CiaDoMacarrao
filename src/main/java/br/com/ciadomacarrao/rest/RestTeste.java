/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ciadomacarrao.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 *
 * @author FAMILIA FREITAS
 */
@Path("/rest")
public class RestTeste {
    
    @GET
    @Path("/test")
    public String getPedido() {
        return "Hello World!";
    }
    
}
