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
        private String connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\masag\Desktop\Aviator Systems Prototype SAB\Aviator Systems Prototype SAB\SAB System.mdf;Integrated Security=True";
        private SqlConnection conn;
        private DataSet ds;
        private SqlDataAdapter adapter;

        protected void Page_Load(object sender, EventArgs e)
        {
            label5.Visible = false;
            //Calender1.SelectedDate = DateTime.Today;
            if (Session["username"] == null) {
                Response.Redirect("welcomeLogin.aspx");
            }
            if (!Page.IsPostBack)
                Calender1.SelectedDate = DateTime.Now.Date;
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
                ListBoxOrderSummary.Items.Add(ordersNumber++ + " " + RadioButtonList1.SelectedValue + " " + textBoxSize.Text + "   " +textBoxAmount.Text + " " +orderDate.Date);

                conn.Open();
                adapter.InsertCommand = new SqlCommand("insert into order_request values('" + ordersNumber++ + "','" + RadioButtonList1.SelectedValue + "','" + int.Parse(textBoxSize.Text) + "','" + int.Parse(textBoxAmount.Text)+ "','" + orderDate + "','" + Session["username"].ToString() + "');", conn);
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

        protected void Calender1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}