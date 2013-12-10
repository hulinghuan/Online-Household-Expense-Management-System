<%@ Page Language="C#" AutoEventWireup="true" CodeFile="functionTest.aspx.cs" Inherits="functionTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
    
        <asp:FileUpload ID="fileuploadPic" runat="server" />
     <br /><br />
        <asp:Button ID="btnOk" runat="server" Text="Click here to upload the picture" OnClick="btnOk_Click" />
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
        <br />
        <br />
        <br />
        <asp:Label ID="lblInfor" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" />
    </div>
    </form>
</body>
</html>
