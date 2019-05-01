using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DreamsAuto
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";

        }

        protected void BtnResetPwd(object sender, EventArgs e)
        {
            string loginString = Security.GetHash512(txtUserID.Text, txtUserName.Text);

            DAL_Users aLayer = new DAL_Users();
                aLayer.ResetPassword(txtUserID.Text, loginString);
                lblMessage.Text = "Your New password updated";
            txtUserID.Text = "";
            txtUserName.Text = "";
            
        }
    }
}