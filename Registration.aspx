<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="evote.Registration" MasterPageFile="~/Master1.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Welcome..."></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button_logout" runat="server" onclick="Button_logout_Click" 
            Text="LogOut" />
        <br />
        <asp:Label ID="Labelreg" runat="server" style="text-align: center" 
            Text="REGISTRATION FORM"></asp:Label>
    </p>
    <table class="style1" align="center">
        <tr>
            <td class="style2">
                NAME</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxsurname" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxsurname" ErrorMessage="Enter Surname" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Father_Name</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxname" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxname" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Sex</td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="180px">
                    <asp:ListItem>Select Sex</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="Select Sex" ForeColor="Red" 
                    InitialValue="Select Sex"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Correspondence</td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList3" runat="server" Width="180px">
                    <asp:ListItem>Select Correspondence</asp:ListItem>
                    <asp:ListItem>FR.</asp:ListItem>
                    <asp:ListItem>in.</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="DropDownList3" ErrorMessage="Select Corres." ForeColor="Red" 
                    InitialValue="Select Correspondence"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Political affiliation</td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                    <asp:ListItem>Select Party</asp:ListItem>
                    <asp:ListItem>BJP</asp:ListItem>
                    <asp:ListItem>Congress</asp:ListItem>
                    <asp:ListItem>DMK</asp:ListItem>
                    <asp:ListItem>AIDMK</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select Party" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Occupation</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxoccupation" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBoxoccupation" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">Enter occupation</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                PERMANENT RESIDENTIAL ADDRESS</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxpadd" runat="server" Width="180px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBoxpadd" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">Enter permanent address</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="height: 85px">
                CAMPAIGN OFFICE ADDRESS</td>
            <td class="style5" style="height: 85px">
                <asp:TextBox ID="TextBoxcadd" runat="server" Width="180px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="height: 85px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBoxcadd" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">Enter campaign address</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                E-MAIL ID</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxemail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">Enter E-mail address</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="Enter valid e-mail id" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                TELEPHONE</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxtele" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBoxtele" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">Enter Mobile No.</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="next" runat="server" onclick="next_Click" Text="Register" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="Reset1" type="reset" value="reset" onclick="return Reset1_onclick()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
    <script language="javascript" type="text/javascript">

    </script>
</asp:Content>
   