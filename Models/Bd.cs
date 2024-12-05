using System;
using System.Data.SqlClient;
using Dapper;

namespace dreammatch
{
    public class Bd
    {
        private static string _connectionString = @"Server=localhost; DataBase=dreammatch; Trusted_Connection=true;";

        // Método para registrar un usuario
        public static void RegistrarUsuario(string nombre, string email, string contraseña, DateTime Nacimiento, string Foto)
        {
            using (var connection = new SqlConnection(_connectionString))
            {
                string query ="INSERT INTO Usuario (NombreUsuario, Gmail, Contraseña, Nacimiento, Foto) VALUES (@pNombreUsuario, @pGmail, @pContraseña, @pNacimiento, @pFoto)";

                connection.Execute(query, new { pNombreUsuario = nombre, pGmail = email, pContraseña = contraseña, pNacimiento=Nacimiento, pFoto = Foto});
            }
        }


        public static bool IniciarSesion(string gmail, string contraseña)
        {
            using (var connection = new SqlConnection(_connectionString))
            {
                string query = @"SELECT COUNT(*) FROM Usuario WHERE Gmail = @Gmail AND Contraseña = @Contraseña";

                // Asegúrate de que la contraseña sea almacenada de manera segura (hashed) en la base de datos.
                int count = connection.ExecuteScalar<int>(query, new { Gmail = gmail, Contraseña = contraseña });
                return count > 0; // Devuelve true si existe el usuario
            }
        }


        public string ValidarCorreo(string gmail)
    {
        string mensaje = "";

                using (var connection = new SqlConnection(_connectionString))        
            {
            string query = "SELECT COUNT(*) FROM Usuario WHERE Gmail = @Gmail";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Gmail", gmail);

            try
            {
                connection.Open();
                int count = (int)command.ExecuteScalar();

                if (count > 0)
                {
                    mensaje = "Se encontró tu mail, ya puedes cambiar tu contraseña.";
                }
                else
                {
                    mensaje = "Mail incorrecto.";
                }
            }
            catch (Exception ex)
            {
                mensaje = "Ocurrió un error: " + ex.Message;
            }
        }

        return mensaje;
    }
    }
        /*
        // Método para solicitar recuperación de contraseña
        public static void SolicitarRecuperacion(string email, string codigoRecuperacion)
        {
            using (var connection = new SqlConnection(_connectionString))
            {
                string query = @"INSERT INTO OlvideMiContraseña (Email, CodigoRecuperacion, FechaSolicitud)
                                 VALUES (@Email, @CodigoRecuperacion, @FechaSolicitud)";

                connection.Execute(query, new { Email = email, CodigoRecuperacion = codigoRecuperacion, FechaSolicitud = DateTime.Now });
            }
        }

        // Método para validar código de recuperación
        public static bool ValidarCodigoRecuperacion(string email, string codigoRecuperacion)
        {
            using (var connection = new SqlConnection(_connectionString))
            {
                string query = @"SELECT COUNT(*) FROM OlvideMiContraseña
                                 WHERE Email = @Email AND CodigoRecuperacion = @CodigoRecuperacion
                                 AND FechaSolicitud >= DATEADD(hour, -1, GETDATE())"; // Validez de 1 hora

                int count = connection.ExecuteScalar<int>(query, new { Email = email, CodigoRecuperacion = codigoRecuperacion });
                return count > 0; // Devuelve true si el código es válido
            }
        }

        // Método para actualizar la contraseña
        public static void ActualizarContraseña(string email, string nuevaContraseña)
        {
            using (var connection = new SqlConnection(_connectionString))
            {
                string query = @"UPDATE Usuario
                                 SET Contraseña = @NuevaContraseña
                                 WHERE Email = @Email";

                connection.Execute(query, new { Email = email, NuevaContraseña = nuevaContraseña });
            }
        }
        */
}