<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Voterlist.aspx.cs" Inherits="evote.Voterlist" MasterPageFile="~/Master1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:SqlDataSource ID="SqlDataSourceVoter" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegisterConnectionString %>" 
        SelectCommand="SELECT * FROM [Voterlist]"></asp:SqlDataSource>
   
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSourceVoter" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
        <asp:BoundField DataField="Elector's Name" HeaderText="Elector's Name" 
            SortExpression="Elector's Name" />
        <asp:BoundField DataField="Father's Name" HeaderText="Father's Name" 
            SortExpression="Father's Name" />
        <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
        <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
    </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    



</asp:Content>
