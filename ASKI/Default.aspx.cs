using System;

namespace ASKI
{
    public partial class Default : System.Web.UI.Page
    {
        public Visitante visita = new Visitante();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                txtNomVisit.Text = "";
                txtSobNomVi.Text = "";
                txtEmaVisit.Text = "";
                CheckBox2.Checked = false;
                CheckBox1.Checked = false;
            }
        }

        protected void bnt_Inscricao_Click(object sender, EventArgs e)
        {
            
            if (txtNomVisit.Text ==string.Empty   )
            {
                MessageLabel.Text = "Informe primeiramente o Nome.";
                MessageLabel.ForeColor = System.Drawing.Color.Red ;
               
            }
            else
            {
                if (txtEmaVisit.Text != string.Empty)
                {
                    if (ValidarEmail(txtEmaVisit.Text )==true)
                    {
                        bool tem = visita.ValidarVisitante(txtEmaVisit.Text);
                        if (!tem )
                        {
                            visita.Nom_Visi = txtNomVisit.Text;
                            visita.Sob_Nvis = txtSobNomVi.Text;
                            visita.Ema_Visi = txtEmaVisit.Text;
                            visita.AuxMonit = CheckBox2.Checked;
                            visita.AuxUnive = CheckBox1.Checked;
                            visita.Salvar(txtEmaVisit.Text);
                            MessageLabel.ForeColor = System.Drawing.Color.Blue;
                            MessageLabel.Text = "Inclusão Ok!";
                        }
                        else
                        {
                            MessageLabel.ForeColor = System.Drawing.Color.Red;
                            MessageLabel.Text = "E-mail já foi cadastrado!";
                        }
                       
                    }
                    else
                    {
                        MessageLabel.ForeColor = System.Drawing.Color.Red;
                        MessageLabel.Text = "Formato de E-mail invalido!";
                      
                    }
                }
                else
                {
                    MessageLabel.ForeColor = System.Drawing.Color.Red;
                    MessageLabel.Text = "Informe o e-mail, este campo é obrigatório!";
                    
                }
            }
        }


        public static bool ValidarEmail(string email)
        {
            bool validEmail = false;
            int indexArr = email.IndexOf('@');
            if (indexArr > 0)
            {
                int indexDot = email.IndexOf('.', indexArr);
                if (indexDot - 1 > indexArr)
                {
                    if (indexDot + 1 < email.Length)
                    {
                        string indexDot2 = email.Substring(indexDot + 1, 1);
                        if (indexDot2 != ".")
                        {
                            validEmail = true;
                        }
                    }
                }
            }
            return validEmail;
        }
    }
}