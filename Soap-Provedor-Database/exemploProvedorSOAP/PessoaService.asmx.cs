using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;

namespace exemploProvedorSOAP
{
    /// <summary>
    /// Descrição resumida de PessoaService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que esse serviço da web seja chamado a partir do script, usando ASP.NET AJAX, remova os comentários da linha a seguir. 
    // [System.Web.Script.Services.ScriptService]
    public class PessoaService : System.Web.Services.WebService
    {

        private const string ConnectionString =
                "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Competencias\\exemploProvedorSOAP\\exemploProvedorSOAP\\App_Data\\BancoTesteSoap.mdf;Integrated Security=True;";

        [WebMethod]
        public List<Pessoa> BuscaPessoas()
        {
            const string sqlcmd = "SELECT * FROM Pessoas WHERE 1 = 1 ORDER by Nome";

            List<Pessoa> ListaPessoas = new List<Pessoa>();
            using (SqlConnection conexao = new SqlConnection(ConnectionString))
            {
                try
                {
                    conexao.Open();
                    using (SqlCommand sqlcommand = new SqlCommand(sqlcmd, conexao))
                    {
                        using (SqlDataReader reader = sqlcommand.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Pessoa pessoas = ReaderPessoa(reader);
                                ListaPessoas.Add(pessoas);
                            }
                        }
                    }
                }
                catch (SqlException ex)
                {
                    Console.WriteLine("Erro de banco de dados: " + ex.Message);
                }
                finally
                {
                    if (conexao.State == System.Data.ConnectionState.Open)
                    {
                        conexao.Close();
                    }
                }
                return ListaPessoas;
            }
        }

        [WebMethod]
        public Pessoa BuscaporEmail(string email)
        {
            const string sqlcmd = "SELECT * FROM Pessoas WHERE Email LIKE @Email";

            Pessoa pessoa = new Pessoa();
            using (SqlConnection conexao = new SqlConnection(ConnectionString))
            {
                try
                {
                    conexao.Open();
                    using (SqlCommand sqlcommand = new SqlCommand(sqlcmd, conexao))
                    {
                        sqlcommand.Parameters.AddWithValue("@Email", "%" + email + "%");
                        using (SqlDataReader reader = sqlcommand.ExecuteReader())
                        {
                            if (!reader.HasRows)
                            {
                                return null;
                            }
                            reader.Read();
                            pessoa = ReaderPessoa(reader);
                        }
                    }
                }
                catch (SqlException ex) 
                { 
                    Console.WriteLine("Erro de banco de dados: " + ex.Message); 
                }
                finally 
                { 
                    if (conexao.State == System.Data.ConnectionState.Open) 
                    { 
                        conexao.Close();
                    } 
                }
                return pessoa;
            }
        }

        [WebMethod]
        public string InserirPessoa(string nome, string email, string senha)
        {
            const string sqlcmd = "INSERT INTO Pessoas (Nome, Email, Senha) " +
                                         " VALUES (@Nome , @Email, @Senha)";
            using (SqlConnection conexao = new SqlConnection(ConnectionString))
            {
                try
                {
                    conexao.Open();
                    using (SqlCommand sqlcommand = new SqlCommand(sqlcmd, conexao))
                    {
                        sqlcommand.Parameters.AddWithValue("@Nome", nome);
                        sqlcommand.Parameters.AddWithValue("@Email", email);
                        sqlcommand.Parameters.AddWithValue("@Senha", senha);

                        int linhasAfetadas = sqlcommand.ExecuteNonQuery();
                        if (linhasAfetadas > 0)
                        {
                            return "Inserido com sucesso!";
                        }
                        else
                        {
                            return "Falha ao inserir.";
                        }
                    }
                }
                catch (Exception ex)
                {
                    return "Falha ao inserir.: " + ex.Message;
                }
                finally
                {
                    if (conexao.State == System.Data.ConnectionState.Open)
                    {
                        conexao.Close();
                    }
                }
            }
        }


        [WebMethod]
        public string AlterarPessoa(string nome, string email, string senha)
        {
            const string sqlcmd = "UPDATE Pessoas SET Nome = @Nome, Senha = @Senha " +
                "WHERE Email = @Email";

            using (SqlConnection conexao = new SqlConnection(ConnectionString))
            {
                try
                {
                    conexao.Open();
                    using (SqlCommand sqlcommand = new SqlCommand(sqlcmd, conexao))
                    {
                        sqlcommand.Parameters.AddWithValue("@Nome", nome);
                        sqlcommand.Parameters.AddWithValue("@Email", email);
                        sqlcommand.Parameters.AddWithValue("@Senha", senha);

                        int linhasAfetadas = sqlcommand.ExecuteNonQuery();
                        if (linhasAfetadas > 0)
                        {
                            return "Alterado com sucesso!";
                        }
                        else
                        {
                            return "Falha ao alterar.";
                        }
                    }
                }
                catch (Exception ex)
                {
                    return "Falha ao alterar.: " + ex.Message;
                }
                finally
                {
                    if (conexao.State == System.Data.ConnectionState.Open)
                    {
                        conexao.Close();
                    }
                }
            }
        }

        [WebMethod]
        public string DeletarPessoa(string email)
        {
            const string sqlcmd = "DELETE FROM Pessoas WHERE Email = @Email";
            using (SqlConnection conexao = new SqlConnection(ConnectionString))
            {
                try
                {
                    conexao.Open();
                    using (SqlCommand sqlcommand = new SqlCommand(sqlcmd, conexao))
                    {
                        sqlcommand.Parameters.AddWithValue("@Email", email);

                        int linhasAfetadas = sqlcommand.ExecuteNonQuery();
                        if (linhasAfetadas > 0)
                        {
                            return "Deletado com sucesso!";
                        }
                        else
                        {
                            return "Falha ao deletar.";
                        }
                    }
                }
                catch (Exception ex)
                {
                    return "Falha ao deletar.: " + ex.Message;
                }
                finally
                {
                    if (conexao.State == System.Data.ConnectionState.Open)
                    {
                        conexao.Close();
                    }
                }
            }
        }

        [WebMethod]
        private static Pessoa ReaderPessoa(IDataRecord reader)
        {
            Guid idpessoa = reader.GetGuid(0);
            string nome = reader.GetString(1);
            string email = reader.GetString(2);
            string senha = reader.GetString(3);

            Pessoa pessoa = new Pessoa
            {
                IdPessoa = idpessoa,
                Nome = nome,
                Email = email,
                Senha = senha
            };
            return pessoa;
        }
    }
}
