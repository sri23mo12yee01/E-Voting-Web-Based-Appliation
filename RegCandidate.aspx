<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegCandidate.aspx.cs" Inherits="evote.RegCandidate" MasterPageFile="~/Master1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegisterConnectionString %>" 
            SelectCommand="SELECT * FROM [RegisteredCandidate]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Horizontal" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Candidate_Photo" HeaderText="Candidate_Photo" 
                    SortExpression="Candidate_Photo" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Party" HeaderText="Party" SortExpression="Party" />
                <asp:BoundField DataField="Symbol" HeaderText="Symbol" 
                    SortExpression="Symbol" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        
        
    </div>
   </asp:Content>