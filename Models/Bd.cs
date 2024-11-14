using System;
using System.Data.SqlClient;
using Dapper;

namespace dreammatch;

public class Bd
{   
    private static string _connectionString = @"Server=localhost; DataBase=dreammatch; Trusted_Connection=true;";
/*
    public static void CrearUsuario(Usuario user){
        using (SqlConnection db = new SqlConnection(ConnectionString)){
            string sql = "INSERT INTO Usuario(//NOMBRE DE TUS TABLAS DE LA DB A LAS QUE INSERTAS) VALUES (// PARAMETROS '@nombre´ )";
            db.Execute(sql, new {nombre = user.NombreUsuario});
        }
    }
*/

}