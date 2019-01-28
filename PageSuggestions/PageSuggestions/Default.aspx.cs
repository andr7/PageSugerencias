using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

namespace PageSuggestions
{
    public partial class Sugerencias : System.Web.UI.Page
    {
        private String rbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedValue = BootstrapRadioButtonList1.SelectedIndex;
            switch (selectedValue)
            {
                case 0:
                    rbl = "CARRIZALES";
                    break;
                case 1:
                    rbl = "NATALIA";
                    break;
                case 2:
                    rbl = "CALIFORNIA";
                    break;
                case 3:
                    rbl = "VALERIE";
                    break;
                case 4:
                    rbl = "DON VICTOR";
                    break;
            }
        }

        protected void BootstrapButton1_Click(object sender, EventArgs e)
        {
            try {
                //MailMessage mm = new MailMessage("raul.seminario@agricolaandrea.com", "raul.anderson0@gmail.com");
                MailMessage mm = new MailMessage("soporte@agricolaandrea.com", "romy.rodriguez@agricolaandrea.com");
                mm.Subject = rbl; //"asunto"
                mm.Body = TextBox1.Text;// Request.Form["TextArea1"];//BootstrapTextBox1.Text; //"Msj del correo"
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                //smtp.Host = "smtp.gmail.com";
                smtp.Host = "merlin.migivagroup.com";
                //smtp.EnableSsl = true;
                NetworkCredential networkcred = new NetworkCredential("soporte@agricolaandrea.com", "SOP@ND?3@");
                //NetworkCredential networkcred = new NetworkCredential("raul.seminario@agricolaandrea.com", "Aga2018*");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = networkcred;
                //smtp.Port = 587;
                smtp.Send(mm);
                //ClientScript.RegisterStartupScript(this.GetType, "Alert", "alert(email sent\');", true);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sugerencia enviada')", true);
            }
            catch (Exception E) {
                //ClientScript.RegisterStartupScript(this.GetType, "Alert", "alert(email sent\');", true);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error, intente nuevamente')", true);
            }
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}