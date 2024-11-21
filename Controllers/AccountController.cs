using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using dmlog.Models;

namespace dreammatch.Controllers
{
    public class AccountController : Controller
    {
        // Registro de usuario
        [HttpPost]
        public IActionResult Registrar(string nombreUsuario, string gmail, string telefono, string pais, string contraseña)
        {
            try
            {
                Bd.RegistrarUsuario(nombreUsuario, gmail, contraseña);
                ViewBag.Mensaje = "Usuario registrado con éxito.";
                return View("Success");
            }
            catch (Exception ex)
            {
                ViewBag.Error = $"Error al registrar usuario: {ex.Message}";
                return View("Error");
            }
        }

        // Inicio de sesión
        [HttpPost]
        public IActionResult IniciarSesion(string gmail, string contraseña)
        {
            try
            {
                if (Bd.IniciarSesion(gmail, contraseña))
                {
                    // Autenticación exitosa
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ViewBag.Error = "Credenciales inválidas. Intenta de nuevo.";
                    return View("Login");
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = $"Error al iniciar sesión: {ex.Message}";
                return View("Error");
            }
        }

        // Solicitud de recuperación de contraseña
        [HttpPost]
        public IActionResult SolicitarRecuperacion(string gmail)
        {
            try
            {
                // Generar código de recuperación (puede ser aleatorio)
                string codigoRecuperacion = Guid.NewGuid().ToString().Substring(0, 8);
                Bd.SolicitarRecuperacion(gmail, codigoRecuperacion);
                ViewBag.Mensaje = "Código de recuperación enviado a tu correo.";
                return View("RecoveryCodeSent");
            }
            catch (Exception ex)
            {
                ViewBag.Error = $"Error al solicitar recuperación de contraseña: {ex.Message}";
                return View("Error");
            }
        }

        // Validar código de recuperación
        [HttpPost]
        public IActionResult ValidarCodigoRecuperacion(string gmail, string codigoRecuperacion)
        {
            try
            {
                if (Bd.ValidarCodigoRecuperacion(gmail, codigoRecuperacion))
                {
                    ViewBag.Gmail = gmail;
                    return View("ResetPassword");
                }
                else
                {
                    ViewBag.Error = "Código de recuperación inválido o expirado.";
                    return View("Recovery");
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = $"Error al validar el código de recuperación: {ex.Message}";
                return View("Error");
            }
        }

        // Actualizar contraseña
        [HttpPost]
        public IActionResult ActualizarContraseña(string gmail, string nuevaContraseña)
        {
            try
            {
                Bd.ActualizarContraseña(gmail, nuevaContraseña);
                ViewBag.Mensaje = "Contraseña actualizada con éxito.";
                return View("Success");
            }
            catch (Exception ex)
            {
                ViewBag.Error = $"Error al actualizar la contraseña: {ex.Message}";
                return View("Error");
            }
        }
    }
}
