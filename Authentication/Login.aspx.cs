using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Authentication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"]!=null)
            {
                Response.Redirect("/Home.aspx");
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=HPI5\\SQLEXPRESS;Initial Catalog=DB2;Integrated Security=True;Encrypt=False");
            con.Open();
            string query = "select ID , Name from EmployeeUsers where Email='" + txtemail.Text + "' and Password='" + txtpass.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    Session["ID"] = rdr["ID"].ToString();
                    Session["Name"]= rdr["Name"].ToString();
                    
                }
                Response.Redirect("~/Home.aspx");
            }

            else
            {
                Response.Write("<script>alert('Invalid login credentials. Please try again.');</script>");

            }


        }
    }
}