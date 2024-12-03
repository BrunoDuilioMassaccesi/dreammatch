public class Usuario
{
    public int UsuarioID {get; set;}
    public string NombreUsuario {get; set;}
    public string Gmail {get; set;}
    public string Telefono {get; set;}
    public string Pais {get; set;}
    private string Contraseña {get;set;}

    public Usuario(){}
    public Usuario(int idusuario, string nombre, string mail, string telefono, string contraseña){
        UsuarioID = idusuario;
        NombreUsuario = nombre;
        Gmail = mail;
        Telefono = telefono; 
        Contraseña = contraseña;
    }

}