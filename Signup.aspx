<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Fitness.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Sign up for your personal trainer! </h2>
    <br />
    <formview id="form1" runat="server" class="form-horizontal" DefaultFocus="txtEmail" DefaultButton="btnSubmit">

        <div class="form-group">
            <label class="control-label col-sm-3">First Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtFirstName" runat="server"  BorderColor="black" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control"></asp:TextBox>  
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3">Last Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtLastName" runat="server"  BorderColor="black" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3">Email Address:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtEmail1" runat="server"  BorderColor="black" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control" TextMode="Email"></asp:TextBox>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvEmail1" runat="server" ErrorMessage="Email address is required" ControlToValidate="txtEmail1" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    
                    <br />
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Trainer Perference:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtTrainer" runat="server"  BorderColor="black" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" Width="63px" />
        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

    </formview>
    
</asp:Content>
