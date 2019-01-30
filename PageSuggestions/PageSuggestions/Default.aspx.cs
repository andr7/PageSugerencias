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
        private String rbl1;
        private String rbl2;
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedValue1 = BootstrapRadioButtonList1.SelectedIndex;
            int selectedValue2 = BootstrapRadioButtonList2.SelectedIndex;
            switch (selectedValue1)
            {
                case 0:
                    rbl1 = "CARRIZALES";
                    break;
                case 1:
                    rbl1 = "NATALIA";
                    break;
                case 2:
                    rbl1 = "CALIFORNIA";
                    break;
                case 3:
                    rbl1 = "VALERIE";
                    break;
                case 4:
                    rbl1 = "DON VICTOR";
                    break;
            }
            switch (selectedValue2)
            {
                case 0:
                    rbl2 = "Administrativos";
                    break;
                case 1:
                    rbl2 = "Campo";
                    break;
                case 2:
                    rbl2 = "Planta";
                    break;                
            }
        }

        protected void BootstrapButton1_Click(object sender, EventArgs e)
        {
            try {
                //MailMessage mm = new MailMessage("raul.seminario@agricolaandrea.com", "raul.anderson0@gmail.com");
                MailMessage mm = new MailMessage("soporte@agricolaandrea.com", "romy.rodriguez@agricolaandrea.com");                
                mm.Subject = rbl1+" - "+rbl2+"(Sugerencias)"; //"asunto"
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
            TextBox1.Text = "";
        }
       
    }
}