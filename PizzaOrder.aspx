<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PizzaOrder.aspx.cs" Inherits="PapaBobsPizza.PizzaOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            color: #CC0000;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style2">Trick Daddy&#39;s Pizza</span></strong><br />
            <br />
            <asp:RadioButton ID="smallButton" runat="server" Checked="True" GroupName="Size" Text="Small (10&quot;) - $5" />
            <br />
            <asp:RadioButton ID="mediumButton" runat="server" GroupName="Size" Text="Medium (12&quot;) - $7" />
            <br />
            <asp:RadioButton ID="largeButton" runat="server" Text="Large (14&quot;) - $9" GroupName="Size" />
            <br />
            <br />
            <asp:RadioButton ID="thinButton" runat="server" Checked="True" GroupName="Crust" Text="Thin Crust" />
            <br />
            <asp:RadioButton ID="deepdishButton" runat="server" GroupName="Crust" Text="Deep Dish ($2)" />
            <br />
            <br />
            <asp:CheckBox ID="pepperoniBox" runat="server" Text="Pepperoni ($2)" />
            <br />
            <asp:CheckBox ID="chickenBox" runat="server" Text="Chicken ($3)" />
            <br />
            <asp:CheckBox ID="onionBox" runat="server" Text="Onions ($.50)" />
            <br />
            <asp:CheckBox ID="peppersBox" runat="server" Text="Peppers ($.75)" />
            <br />
            <asp:CheckBox ID="olivesBox" runat="server" Text="Olives ($.50)" />
            <br />
            <br />
            <span class="auto-style3">Special: Large Pepperoni for $10 or Medium Pepperoni and Chicken for $10</span><br />
            <br />
            <asp:Button ID="purchaseButton" runat="server" Text="Place Order" OnClick="purchaseButton_Click" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server" Text="Total $"></asp:Label>
        </div>
    </form>
</body>
</html>
