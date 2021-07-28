package edu.infnet.web.student;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/calculadora")
public class StudentResource {

    @GET
    @Produces(MediaType.TEXT_PLAIN)
    @Path("/soma")
    public String soma() {
        int soma = 10 + 20;
        return "A soma é: " + soma;
    }

    @GET
    @Produces(MediaType.TEXT_PLAIN)
    @Path("/multiplicacao")
    public String multi() {
        int multi = 10 * 20;
        return "A multiplicacao é: " + multi;
    }
}