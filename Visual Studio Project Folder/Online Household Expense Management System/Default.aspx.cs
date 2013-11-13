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


    //用户名是名字和密码混合输入
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        string sConnectionString = ConfigurationManager.ConnectionStrings["HAConnString"].ToString();
        using (SqlConnection conn = new SqlConnection(sConnectionString))
        {
            conn.Open();
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = conn;
                cmd.CommandText = "select count(*) from UserLogin where EmailAddr=@EmailAddr"; 
                cmd.Parameters.AddWithValue("@EmailAddr", tb_Username.Text); 
                if (cmd.ExecuteScalar().ToString() == "0") 
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('username invaild!')</script>"); 
                else{
                    cmd.CommandText = "select LastName from UserLogin where EmailAddr=@EmailAddr and UserPwd=@UserPwd"; 
                    cmd.Parameters.AddWithValue("@UserPwd", tb_Password.Text); 
                    if (cmd.ExecuteScalar() == null) 
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('password incorrect!')</script>");
                    else{
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('succeed!');location.href='PersonalHome.aspx'</script>");
                    }
                }
            }
        }
    }
}