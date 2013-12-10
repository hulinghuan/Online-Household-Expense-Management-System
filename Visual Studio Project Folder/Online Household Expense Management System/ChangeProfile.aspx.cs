using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangeProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_CancelChange_Click(object sender, EventArgs e)
    {
        this.tb_confirmPassword.Text = "";
        this.tb_newPassword.Text = "";
        this.tb_oldPassword.Text = "";
        this.tb_Userfirstname.Text = "";
        this.tb_UserLastname.Text = "";
    }
    protected void btn_SaveValue_Click(object sender, EventArgs e)
    {   if(tb_newPassword.Text==tb_confirmPassword.Text)
        ChangePwd();
    }

    private void ChangePwd()
    {
        string sConnectionString = ConfigurationManager.ConnectionStrings["HAConnString"].ToString();
        using (SqlConnection conn = new SqlConnection(sConnectionString))
        {
            conn.Open();
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = conn;
                cmd.CommandText = "select count(*) from UserLogin where UserID=@UserID and UserPwd=@oldUserPwd";
                // cmd.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
                cmd.Parameters.AddWithValue("@UserID", 1);
                cmd.Parameters.AddWithValue("@oldUserPwd", tb_oldPassword.Text);
                if (cmd.ExecuteScalar().ToString() != "0")
                {
                    cmd.CommandText = "update UserLogin set UserPwd=@NewUserPwd where UserID=@UserID";
                    cmd.Parameters.AddWithValue("@NewUserPwd", tb_newPassword.Text);
                    cmd.ExecuteScalar();
                }
            }
        }
    }
}