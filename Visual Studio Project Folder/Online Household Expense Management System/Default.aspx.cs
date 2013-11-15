using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : Page
{

    private string sConnectionString = ConfigurationManager.ConnectionStrings["HAConnString"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //}
        
    }


    #region input usename and password
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        string sConnectionString = ConfigurationManager.ConnectionStrings["HAConnString"].ToString();
        using (SqlConnection conn = new SqlConnection(sConnectionString))
        {
            conn.Open();
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = conn;
                cmd.CommandText = "select count(*) from UserLogin where EmailAddr=@UserName or UserName=@UserName "; 
                cmd.Parameters.AddWithValue("@UserName", tb_Username.Text);
                tb_Username.CssClass = "login_username";
                tb_Password.CssClass = "login_password";
                if (cmd.ExecuteScalar().ToString() == "0")
                {
                    // Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('username invaild!')</script>");
                        lb_reminder.Text = "username invaild!";
                        lb_reminder.Visible = true;
                        tb_Username.CssClass = "login_usernamewitherror";
                        tb_Username.Focus();
                      
                }
                else
                {

                    cmd.CommandText = "select count(*) from UserLogin where EmailAddr=@UserName and UserPwd=@UserPwd or UserName=@UserName and UserPwd=@UserPwd";
                    cmd.Parameters.AddWithValue("@UserPwd", tb_Password.Text);
                    if (cmd.ExecuteScalar().ToString() == "0")
                    {//Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('password incorrect!')</script>");
                        lb_reminder.Text = "password incorrect!";
                        lb_reminder.Visible = true;
                        tb_Password.CssClass = "login_usernamewitherror";
                        tb_Password.Focus();
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>location.href='PersonalHome.aspx'</script>");//alert('succeed!');
                    }
                }
            }
        }
    }
    #endregion
}