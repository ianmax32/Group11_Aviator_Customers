<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Customers.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:darkcyan">
    <asp:Label ID="Label1" runat="server" Text="South African Breweries" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
    <br />
    <br />
    <div style="float:left; background-image: url('download.png')">
        <asp:Label ID="Label4" runat="server" Text="Please make you order" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
    </div>
    
    <form id="form1" runat="server" style="font-size: large; font-weight: normal; background-color: #669999; margin: 15px; padding: 15px; position: static; float:right; top: -4px; left: -3px; width: 1200px;">
       
     
        <div style="height: 740px; width:281px; float:left">
            <br />
            <br />
            <div>
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
            </div>
            
             <div style="display:inline-flex">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <br />
                <div style="display:=flex"><asp:Label ID="Label" runat="server" Text="Date To Deliver: "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Calendar ID="Calender1" runat="server" OnSelectionChanged="Calender1_SelectionChanged">
                        <DayHeaderStyle BackColor="#3333FF" />
                        <DayStyle BackColor="#66FF99" />
                    </asp:Calendar></div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <br />
            <div><asp:Label ID="label5" runat="server" Text=""></asp:Label>
                <br />
                <br />
            </div>
            <div>
            &nbsp;&nbsp;&nbsp; 
            </div>
                
            <br />
            <br />
            <br />
            
        </div>  

        <div><asp:Label ID="Label2" runat="server" Text="Amount Required: "></asp:Label>
                    <asp:TextBox ID="textBoxAmount" runat="server"></asp:TextBox>
                <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Size: "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="textBoxSize" runat="server" Height="16px"></asp:TextBox>
                <br />
            <br />
               <asp:Button ID="btnOrder" runat="server" Text="Place Order" OnClick="btnOrder_Click" Width="303px" Height="52px" />
                <br />
            <br />
                <asp:ListBox ID="ListBoxOrderSummary" runat="server" Rows="7" Width="444px" Height="205px">
                    <asp:ListItem>Order Summary</asp:ListItem>
                </asp:ListBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btnDone" runat="server" Text="DONE AND LOGOUT" OnClick="btnDone_Click" Height="46px" Width="196px" />
            </div>   
            
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
