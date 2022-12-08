<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nagpur.aspx.cs" Inherits="evote.Nagpur" MasterPageFile="~/Master1.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   


    <br />
   


    <table style="width: 100%">
        <tr>
            <td style="width: 59px">
                Sr.No</td>
            <td style="width: 300px">
                Name</td>
            <td>
                Party</td>
            <td>
                Symbol</td>
            <td>
                Vote</td>
        </tr>
        <tr>
            <td style="width: 59px">
                1</td>
            <td style="width: 300px">
                Dr.PRAKASH SHANKAR RAMTEKE</td>
            <td>
                BHUJAN MUKTI PARTY</td>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/1/bbp/ps.jpg" 
                    style="width: 14px" Width="30px" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="VOTE" GroupName="Evote" AutoPostBack="true"/>
            </td>
        </tr>
        <tr>
            <td style="width: 59px">
                2</td>
            <td style="width: 300px">
                RAVINDRANATH MADHAV PATIL</td>
            <td>
                AMBEDKAR PARTY</td>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/1/bjp/bjp.jpg" 
                    Width="30px" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton2" runat="server" Text="VOTE" GroupName="Evote" AutoPostBack="true" />
            </td>
        </tr>
        <tr>
            <td style="width: 59px">
                3</td>
            <td style="width: 300px">
                ANIRUDH DHONDU WANKAR</td>
            <td>
                BBM</td>
            <td>
                <asp:Image ID="Image3" runat="server" 
                    ImageUrl="~/Image/1/congress/download.jpg" Width="30px" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton3" runat="server" Text="VOTE" GroupName="Evote" AutoPostBack="true"/>
            </td>
        </tr>
        <tr>
            <td style="width: 59px">
                4</td>
            <td style="width: 300px">
                GAVANDE GAJANAN BALAJI</td>
            <td>
                INC</td>
            <td>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Image/1/ncp/sharad-pawar.jpg" 
                    Width="30px" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton4" runat="server" Text="VOTE" GroupName="Evote" AutoPostBack="true"  />
            </td>
        </tr>
        <tr>
            <td style="width: 59px">
                5</td>
            <td style="width: 300px">
                SAU SUNITA BHAGVAN GAIKWAD</td>
            <td>
                BJP</td>
            <td>
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Image/1/rpi/ridp.jpg" 
                    Width="30px" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton5" runat="server" Text="VOTE" GroupName="Evote" AutoPostBack="true" />
            </td>
        </tr>
        <tr>
            <td style="width: 59px">
                &nbsp;</td>
            <td style="width: 300px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 59px">
                &nbsp;</td>
            <td style="width: 300px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="CONFIRM VOTE" 
                    onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   


    <br />
    <br />
    <br />
   

</asp:Content> 
