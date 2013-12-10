using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class functionTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Initial Catalog=web design;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select image from Image where imageID=@imageID", conn);

   //         cmd.Parameters.AddWithValue("@imageID", Session["imageID"].ToString());

            cmd.Parameters.AddWithValue("@imageID", 2);
        conn.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            Response.Clear();
            Response.ContentType = "image/jpg";
            Response.BinaryWrite((byte[])sdr["image"]);
        }
        Response.End();
        conn.Close();
    }

    protected void btnOk_Click(object sender, EventArgs e)
    {
        //判断上传格式是否符合
        bool flag = false;
        if (fileuploadPic.HasFile)
        {
            string fileExtension = Path.GetExtension(fileuploadPic.FileName).ToUpper();
            //只允许上传格式
            string[] allowExtension = { ".JPG", ".GIF", ".PNG" };
            for (int i = 0; i < allowExtension.Length; i++)
            {
                if (fileExtension == allowExtension[i])
                    flag = true;
            }
        }
        //上传
        if (flag)
        {
            int imgSize;
            string imgType;
            Stream imgStream;
            imgSize = fileuploadPic.PostedFile.ContentLength;
            imgType = fileuploadPic.PostedFile.ContentType;
            imgStream = fileuploadPic.PostedFile.InputStream;
            byte[] imgContent = new byte[imgSize];
            imgStream.Read(imgContent, 0, imgSize);
            imgStream.Close();
            //connection 
            string strConn = "Initial Catalog=web design;Integrated Security=True";
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand comm = conn.CreateCommand();
            string sql = "insert into Image(image) values(@img)";
            comm.CommandText = sql;
            comm.Parameters.Add("@info", SqlDbType.VarChar, 50);
            comm.Parameters.Add("@img", SqlDbType.Image);
            comm.Parameters["@info"].Value = imgType;
            comm.Parameters["@img"].Value = imgContent;
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
                conn.Close();
                lblInfor.Text = "图片上传成功！";
            }
            catch (Exception ex)
            {
                lblInfor.Text = "Error:" + ex.ToString();
            }
        }
        else
        {
            lblInfor.Text = "文件格式不正确，请检查...";
        }
    }

    protected void function_readimage()
    {

    }
}