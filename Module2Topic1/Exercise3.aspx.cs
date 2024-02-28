using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
            if (!IsPostBack)
            {
                finalGrade.Text = "Enter your grade";
            }
        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            double percent = 0;
            double final = 0;

            if (!double.TryParse(percentageGrade.Text, out percent))
            {
                finalGrade.Text = "Invalid input.";
                return;
            }

            if (percent < 0 || percent > 100)
            {
                finalGrade.Text = "Invalid input.";
                return;
            }

            if (percent > 96)
            {
                final = 1.00;
            }
            else if (percent >= 91.51)
            {
                final = 1.25;
            }
            else if (percent >= 87.01)
            {
                final = 1.50;
            }
            else if (percent >= 82.51)
            {
                final = 1.75;
            }
            else if (percent >= 78.01)
            {
                final = 2.00;
            }
            else if (percent >= 73.51)
            {
                final = 2.25;
            }
            else if (percent >= 69.01)
            {
                final = 2.50;
            }
            else if (percent >= 64.51)
            {
                final = 2.75;
            }
            else if (percent >= 60.00)
            {
                final = 3.00;
            }
            else
            {
                final = 5.00;
            }

            finalGrade.Text = final.ToString();

            if (final == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Congratulations!');", true);
            }
        }
    }
}
