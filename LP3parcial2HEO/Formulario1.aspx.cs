using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3parcial2HEO
{
    public partial class Formulario1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie1 = new HttpCookie("cookie1", TextBox4.Text);
            cookie1.Expires = DateTime.Now.AddMinutes(10);
            Response.Cookies.Add(cookie1);
            this.Session["nombre"] = TextBox2.Text;
            Label6.Text = "Fue creado correctamente";
        }
    }
}