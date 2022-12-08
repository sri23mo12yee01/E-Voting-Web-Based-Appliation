<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="evote.AdminLogin" MasterPageFile="~/Master1.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID= "ContentPlaceHolder1" runat="server">
    
 

            <asp:ScriptManager ID="ScriptManager1" runat="server" />

 

            <div>

 

            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">

 

            <asp:ListItem Selected="True">Hello!</asp:ListItem>

 

            <asp:ListItem>First Time!</asp:ListItem>

 

            <asp:ListItem>second Time!</asp:ListItem>

 

            <asp:ListItem>Third Time!</asp:ListItem>

 

            </asp:RadioButtonList></div>

 

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">

 

            <ContentTemplate>

 

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                <asp:TextBox runat="server" id="txtCount"/>  

 

            </ContentTemplate>

 

            <Triggers>

 

            <asp:AsyncPostBackTrigger ControlID="RadioButtonList1" EventName="SelectedIndexChanged" /> </Triggers>

            </asp:UpdatePanel>

       

</asp:Content>

