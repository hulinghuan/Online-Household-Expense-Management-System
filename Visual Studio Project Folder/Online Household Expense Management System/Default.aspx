<%@ Page Title="Household Accounting | Use your money wisely!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="login">
        <div class="reg-header">
            <h3>Sign in</h3>
            <span class="switch"> <form></form>Create an Account</span>
        </div>
        <div class="signin">
            <form runat="server" id="login_form" name="login_form" action="" method="">
            <label>Email address or username</label>
            <input id="username" maxlength="64" name="username" class="text" type="text">
            <label>Password</label>
            <input id="password" maxlength="64" name="password" class="text" type="password">
            <asp:CheckBox ID="CheckBox1" runat="server" css=""/>
            <label class="checkbox-text">Remember me for a week</label>
            <asp:Button ID="Login" class="loginbtn" runat="server" Text="Sign in" />
            </form>
            <a href="/" class="resetpassword"></a>
        </div>
    </div>
    
</asp:Content>