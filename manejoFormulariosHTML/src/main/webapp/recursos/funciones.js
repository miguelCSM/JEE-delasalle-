function validarForma(forma){
    var usuario =  forma.usuario;
    if(usuario.value == "" || usuario.value == "Escribir usuario"){
        alert("Debe proporcionar un nombre de usuario");
        usuario.focus();
        usuario.select();
        return false;        
    }
    var password = forma.password;
    if(password.value == ""|| password.value.length <5){
        alert("Debe proporcionar una contraseña de al menos 5 caracteres");
        password.focus();
        password.select();
        return false;
    }
    var tecnologias = forma.tecnologia;
    var checkSeleccionado =  false;
    
    for (var i = 0; i<tecnologias.length;i++) {
        if(tecnologias[i].checked){
            checkSeleccionado=true;
        }        
    }
    if(!checkSeleccionado){
        alert("Debe seleccionar al menos una tecnología");
        return false;
    }
    
    var generos =  forma.genero;
    var radioSeleccionado = false;
    
    for (var i = 0; i<generos.length;i++) {
        if(generos[i].checked){
            radioSeleccionado=true;
        }        
    }
    if(!radioSeleccionado){
        alert("Debe seleccionar al menos un genero");
        return false;
    }
    var ocupacion = forma.ocupacion;
    if(ocupacion.value==""){
        alert("Debe seleccionar una ocupación")
        return false;
    }
    
    // Formulario ok
    alert("Formulario válido, enviando datos al servidor");
    return true;
}