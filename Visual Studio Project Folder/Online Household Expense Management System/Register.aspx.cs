using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Reg_Click(object sender, EventArgs e)
    {
        if (IsEmailVaild(tb_UserEmail.Text)&&IsUserNameVaild(tb_UserName.Text)&&IsPasswordVaild(tb_Password.Text))
        {
            string sConnectionString = ConfigurationManager.ConnectionStrings["HAConnString"].ToString(); 
            using (SqlConnection conn = new SqlConnection(sConnectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("insert into UserLogin (EmailAddr,LastName,UserPwd) values (@EmailAddr,@LastName,@UserPwd)", conn))
                {

                    cmd.Parameters.AddWithValue("@EmailAddr", tb_UserEmail.Text);
                    cmd.Parameters.AddWithValue("@LastName", tb_UserName.Text);
                    cmd.Parameters.AddWithValue("@UserPwd", tb_Password.Text);
                    cmd.ExecuteNonQuery();
                }
            }
            //Session["UserID"] = sUserID; // 写入Session
            //Session["UserName"] = sUserName;
            ClientScript.RegisterStartupScript(this.GetType(), "", "<script>location.href='Default.aspx'</script>"); 
        }
        //缺少提示
    }

    protected bool IsEmailVaild(String emailAddr)
    {
        String pattern = @"(([a-z0-9_])@([a-z0-9_]).([a-z0-9_]))";
        Regex reg = new Regex(pattern, RegexOptions.IgnoreCase);
        if (reg.IsMatch(emailAddr)) { return false; }
        else { return true; }
    }
    protected bool IsUserNameVaild(String username)  // only number and letter
    {
        String pattern = @"([^a-z0-9])";
        Regex reg = new Regex(pattern, RegexOptions.IgnoreCase);
        if (reg.IsMatch(username)) { return false; }
        else { return true; }
    }
    protected bool IsPasswordVaild(String password) // only number and letter
    {
        String pattern = @"([^a-z0-9])";
        Regex reg = new Regex(pattern, RegexOptions.IgnoreCase);
        if (reg.IsMatch(password)) { return false; }
        else { return true; }
    }
}