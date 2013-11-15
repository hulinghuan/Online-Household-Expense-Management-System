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
        bool isCreatSucceed = false;

        if (IsEmailVaild(tb_UserEmail.Text)){
            if(IsUserNameVaild(tb_UserName.Text)){
                if(IsPasswordVaild(tb_Password.Text)){
          
            string sConnectionString = ConfigurationManager.ConnectionStrings["HAConnString"].ToString(); 
            using (SqlConnection conn = new SqlConnection(sConnectionString))
            {
                conn.Open();
                using (SqlCommand cmdvaild = new SqlCommand())
                {
                cmdvaild.Connection = conn;
                cmdvaild.CommandText = "select count(*) from UserLogin where EmailAddr=@EmailAddr";
                cmdvaild.Parameters.AddWithValue("@EmailAddr", tb_UserEmail.Text);
                if (cmdvaild.ExecuteScalar().ToString() != "0")
                {
                    // Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('username invaild!')</script>"); 
                    lb_reminder.Text = "username used!";
                    lb_reminder.Visible = true;
                } else{
                     using (SqlCommand cmd = new SqlCommand("insert into UserLogin (EmailAddr,UserName,UserPwd) values (@EmailAddr,@UserName,@UserPwd)", conn))
                    {

                        cmd.Parameters.AddWithValue("@EmailAddr", tb_UserEmail.Text);
                        cmd.Parameters.AddWithValue("@UserName", tb_UserName.Text);
                        cmd.Parameters.AddWithValue("@UserPwd", tb_Password.Text);
                        cmd.ExecuteNonQuery();
                    }
                     isCreatSucceed = true;
                }
                }
               
            }
            //Session["UserID"] = sUserID; // 写入Session
            //Session["UserName"] = sUserName;
            if (isCreatSucceed)
            ClientScript.RegisterStartupScript(this.GetType(), "", "<script>location.href='Default.aspx'</script>");
         //   lb_reminder.Visible = false;
                    
                }
            }
         }
        //缺少提示
    }

    protected bool IsEmailVaild(String emailAddr)
    {
        String pattern = @"(([a-z0-9_])@([a-z0-9_]).([a-z0-9]))";
        Regex reg = new Regex(pattern, RegexOptions.IgnoreCase);
        if (reg.IsMatch(emailAddr)) { return true; }
        else {
            lb_reminder.Text = "please enter normal email, thank you.";
            lb_reminder.Visible = true;
            return false; 
        }
    }
    protected bool IsUserNameVaild(String username)  // only number and letter
    {
        String pattern = @"([^a-z0-9])";
        Regex reg = new Regex(pattern, RegexOptions.IgnoreCase);
        String pattern1 = @"([^a-z])";
        Regex reg1 = new Regex(pattern1, RegexOptions.IgnoreCase);
        if (reg.IsMatch(username) || username.Length<6 || reg1.IsMatch(username.Substring(0,1))) {
            lb_reminder.Text = "normal UserName is started with letter, formed by number and letters and at least 6 characters long";
            lb_reminder.Visible = true;
            return false; }
        else {
            return true; 
        }
    }
    protected bool IsPasswordVaild(String password) // only number and letter
    {
        String pattern = @"([^a-z0-9])";
        Regex reg = new Regex(pattern, RegexOptions.IgnoreCase);
        if (reg.IsMatch(password) || password.Length<6) { 
            lb_reminder.Text = "normal Password formed by number and letters and at least 6 characters long";
            lb_reminder.Visible = true;
            return false;
        }
        else {
            return true; 
        }
    }
    
}