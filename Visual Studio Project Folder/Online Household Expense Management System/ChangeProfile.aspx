<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeProfile.aspx.cs" Inherits="ChangeProfile" MasterPageFile="~/Site.Master"%>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link id="Link" rel="stylesheet" runat="server" href="./Content/ChangeProfile.css" />
     <div class="container">
    	<h1>Personal Settings</h1>
         <form runat="server">
         
        
        <div class="contact">
        	<label class="section-name">Contact</label>
            <label class="textTitle">First Name</label>
            <%--<input type="text" id="ip_userfirstName" class="textinput"/>--%>
            <asp:TextBox ID="tb_Userfirstname" runat="server" Maxlength="50" CssClass="textinput"></asp:TextBox>
            <label class="textTitle">Last Name</label>
            <%--<input type="text" id="ip_userLastName" class="textinput"/>--%>
            <asp:TextBox ID="tb_UserLastname"  runat="server" Maxlength="50" CssClass="textinput" ></asp:TextBox>
        </div>

        <div class="account">
        	<label class="section-name">Password</label>
            <label class="textTitle">Current Password</label>
            <%--<input type="password" id="oldPassword" class="textinput"/>--%>
            <asp:TextBox ID="tb_oldPassword"     runat="server" Maxlength="50" CssClass="textinput" TextMode="Password"></asp:TextBox>
            <label class="textTitle">New Password</label>
            <%--<input type="password" id="newPassword" class="textinput"/>--%>
            <asp:TextBox ID="tb_newPassword"     runat="server" Maxlength="50" CssClass="textinput" TextMode="Password" ></asp:TextBox>
            <label class="textTitle">Confirm Password</label>
           <%-- <input type="password" id="comfirmPassword" class="textinput"/>--%>
            <asp:TextBox ID="tb_confirmPassword" runat="server" Maxlength="50" CssClass="textinput" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="输入的密码不同（英文）"
            ControlToCompare="tb_newPassword" ControlToValidate="tb_confirmPassword"></asp:CompareValidator>
        </div>
       
		<%--<input type="button" class="button" id="Save" value="Save Profile"/>--%>
        <asp:Button ID="btn_SaveValue"        runat="server" Text="Save Profile"   CssClass="buttonSave" OnClick="btn_SaveValue_Click"/>
        <%--<input type="button" class="button" id="Cancel" value="Cancel Changes"/>--%>
        <asp:Button ID="btn_CancelChange"     runat="server" Text="Cancel Changes" CssClass="buttonCancel" OnClick="btn_CancelChange_Click"/>
        </form>
    </div>



<%--    <div>
        <div class="leftpart">
            <table class="tb_changeProfile" border="1">
                <tr><td>Personal information</td></tr>
                <tr><td>&nbsp;&nbsp;&nbsp;name</td></tr>
                <tr><td>&nbsp;&nbsp;&nbsp;age</td></tr>
                <tr><td>&nbsp;&nbsp;&nbsp;marrige</td></tr>
                <tr><td>Safty</td></tr>
                <tr><td>&nbsp;&nbsp;&nbsp;password</td></tr>
                <tr><td>Education</td></tr>
                <tr><td>&nbsp;&nbsp;&nbsp;middle school</td></tr>
                <tr><td>&nbsp;&nbsp;&nbsp;high school</td></tr>
                <tr><td>&nbsp;&nbsp;&nbsp;university</td></tr>
            </table>
        </div>
        <div class="rightpart">
            <form class="fm_changeProfile">
            </form>
        </div>

    </div>--%>


</asp:Content>

