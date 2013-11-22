<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>
<%@ Register src="controls/WebLogoControl.ascx" tagname="WebLogoControl" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <link id="Link1" rel="stylesheet" runat="server" media="screen" href="./Content/Register.min.css" />
    

        <div class="Register-container">
           
        <div class="register">
            <h1>Create an Online Household Expense Management Account</h1>
            <div class="page-intro">
            	<label>Online Household Expense
&nbsp;Management helps you track every expense in your life and let you see how you spend them.</label>
            </div>
            <div class="register-controls">
            	<div class="reg-header">
                <label>Register</label>
                <label class="switch">Or <a href="./Default.aspx"><span>Login in</span></a></label>
            	</div>
                <div class="signin">
            	    <form id="register_form" runat="server">
                
                        



                        
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                        <label>Email address
                                </label>
                        <asp:TextBox ID="tb_UserEmail" runat="server" MaxLength="50" CssClass="Register-useremail"></asp:TextBox>
                                <asp:BalloonPopupExtender ID="tb_UserEmail_BalloonPopupExtender" runat="server" TargetControlID="tb_UserEmail" 
                                    BalloonSize="Small" BalloonPopupControlID="pl_Email" BalloonStyle="Cloud" UseShadow="true" DisplayOnMouseOver="false" DisplayOnFocus="True">
                                </asp:BalloonPopupExtender>

                        <label>User name
                                </label>
                       <asp:TextBox ID="tb_UserName" runat="server" MaxLength="25" CssClass="Register-username"></asp:TextBox>
                                <asp:BalloonPopupExtender ID="tb_UserName_BalloonPopupExtender" runat="server" TargetControlID="tb_UserName"
                                     BalloonSize="Medium" BalloonPopupControlID="pl_Username" BalloonStyle="Cloud" UseShadow="true" DisplayOnMouseOver="False" DisplayOnFocus="True">
                                </asp:BalloonPopupExtender>


                                <label>Password
                                </label>
                        <asp:TextBox ID="tb_Password" runat="server" MaxLength="25" CssClass="Register-password" TextMode="Password"></asp:TextBox>
                                <asp:BalloonPopupExtender ID="tb_Password_BalloonPopupExtender" runat="server" TargetControlID="tb_Password"
                                     BalloonSize="Medium" BalloonPopupControlID="pl_Password" BalloonStyle="Cloud" UseShadow="true" DisplayOnMouseOver="False" DisplayOnFocus="True">
                                </asp:BalloonPopupExtender>


                        
                       <%-- <asp:PasswordStrength ID="tb_Password_PasswordStrength" runat="server" Enabled="True" TargetControlID="tb_Password"
                        DisplayPosition ="Rightside" StrengthIndicatorType="Text" TextCssClass="TextIndicator_tb_Password"
                        MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" MinimumSymbolCharacters ="1" MinimumUpperCaseCharacters="1"    
                        TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent" PreferredPasswordLength="10" PrefixText="Streng:">

                        </asp:PasswordStrength>--%>
                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                </asp:ToolkitScriptManager>
                        
                                <asp:Label ID="lb_reminder" runat="server" Text="Please input normal email address" Visible="False"></asp:Label>
                
                                <uc1:WebLogoControl ID="WebLogoControl1" runat="server" />
                


          
                            </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:Button ID="btn_Reg" runat="server" OnClick="btn_Reg_Click" Text="Register" CssClass="Register-button" style="CURSOR:pointer"/> 
                        <asp:Panel ID="pl_Username" runat="server">
                            Normal Username should start with character and you can use numbers or characters then.
                                </asp:Panel>
                        <asp:Panel ID="pl_Email" runat="server">
                                   Use your normal Email account.Example: Example@gmail.com
                                            </asp:Panel>
                        <asp:Panel ID="pl_Password" runat="server">
                            normal Password formed by number and letters and at least 6 characters long.
                                </asp:Panel>
                    </form>
                </div>
            </div>
            <div class="tour1">
            </div>
        </div>
    </div>

</asp:Content>

