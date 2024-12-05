// Please see documentation at https://learn.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.

function validarEmail() {
    let email = document.getElementById("username"); 
    let mensajeError = document.getElementById("mensajeError"); 

    if (!email.value.includes("@")) {
        mensajeError.innerHTML = "El correo electrónico debe contener el signo @";
        return false; 
    }

    mensajeError.innerHTML = "";
    return true; 
}

function validarLongitud()
{
    let contrasena= document.getElementById("password").value;
    let mensajeError = document.getElementById("mensajeErro"); 
   
    if(contrasena.length >= 8)
    {
        
        mensajeError.innerHTML = "";
        return true;
    }
    else{
        
        mensajeError.innerHTML = "La contraseña al menos debe contener una longitud de 8 caracteres";
        return false;
    }
}

