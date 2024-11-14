using System;
using System.Data.SqlClient;
using Dapper;

namespace dreammatch;

public class Bd
{

    private static string _connectionString = @"Server=localhost; DataBase=dreammatch; Trusted_Connection=true;";

}