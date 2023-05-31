<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="StudentInformationCrudOperation.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br />

<table class="nav-justified">
    <tr>
        <td colspan="2">
            <asp:Label ID="IblTitle" runat="server" Text="Student Information"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 167px; height: 31px;">
            <asp:Label ID="IblName" runat="server" Text="Name"></asp:Label>
        </td>
        <td style="height: 31px">
            <asp:TextBox ID="txtName" runat="server" Width="215px"></asp:TextBox>
        </td>
        <td rowspan="9">
            <asp:GridView ID="dgViewStudents" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" Height="316px" Width="939px" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 33px; margin-right: 93px; margin-bottom: 0px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" DataFormatString="{0:MM/dd/yyy}" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
        </td>
        <td style="height: 31px"></td>
    </tr>
    <tr>
        <td style="width: 167px">
            <asp:Label ID="IblEmail" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Width="214px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 167px">
            <asp:Label ID="IblGender" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem>Choose Any</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 167px">
            <asp:Label ID="IblDOB" runat="server" Text="Date Of Birth"></asp:Label >
        </td>
        <td>
            <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="214px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 167px">&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes , I Agree!" />
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 167px">
            <asp:Label ID="lblSID" runat="server" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 167px">&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Width="45px" />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Width="70px" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Width="66px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 167px">&nbsp;</td>
        <td>
            <asp:Button ID="btnCancle" runat="server" Text="Cancle Operation" Width="179px" OnClick="btnCancle_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 167px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 167px; height: 20px;"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td style="width: 167px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
