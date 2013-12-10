<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your contact page.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>425.555.0100</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>425.555.0199</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                
            </h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:Support@example.com">Support@example.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:General@example.com">General@example.com</a></span>

        </p>

                              
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

<asp:Label ID="label" runat="server" Text="密码"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:PasswordStrength ID="TextBox1_PasswordStrength" runat="server" TargetControlID="TextBox1">
                </asp:PasswordStrength>

                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Button" />

            </ContentTemplate>
         </asp:UpdatePanel>      
        <asp:UpdatePanelAnimationExtender ID="UpdatePanelAnimationExtender1" runat="server" TargetControlID="UpdatePanel1">
            <Animations>

            <OnUpdated>

                <Sequence>

                    <Parallel duration="2" Fps="30">

                          <Color  StartValue="#ff3f3f" EndValue="#ffffff" Property="style" PropertyKey="backgroundColor" />

                    </Parallel>

                </Sequence>

            </OnUpdated>

        </Animations>

        </asp:UpdatePanelAnimationExtender>

      

    

                



    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            One Microsoft Way<br />
            Redmond, WA 98052-6399
        </p>
    </section>
    </form>
</asp:Content>