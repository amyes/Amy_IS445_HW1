<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="HW6._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homework 6</title>
    <link href="Css/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    
    <form method="post" action="default.aspx" id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <br />
            <h1> A Demo of Wizard Server Control</h1><br />
            <br />
            <asp:Wizard ID="Wizard1" runat="server" Width="936px" ActiveStepIndex="0" Height="293px" OnFinishButtonClick="Wizard1_FinishButtonClick">
                <FinishNavigationTemplate>
                    <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
                </FinishNavigationTemplate>
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                </StartNavigationTemplate>
                <WizardSteps>
                    <asp:WizardStep runat="server" title="User Information">
                        <asp:Label ID="NameLabel" runat="server" Text="Name:" ></asp:Label>
                        <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="AddressLabel" runat="server" CssClass="auto-style1" Text="Address:"></asp:Label>
                        <asp:TextBox ID="AddressTextBox" runat="server" Height="75px" Width="236px" CssClass="auto-style1"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Payment Information" StepType="Finish">
                        Card Type:
                        <asp:DropDownList ID="CardType" runat="server" OnSelectedIndexChanged="CardType_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem>Visa</asp:ListItem>
                            <asp:ListItem>MasterCard</asp:ListItem>
                            <asp:ListItem>American Express</asp:ListItem>
                            <asp:ListItem>Discover</asp:ListItem>
                        </asp:DropDownList>
                        <br/>Card Number:
                        <asp:TextBox ID="CardNumber" runat="server"></asp:TextBox>
                        <br />
                        Card Expiration:<br/>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                        
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Done" StepType="Complete">
                        <asp:Label ID="Done" runat="server"></asp:Label>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </asp:Panel>
    </div>
                <asp:TextBox ID="SetDate" runat="server" Visible="False" OnDataBinding="Calendar1_SelectionChanged" OnTextChanged="Calendar1_SelectionChanged"></asp:TextBox>
    </form>
</body>
</html>
