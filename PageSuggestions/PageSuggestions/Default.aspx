<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PageSuggestions.Sugerencias" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="text-align: center">
    <div>
        <h1 style="text-align: center; text-decoration: underline; font-size: 50px;">AGA Sugerencias</h1>        
        <h3 style="text-align: center">Sede o Lugar</h3>
        <div style="text-align: center; display: inline-block;">
            <dx:BootstrapRadioButtonList ID="BootstrapRadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <Items>
                    <dx:BootstrapListEditItem Text="CARRIZALES" Value="CARRIZALES" Selected="true">
                    </dx:BootstrapListEditItem>
                    <dx:BootstrapListEditItem Text="NATALIA" Value="NATALIA">
                    </dx:BootstrapListEditItem>
                    <dx:BootstrapListEditItem Text="CALIFORNIA" Value="CALIFORNIA">
                    </dx:BootstrapListEditItem>
                    <dx:BootstrapListEditItem Text="VALERIE" Value="VALERIE">
                    </dx:BootstrapListEditItem>
                    <dx:BootstrapListEditItem Text="DON VICTOR" Value="DON VICTOR">
                    </dx:BootstrapListEditItem>
                </Items>
            </dx:BootstrapRadioButtonList>
        </div>
        <div>
            <p class="text-secondary" style="text-align: center">
                Ingrese su sugerencia o queja
            </p>
        </div>
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Height="73px" OnTextChanged="TextBox1_TextChanged" Width="560px" TextMode="MultiLine" ></asp:TextBox>
        </div>
        </div>
        <div style="text-align: center">
            
            <dx:BootstrapButton ID="BootstrapButton1" runat="server" AutoPostBack="false" OnClick="BootstrapButton1_Click" style="margin-bottom: 0px" Text="Enviar">
            </dx:BootstrapButton>
            
        </div>
    </form>
</body>
</html>
