using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Fitness.Data;


namespace Fitness
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            String mySQL = "Insert into xw_ClientsInfo (firstName, lastName, email, trainer) Values ('" + txtFirstName.Text + "', '" + txtLastName.Text + "', '" + txtEmail1.Text + "', '" + txtTrainer.Text + "')";
            dbConnection.ExecuteInsertQuery(mySQL);
            lblResult.Text = "Your application has been submitted";
            lblResult.Visible = true;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail1.Text = "";
            txtTrainer.Text = "";
            lblResult.Visible = false;
        }
    }
}