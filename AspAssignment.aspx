<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AspAssignment.aspx.cs" Inherits="Assignment.AspAssignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 118px;
        }
        .auto-style2 {
            height: 118px;
            width: 211px;
        }
        .auto-style4 {
            height: 118px;
            width: 350px;
        }
        .auto-style6 {
            height: 110px;
            width: 211px;
        }
        .auto-style7 {
            height: 110px;
            width: 350px;
        }
        .auto-style8 {
            height: 110px;
        }
        .auto-style9 {
            width: 211px;
            height: 71px;
        }
        .auto-style10 {
            width: 350px;
            height: 71px;
        }
        .auto-style11 {
            height: 71px;
        }
        .auto-style12 {
            width: 211px;
            height: 73px;
        }
        .auto-style13 {
            width: 350px;
            height: 73px;
        }
        .auto-style14 {
            height: 73px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 399px">
    
        <table style="width: 100%; height: 367px;">
            <tr>
                <td class="auto-style2">Group&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentdbConnectionString %>" SelectCommand="SELECT * FROM [ThirdYeartb]"></asp:SqlDataSource>
                </td>
                <td class="auto-style4">
                    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource2" DataTextField="RollNo" DataValueField="RollNo" Height="84px" Width="314px" SelectionMode="Multiple"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Studentdb.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [ThirdYeartb]"></asp:SqlDataSource>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Selected Group Member"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Members"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:ListBox ID="ListBox2" runat="server" Height="55px" Width="319px" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" SelectionMode="Multiple" ValidateRequestMode="Enabled">
                        <asp:ListItem>UCSTGO-1001</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="lblSelectedMembers" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label3" runat="server" Text="Answer"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtAnswer" runat="server" Height="32px" TextMode="MultiLine" Width="314px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:Label ID="Label4" runat="server" Text="Fill Your Answer"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
                <td class="auto-style11"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
