﻿<%@ Page Title="" Language="C#" MasterPageFile="~/headq/headQ.Master" AutoEventWireup="true" CodeBehind="update-criminal.aspx.cs" Inherits="crimemanageX.headq.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Update Police Station</title>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="cpheading" runat="server">
    View / Update Criminals

</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="cpadmin" runat="server">
<h4>Hello <asp:Label ID="validuser" runat="server" Text="Label"></asp:Label></h4>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpholderbody" runat="server">

    <div id="findx">


<center>
        </center>


    </div>

    <center> 



        <asp:GridView ID="gv_updatestation" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" OnRowCancelingEdit="gv_updatestation_RowCancelingEdit1" OnRowEditing="gv_updatestation_RowEditing1" OnRowUpdating="gv_updatestation_RowUpdating1">
            <Columns>
                <asp:TemplateField HeaderText="Criminal ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("criminalID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("criminalID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sex">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Sex") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="D.O.B">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("dob") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("dob") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Details">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Details") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Details") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" HeaderText="Update " ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>



    </center>

</asp:Content>