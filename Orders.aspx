<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Customers.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="South African Breweries" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
            <br />
            <br />
            <div style="background-image: url('sabBack.jpg'); color: #FFFFFF; margin-top: 10px; margin-right: 40px; margin-left: 40px; padding: 10px; position: inherit; display: inline; float: left; visibility: inherit; width: 1029px;">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Castle lager</asp:ListItem>
                    <asp:ListItem>Castle Lite</asp:ListItem>
                    <asp:ListItem>Castle Stout Milk</asp:ListItem>
                    <asp:ListItem>Castle stout Milk Chocolate</asp:ListItem>
                    <asp:ListItem>Castle Free</asp:ListItem>
                    <asp:ListItem>Black Label</asp:ListItem>
                    <asp:ListItem>Redd&#39;s</asp:ListItem>
                    <asp:ListItem>Hansa</asp:ListItem>
                    <asp:ListItem>NewLands Spring</asp:ListItem>
                    <asp:ListItem>Flying Fish</asp:ListItem>
                    <asp:ListItem>Brutal fruit</asp:ListItem>
                </asp:RadioButtonList>

                <div style="float:left"><asp:Label ID="Label2" runat="server" Text="Amount Required: "></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="textBoxAmount" runat="server"></asp:TextBox>
                </div>
                <br />
                <br />
                <div><asp:Label ID="Label3" runat="server" Text="Size: "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="textBoxSize" runat="server"></asp:TextBox>
                </div>
                <br />
                <div><asp:Label ID="Label" runat="server" Text="Date To Deliver: "></asp:Label>
                    <asp:Calendar ID="Calender1" runat="server">
                        <DayHeaderStyle BackColor="#3333FF" />
                        <DayStyle BackColor="#66FF99" />
                    </asp:Calendar></div>
               
                <br />
            <div><asp:Button ID="btnOrder" runat="server" Text="Place Order" OnClick="btnOrder_Click" />
                <br />
            </div>
            <asp:Label ID="label5" runat="server" Text=""></asp:Label> 
            <br />
            <div><asp:Button ID="btnDone" runat="server" Text="DONE" OnClick="btnDone_Click" /></div>
            
        </div>  
        
    </form>
</body>
</html>
