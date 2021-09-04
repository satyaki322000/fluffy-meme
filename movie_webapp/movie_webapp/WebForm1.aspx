<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="movie_webapp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 513px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="grd_dataset" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grd_dataset_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        Movie name:&nbsp; <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="146px"></asp:TextBox>
        <br />
        <br />
        Lead Actor&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="144px"></asp:TextBox>
        <br />
        <br />
        Actress&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="142px"></asp:TextBox>
        <br />
        <br />
        Release Year <asp:TextBox ID="TextBox3" runat="server" Width="145px"></asp:TextBox>
        <br />
        <br />
        Director Name&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="134px"></asp:TextBox>
        <br />
        <br />
        <asp:HiddenField ID="txtmovid" runat="server" />
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add New Record" />
    </form>
</body>
</html>
