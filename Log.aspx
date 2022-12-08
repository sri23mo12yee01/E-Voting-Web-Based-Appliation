<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="evote.Log" MasterPageFile="~/MasterPage.Master"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="font-weight: 500; font-size: xx-large; text-align: center" 
    style="font-family: 'Copperplate Gothic Bold'" >
    
        CANDIDATE
    
        LOGIN PAGE<br />
    </div>
    <table class="style1" align="center" style="font-family: David">
        <tr>
            <td class="style3">
                Username</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxUsername" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUsername" ErrorMessage="Enter Username" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Password</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLogPassword" 
                    runat="server" ControlToValidate="TextBoxPassword" 
                    ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button_login" runat="server" onclick="Button_login_Click" 
                    Text="LOGIN" Width="79px" BorderStyle="Inset" ForeColor="#0066FF" />
            &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">CANDIDATE REGISTER</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admin.aspx">ADMIN LOGIN</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
    </asp:Content>
   