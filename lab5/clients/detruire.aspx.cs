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
    public partial class detruire : System.Web.UI.Page
    {
        static string query = "SELECT * FROM Customers";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                filldropdown();
            }

        }

        private void filldropdown()
        {
            string connectionString = "Data Source= .;Initial Catalog=Northwind;Integrated Security=true;";

            DataSet customerDS = new DataSet();
            SqlDataAdapter customerDA = new SqlDataAdapter(query, connectionString);

            clients.DataTextField = "CompanyName";
            clients.DataValueField = "CustomerId";

            customerDA.Fill(customerDS);

            clients.DataSource = customerDS.Tables[0];
            clients.DataBind();
        }

        protected void clients_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand deleteCommand = new SqlCommand("DELETE FROM Customers WHERE CustomerID = @id");
            SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=Northwind;Integrated Security=true;");
            deleteCommand.Connection = cn;
            cn.Open();

            deleteCommand.Parameters.AddWithValue("@id", clients.SelectedItem.Value);
            deleteCommand.ExecuteNonQuery();
            cn.Close();
            filldropdown();
        }
    }
}