<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Voterlogin.aspx.cs" Inherits="evote.Voterlogin" MasterPageFile="~/Masterpage.Master" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="font-weight: 400; font-size: xx-large; text-align: center" style="font-family: Copperplate Gothic Bold">    
        &nbsp;VOTER
    
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
                Location</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                    <asp:ListItem>Select Place</asp:ListItem>
                    <asp:ListItem>Ahmednagar</asp:ListItem>
                    <asp:ListItem>Nagpur</asp:ListItem>
                    <asp:ListItem>Amravati</asp:ListItem>
                    <asp:ListItem>Chandrapur</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                </asp:DropDownList>
                </td>
           
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Buttonlog" runat="server" Text="LogIn" 
                    onclick="Buttonlog_Click" />
                </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
    </asp:Content>
    
