using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab5.clients
{
    public partial class lister : System.Web.UI.Page
    {
        static string query = "SELECT * FROM Customers";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                fillListview();
            }

        }

        private void fillListview()
        {
            
            string connectionString = " Data Source= .;Initial Catalog=Northwind;Integrated Security=true;";

            DataSet customerDS = new DataSet();
            SqlDataAdapter customerDA = new SqlDataAdapter(query, connectionString);

            customerDA.Fill(customerDS);

            clients.DataSource = customerDS.Tables[0];
            clients.DataBind();
        }

        protected void Search_Click(object sender, ImageClickEventArgs e)
        {
            if (txtSearch.Text == "")
            {
                msg.Text = "Écrit un valeur pour rechercher";
            }
            else
            {
                msg.Text = "";
                query = "SELECT * FROM Customers WHERE CompanyName LIKE '%" + txtSearch.Text + "%'";
                fillListview();
            }
        }
    }
}