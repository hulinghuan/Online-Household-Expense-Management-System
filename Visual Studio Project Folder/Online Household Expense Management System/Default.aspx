<%@ Page Title="Household Accounting | Use your money wisely!" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container">
        <div class="login">
            <div class="reg-header">
                <label>Sign in</label>
                <a href="../Register.aspx"><span class="switch">Create an Account</span></a>
            </div>
            <div class="signin">
                <form id="login_form" runat="server">
                <label>Email address or username</label>
                <asp:TextBox ID="tb_Username" runat="server" Maxlength="50" CssClass="login_username" ></asp:TextBox>
                <label> Password</label>
                <asp:TextBox ID="tb_Password" runat="server" MaxLength="25" CssClass="login_password" TextMode="Password" ></asp:TextBox>
                <input id="rememberMe" class="checkbox" type="checkbox" value="true" name="rememberMe"/>
                <label class="checkbox-text">Remember me for a week</label>
                <asp:Button ID="btn_Login" runat="server" OnClick="btn_Login_Click" Text="Sign in" CssClass="login_btn_Login" style="CURSOR:pointer"/>
                <a href="/" class="resetpassword">Reset your password? </a>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:Label ID="lb_reminder" runat="server" Text="Label" Visible="False"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                   
                &nbsp;</form>
            </div>
        </div>
    	<div class="feature-section">	
        	<div class="feature-image">
           		<a class="feature-image-left" href="/">
                </a>
            </div>
            <div class="feature-video">
            	<a class="feature-image-right" href="/">
                </a>
            </div>
    	</div>
        <div class="find-us">	
            <h3>Follow us</h3>				
            <ul class="follow">
                <li>
                    <a href="http://twitter.com/evernote" class="exit_tracking" data-label="Twitter">
                    <span class="link-text">Twitter</span></a>
                </li>
                <li>
                    <a href="http://facebook.com/evernote/" class="exit_tracking" data-label="Facebook">
                    <span class="link-text">Facebook</span></a>
                </li>
                <li>
                    <a href="https://plus.google.com/+evernote" class="exit_tracking" data-label="Google Plus">
                    <span class="link-text">Google+</span></a>
                </li>
                <li>
                    <a href="http://www.youtube.com/user/EvernoteVideos" class="exit_tracking" data-label="YouTube">
                    <span class="link-text">YouTube</span></a>
                </li>
			</ul>
        </div>
        <div class="whats-news">
            <h3 class="news-slogan">What's New</h3>
            <ul class="news-1">
            	<li>Next incoming video demo - Dec/3rd!</li>
                <li>With help of us, Alice Save 20% household last month.</li>
                <li>Shared with friends on facebook get 1 month premium account upgrade right now</li>
            </ul>
        </div>
    </div>
      
</asp:Content>