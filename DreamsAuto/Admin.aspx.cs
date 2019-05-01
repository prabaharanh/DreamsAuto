using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DreamsAuto
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCar_Click(object sender, EventArgs e)
        {
            if (CarImage.HasFile)

            {

                String test = @"~\carImages\";

                string fileName = CarImage.PostedFile.FileName.ToString();

                String savePath = test + fileName;

                CarImage.PostedFile.SaveAs(Server.MapPath(savePath));

                DAL_Users aLayer = new DAL_Users();

                aLayer.addCar(txtCarName.Text, txtType.Text, txtPrice.Text, txtDescription.Text, fileName);

                txtCarName.Text = "";

                txtType.Text = "";

                txtPrice.Text = "";

                txtDescription.Text = "";




            }
        }

    }
}