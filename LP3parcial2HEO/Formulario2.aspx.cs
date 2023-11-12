using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3parcial2HEO
{
    public partial class Formulario2 : System.Web.UI.Page
    {
        string nombre;
        bool bandera = false; // esta bandera la puse para saber si existe una sesion y que se pueda guardar el archivo porque sino te permitiria guardar archivos sin session o posiblemente tire algun error
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nombre"] != null)
            {
                nombre = Session["nombre"].ToString();
                bandera = true;
            }
            else
            {
                Label1.Text = "Para usar esta funcion tiene que existir una sesion activa";
            }
            CargarArchivos();
        }

        public void CargarArchivos()
        {
            string path = $"{Server.MapPath(".")}/files/{nombre}";
            if (Directory.Exists(path) && bandera == true)
            {
                string[] archivos = Directory.GetFiles(path);
                List<archivo> archivosList = new List<archivo>();
                foreach (string archivo in archivos)
                {
                    var archivo1 = new archivo();
                    // como no le agregué nada al constructor lo tengo que agregar de esta forma
                    archivo1.nombre = Path.GetFileName(archivo);
                    archivo1.path = archivo;
                    archivosList.Add(archivo1);
                }
                GridView1.DataSource = archivosList;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(bandera == true)
            {
                string path = $"{Server.MapPath(".")}/files/{nombre}"; // nombre es el nombre de la variable que almacena session
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
                foreach(HttpPostedFile archivo in FileUpload1.PostedFiles)
                {
                    FileUpload1.SaveAs($"{path}/{archivo.FileName}"); 
                }
                CargarArchivos();
            }


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Descargar")
            {
                GridViewRow registro = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string ArchivoPath = registro.Cells[2].Text;
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(ArchivoPath));
                Response.TransmitFile(ArchivoPath);
                Response.End();
            }
        }
    }
}