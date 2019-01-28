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
    public partial class _Default : Page
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

        protected void enviar_Click(object sender, EventArgs e)
        {
            //MailMessage mm = new MailMessage("raul.seminario@agricolaandrea.com", "raul.anderson0@gmail.com");
            MailMessage mm = new MailMessage("raul.anderson0@gmail.com", "raul.seminario@agricolaandrea.com");
            mm.Subject = rbl; //"asunto"
            mm.Body = BootstrapTextBox1.Text; //"Msj del correo"
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            //smtp.Host = "merlin.migivagroup.com";
            smtp.EnableSsl = true;
            NetworkCredential networkcred = new NetworkCredential("raul.anderson0@gmail.com", "P8640D*#");
            //NetworkCredential networkcred = new NetworkCredential("raul.seminario@agricolaandrea.com", "Aga2018*");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = networkcred;
            smtp.Port = 587;
            smtp.Send(mm);
            //ClientScript.RegisterStartupScript(this.GetType, "Alert", "alert(email sent\');", true);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        }

        public void EnviarCorreo()
        {
            /*-------------------------MENSAJE DE CORREO----------------------*/

            //Creamos un nuevo Objeto de mensaje
            System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

            //Direccion de correo electronico a la que queremos enviar el mensaje
            mmsg.To.Add("raul.anderson0@gmail.com");

            //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

            //Asunto
            mmsg.Subject = "Asunto del correo";
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

            //Direccion de correo electronico que queremos que reciba una copia del mensaje
            //mmsg.Bcc.Add("destinatariocopia@servidordominio.com"); //Opcional

            //Cuerpo del Mensaje
            mmsg.Body = "Texto del contenido del mensaje de correo";
            mmsg.BodyEncoding = System.Text.Encoding.UTF8;
            mmsg.IsBodyHtml = false; //Si no queremos que se envíe como HTML

            //Correo electronico desde la que enviamos el mensaje
            mmsg.From = new System.Net.Mail.MailAddress("andr_67@hotmail.com");


            /*-------------------------CLIENTE DE CORREO----------------------*/

            //Creamos un objeto de cliente de correo
            System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();

            //Hay que crear las credenciales del correo emisor
            cliente.Credentials =
                new System.Net.NetworkCredential("andr_67@hotmail.com", "an9476dr");

            //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail
            /*
            cliente.Port = 465;
            cliente.EnableSsl = true;
            */

            cliente.Host = "smtp.live.com"; //Para Gmail "smtp.gmail.com";


            /*-------------------------ENVIO DE CORREO----------------------*/

            try
            {
                //Enviamos el mensaje      
                cliente.Send(mmsg);
            }
            catch (System.Net.Mail.SmtpException ex)
            {
                //Aquí gestionamos los errores al intentar enviar el correo
                
            }
        }

    }
}