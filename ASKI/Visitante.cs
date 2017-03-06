using System;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace ASKI
{
    public class Visitante
    {
         //-----------------------------Inicio----------------------------
        public int Id { get; set; }

        [Required(ErrorMessage = "Preencha o Nome.")]
        public string Nom_Visi { get; set; }

        [Required(ErrorMessage = "Preencha o Sobre Nome.")]
        public string Sob_Nvis { get; set; }

        [Required(ErrorMessage = "Preencha a Senha.")]
        public string Ema_Visi { get; set; }

        public bool AuxMonit { get; set; }

        public bool AuxUnive { get; set; }


        public  bool ValidarVisitante(string lEmail)
        {
            var ret = false;

            try
            {
                using (var conexao = new SqlConnection())
                {
                    conexao.ConnectionString = ConfigurationManager.ConnectionStrings["AskiConxao"].ConnectionString;
                    conexao.Open();
                    using (var comando = new SqlCommand())
                    {
                        comando.Connection = conexao;
                        comando.CommandText = "select count(*) from tbVisita where Ema_Visi=@lemail";

                        comando.Parameters.Add("@lemail", SqlDbType.VarChar).Value = lEmail;
                        

                        ret = ((int)comando.ExecuteScalar() > 0);
                    }
                }

                return ret;
            }
            catch (Exception e)
            {
                Console.WriteLine("Ocorreu o erro " + e.Message);
                return ret;
            }


        }

        public int Salvar(string lEmail)
        {
            var ret = 0;


            try
            {
                using (var conexao = new SqlConnection())
                {

                    conexao.ConnectionString = ConfigurationManager.ConnectionStrings["AskiConxao"].ConnectionString;
                    conexao.Open();
                    using (var comando = new SqlCommand())
                    {
                        comando.Connection = conexao;

                        if (ValidarVisitante(lEmail) != true)
                        {
                            comando.CommandText = "insert into tbVisita (Nom_Visi, Sob_Nvis, Ema_Visi, AuxMonit, AuxUnive) values (@nome, @sobreno, @email, @monitor, @univers); select convert(int, scope_identity())";

                            comando.Parameters.Add("@nome", SqlDbType.VarChar).Value = this.Nom_Visi;
                            comando.Parameters.Add("@sobreno", SqlDbType.VarChar).Value = this.Sob_Nvis;
                            comando.Parameters.Add("@email", SqlDbType.VarChar).Value = this.Ema_Visi;
                            comando.Parameters.Add("@monitor", SqlDbType.VarChar).Value = (this.AuxMonit ? 1 : 0);
                            comando.Parameters.Add("@univers", SqlDbType.VarChar).Value = (this.AuxUnive ? 1 : 0);

                            ret = (int)comando.ExecuteScalar();
                            
                        }

                    }
                }
                return ret;
            }
            catch (Exception e)
            {

                Console.WriteLine("Ocorreu o erro " + e.Message);
                return ret; throw;
            }
        }
    }
}