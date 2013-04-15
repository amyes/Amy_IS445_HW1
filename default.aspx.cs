using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW6
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CardType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            SetDate.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SetDate.Text = DateTime.Now.ToString();
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        
     { 
            Done.Text = "Summary of Input ";  
            Done.Text += "<br/>User Name: " + NameTextBox.Text;
            Done.Text += "<br/>Credit card type: " + CardType.SelectedItem;
            Done.Text += "<br/>Expiration date: " + SetDate.Text;
                     }
    }
}