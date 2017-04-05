using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string emailid = txtEmail.Text;
        string pwd = txtPassword.Text;
        if(emailid=="" | pwd == "")
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please enter your credentials !!!')</script>");
        }
        string connstring = ConfigurationManager.ConnectionStrings["login"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstring);
        conn.Open();
        string query = "select * from admin where email ='"+emailid+"' and password='"+pwd+"'" ;
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
             {
                conn.Close();
                Session["username"] = "admin";
                Response.Redirect("home.aspx");
             }
        else
            {
             ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
           
        }
    }
}