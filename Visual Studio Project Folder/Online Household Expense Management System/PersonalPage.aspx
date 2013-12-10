<%@ Page Title="Household Accounting | Use your money wisely!" Language="C#" AutoEventWireup="true" 
     MasterPageFile="~/Site.Master" CodeFile="PersonalPage.aspx.cs" Inherits="PersonalPage" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link id="Link" rel="stylesheet" runat="server" href="./Content/PersonalPage.css" />
    <form id="form1" runat="server">
        
    <div class="left-section">
    <div class="PersonalInfo">
            <div class="profile-image">
                <asp:Image ID="ProfileImage" runat="server" cssClass="ProfileImage"/>
            </div>
            <div class="username">
            	<asp:Label ID="lb_name" runat="server" Text=""></asp:Label>
                WELCOME!
            	<span class="name" id="username"></span>
            </div>
            <div class="user-role">
            	<span class="role" id="userole"></span>
            </div>
    </div>
    <div class="functionalSection">
<%--       	<input type="button" class="change-my-profile" value="Change my profile" />
        <input type="button" class="add-new-plan" value="Add a new plan"/>
        <input type="button" class="delete-plan" value="Delete a plan"/>
        <input type="button" class="get-report" value="generate a report"/>--%>
        <asp:Button ID="btn_ChangeProfile"  runat="server" Text="change my profile" CssClass="changemyprofile" OnClick="btn_ChangeProfile_Click" />
        <asp:Button ID="btn_AddPlan"        runat="server" Text="Add a new plan" CssClass="addnewplan" />
        <asp:Button ID="btn_deletePlan"     runat="server" Text="Delete a plan" CssClass="deleteplan" />
        <asp:Button ID="btn_getReport"      runat="server" Text="generate a report" CssClass="get-report" />
    </div>
  </div>
    <div class="right-section">
    <div class="planSection">
        <div class="addPlanInput">
            <table>
                <tr>
                    <tb>
                        <asp:TextBox ID="tb_planDate"            runat="server" Maxlength="50" CssClass="textinput"></asp:TextBox>
                    </tb>
                    <tb>
                        <asp:TextBox ID="tb_planItemName"        runat="server" Maxlength="50" CssClass="textinput"></asp:TextBox>
                    </tb>
                    <tb>
                        <asp:TextBox ID="tb_planItemPrice"       runat="server" Maxlength="50" CssClass="textinput"></asp:TextBox>
                    </tb>
                    <tb>
                        <asp:TextBox ID="tb_planItemDescription" runat="server" Maxlength="50" CssClass="textinput"></asp:TextBox>
                    </tb>
                </tr>
            </table>
        </div>
        <div class="planListView">
            <asp:ListView ID="ListView1" runat="server"></asp:ListView>
        </div>
    </div>
    <div class="planFunction">
<%--    <input type="button" value="Add an new plan" />
        <input type="button" value="Delete an item" />
        <input type="button" value="Change an item" />
        <input type="button" value="Clear all" />--%>
        <asp:Button ID="btn_AddItem"     runat="server" Text="Add an new item" />
        <asp:Button ID="btn_DeleteItem"  runat="server" Text="Delete an item"  />
        <asp:Button ID="btn_SaveChange"  runat="server" Text="Save Change"  />
        <asp:Button ID="btn_ClearAll"    runat="server" Text="Clear all"  />
        
    </div>
    </div>
    </form>
</asp:Content>

