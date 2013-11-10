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
            	<form runat="server" id="register_form" name="login_form" action="" method="">
                <label>Email address</label>
                <input id="useremail" maxlength="64" name="username" class="text" type="text">
                <label>User name</label>
                <input id="username" maxlength="64" name="username" class="text" type="text">
                <label>Password</label>
                <input id="password" maxlength="64" name="password" class="text" type="password">
                <input type="button" id="register" value="Register"/>
                </form>
                </div>
            </div>
            <div class="tour1">
            </div>
        </div>
    </div>

</asp:Content>

