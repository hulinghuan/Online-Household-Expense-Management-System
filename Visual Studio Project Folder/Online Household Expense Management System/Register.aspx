<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <link id="Link1" rel="stylesheet" runat="server" media="screen" href="../Content/Register.css" />
        <div class="Register-container">
        <div class="register">
            <h1>Create an Online Household Expense Management Account</h1>
            <div class="page-intro">
            	<label>Online Household Expense Management helps you track every expense in your life and let you see how you spend them.</label>
            </div>
            <div class="register-controls">
            	<div class="reg-header">
                <label>Register</label>
                <label class="switch">Or <a href="./Default.aspx"><span>Login in</span></a></label>
            	</div>
                <div class="signin">
            	    <form id="register_form" runat="server">
                <label>Email address</label>
                <asp:TextBox ID="tb_UserEmail" runat="server" MaxLength="50" CssClass="Register-useremail"></asp:TextBox>
                <label>User name</label>
                <asp:TextBox ID="tb_UserName" runat="server" MaxLength="25" CssClass="Register-username"></asp:TextBox>
                <label>Password</label>
                <asp:TextBox ID="tb_Password" runat="server" MaxLength="25" CssClass="Register-password"></asp:TextBox>


                        <asp:Button ID="btn_Reg" runat="server" OnClick="btn_Reg_Click" Text="Register" CssClass="Register-button"/>
                    </form>
                </div>
            </div>
            <div class="tour1">
            </div>
        </div>
    </div>

</asp:Content>

