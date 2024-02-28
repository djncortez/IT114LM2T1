using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            if (fileUpload.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(fileUpload.FileName);
                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png")
                {
                    fileUpload.SaveAs("<c:\\SaveDirectory>" + fileUpload.FileName);
                }
                else
                {
                    Response.Write("<script>alert('Please upload file having extensions .jpg or .png only.')</script>");
                }
            }
        }
    }
}
