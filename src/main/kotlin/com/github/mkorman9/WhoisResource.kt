package com.github.mkorman9

import io.quarkus.security.Authenticated
import jakarta.ws.rs.Consumes
import jakarta.ws.rs.GET
import jakarta.ws.rs.Path
import jakarta.ws.rs.Produces
import jakarta.ws.rs.core.Context
import jakarta.ws.rs.core.MediaType
import org.eclipse.microprofile.jwt.JsonWebToken

@Path("/")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(value = [])
class WhoisResource {
    @GET
    @Path("/anonymous")
    fun anonymous() = WhoisResponse("anonymous")

    @GET
    @Path("/secured")
    @Authenticated
    fun authenticated(@Context jwt: JsonWebToken) = WhoisResponse(jwt.subject)
}

data class WhoisResponse(val uid: String)
