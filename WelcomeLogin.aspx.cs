using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Principal;
using System.Reflection;

namespace Customers
{
    public partial class WelcomeLogin : System.Web.UI.Page
    {
        public String getLicence { get; set; }
        private String connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\masag\Desktop\Aviator Systems Prototype SAB\Aviator Systems Prototype SAB\SAB System.mdf;Integrated Security=True";
        public DataSet ds = new DataSet();
        public SqlDataReader dr;
        private SqlDataAdapter adapter;
        private SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblStatus.Visible = false;
        }

        protected void LoginCustomer_Authenticate(object sender, AuthenticateEventArgs e)
        {
            conn = new SqlConnection(connectionString);
            adapter = new SqlDataAdapter();
            conn.Open();
            adapter.SelectCommand = new SqlCommand("Select * from customer where liqour_license = '" + LoginCustomer.UserName + "' and customer_name='" + LoginCustomer.Password + "'", conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);


            if (dt.Rows.Count == 1)
            {
                Session.Add("username", LoginCustomer.UserName);
                //getLicence = Session["username"].ToString();
                //getLicence = LoginCustomer.ClientID;
                
                Response.Redirect("Orders.aspx");

            }
            else
            {
                if (Session["username"] == null) {
                    Response.Redirect("WelcomeLogin.aspx");
                }
                lblStatus.Visible = true;
                lblStatus.Text = "UserName or Password incorrect try again";
            }
            conn.Close();
        }
    }
}