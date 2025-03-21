using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using dmlog.Models;

namespace dmlog.Controllers;

public class HomeController : Controller
{   
    private readonly ILogger<HomeController> _logger;
    public HomeController(ILogger<HomeController> logger){_logger = logger;}  
    public IActionResult index(){return View();}
    public IActionResult LogIn(){return View();}
    public IActionResult olvidecontraseña(){return View();}
    public IActionResult registro(string error="")
    {
        ViewBag.MensajeError = error;
        return View();}
    public IActionResult Pruebas(){return View();}
    public IActionResult ResetPassword(){return View();}
    public IActionResult Contacto(){return View();}
    public IActionResult pruebasDisponibles(){return View();}
    

}
