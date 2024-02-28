using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string fsong = "My Funny Valentine - Frank Sinatra";
            song.InnerText = "Now playing " + fsong;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}
