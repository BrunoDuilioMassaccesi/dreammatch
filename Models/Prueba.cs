public class Prueba
{
    public int PruebaID { get; set; } 
    public int ClubID { get; set; } 
    public DateTime FechaPrueba { get; set; } 
    public string Categoria { get; set; } 
    public int Cupos { get; set; } 
    public int UsuarioID { get; set; } 
    public int IdPRealizadas { get; set; } 
    public int IdPDisponibles { get; set; } 
    public int IdPRecomendadas { get; set; } 
    public int IdPAgendadas { get; set; } 


    public Prueba() { }

   
    public Prueba(
        int pruebaId,
        int clubId,
        DateTime fechaPrueba,
        string categoria,
        int cupos,
        int usuarioId,
        int idPRealizadas,
        int idPDisponibles,
        int idPRecomendadas,
        int idPAgendadas)
    {
        PruebaID = pruebaId;
        ClubID = clubId;
        FechaPrueba = fechaPrueba;
        Categoria = categoria;
        Cupos = cupos;
        UsuarioID = usuarioId;
        IdPRealizadas = idPRealizadas;
        IdPDisponibles = idPDisponibles;
        IdPRecomendadas = idPRecomendadas;
        IdPAgendadas = idPAgendadas;
    }
}