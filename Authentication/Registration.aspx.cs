using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Authentication
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                Response.Redirect("/Home.aspx");
            }
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=HPI5\\SQLEXPRESS;Initial Catalog=DB2;Integrated Security=True;Encrypt=False");
            con.Open();
            string query = "insert into EmployeeUsers (Name, Email,Password) Values('" + txtname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            if (cmd.ExecuteNonQuery() >0)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Response.Write("<script> alert('Registeration Failed'); </script>");
            }
        }
    }
}