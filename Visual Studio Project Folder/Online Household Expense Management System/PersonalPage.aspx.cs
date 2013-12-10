using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PersonalPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //this.ProfileImage.ImageUrl = "functionTest.aspx";
        //lb_name.Text = Session["UserName"].ToString();
    }
    protected void btn_ChangeProfile_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('ChangeProfile.aspx','_blank')</script>");
    }
}