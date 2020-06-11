using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Customers
{
    public partial class Orders : System.Web.UI.Page
    {
        private String connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Nai\Documents\SAB System.mdf";
        private SqlConnection conn;
        private DataSet ds;
        private SqlDataAdapter adapter;

        protected void Page_Load(object sender, EventArgs e)
        {
            label5.Visible = false;
            Calender1.SelectedDate = DateTime.Today;
            if (Session["username"] == null) {
                Response.Redirect("welcomeLogin.aspx");
            }
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            int ordersNumber = 0;
            DateTime orderDate = Calender1.SelectedDate;
            WelcomeLogin logedUser = new WelcomeLogin();
            if (Calender1.SelectedDate < DateTime.Today)
            {
                label5.Text = "Please select a Date that is Ahead";
                label5.Visible = true;
            }
            else {
                orderDate = Calender1.SelectedDate;
            }
            try
            {
                conn = new SqlConnection(connectionString);
                adapter = new SqlDataAdapter();
                adapter.SelectCommand = new SqlCommand("Select order_number from order_request", conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                ordersNumber = dt.Rows.Count;

                conn.Open();
                adapter.InsertCommand = new SqlCommand("insert into order_request values('" + ordersNumber++ + "','" + RadioButtonList1.SelectedValue + "','" + int.Parse(textBoxSize.Text) + "','" + int.Parse(textBoxAmount.Text)+ "','" + orderDate + "','" + logedUser.getLicence + "');", conn);
                adapter.InsertCommand.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException ex)
            {
                
            }
            textBoxAmount.Text = "";
            textBoxSize.Text = "";
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            WelcomeLogin login = new WelcomeLogin();
            Response.Redirect("WelcomeLogin.aspx");
            Response.Clear();
        }
    }
}