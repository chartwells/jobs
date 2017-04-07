<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SetUserSchedule.aspx.cs" Inherits="SetUserSchedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 120px">
            <asp:Label ID="JobDate" runat="server" Text="Available Date"></asp:Label>
            </br>
            <asp:DropDownList ID="DD_DateMonth" runat="server">
                <asp:ListItem Text="1" Value="01"></asp:ListItem>
                <asp:ListItem Text="2" Value="02"></asp:ListItem>
                <asp:ListItem Text="3" Value="03"></asp:ListItem>
                <asp:ListItem Text="4" Value="04"></asp:ListItem>
                <asp:ListItem Text="5" Value="05"></asp:ListItem>
                <asp:ListItem Text="6" Value="06"></asp:ListItem>
                <asp:ListItem Text="7" Value="07"></asp:ListItem>
                <asp:ListItem Text="8" Value="08"></asp:ListItem>
                <asp:ListItem Text="9" Value="09"></asp:ListItem>
                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                <asp:ListItem Text="11" Value="11"></asp:ListItem>
                <asp:ListItem Text="12" Value="12"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DD_DateDay" runat="server">
                <asp:ListItem Text="1" Value="01"></asp:ListItem>
                <asp:ListItem Text="2" Value="02"></asp:ListItem>
                <asp:ListItem Text="3" Value="03"></asp:ListItem>
                <asp:ListItem Text="4" Value="04"></asp:ListItem>
                <asp:ListItem Text="5" Value="05"></asp:ListItem>
                <asp:ListItem Text="6" Value="06"></asp:ListItem>
                <asp:ListItem Text="7" Value="07"></asp:ListItem>
                <asp:ListItem Text="8" Value="08"></asp:ListItem>
                <asp:ListItem Text="9" Value="09"></asp:ListItem>
                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                <asp:ListItem Text="11" Value="11"></asp:ListItem>
                <asp:ListItem Text="12" Value="12"></asp:ListItem>
                <asp:ListItem Text="13" Value="13"></asp:ListItem>
                <asp:ListItem Text="14" Value="14"></asp:ListItem>
                <asp:ListItem Text="15" Value="15"></asp:ListItem>
                <asp:ListItem Text="16" Value="16"></asp:ListItem>
                <asp:ListItem Text="17" Value="17"></asp:ListItem>
                <asp:ListItem Text="18" Value="18"></asp:ListItem>
                <asp:ListItem Text="19" Value="19"></asp:ListItem>
                <asp:ListItem Text="20" Value="20"></asp:ListItem>
                <asp:ListItem Text="21" Value="21"></asp:ListItem>
                <asp:ListItem Text="22" Value="22"></asp:ListItem>
                <asp:ListItem Text="23" Value="23"></asp:ListItem>
                <asp:ListItem Text="24" Value="24"></asp:ListItem>
                <asp:ListItem Text="25" Value="25"></asp:ListItem>
                <asp:ListItem Text="26" Value="26"></asp:ListItem>
                <asp:ListItem Text="27" Value="27"></asp:ListItem>
                <asp:ListItem Text="28" Value="28"></asp:ListItem>
                <asp:ListItem Text="29" Value="29"></asp:ListItem>
                <asp:ListItem Text="30" Value="30"></asp:ListItem>
                <asp:ListItem Text="31" Value="31"></asp:ListItem>
            </asp:DropDownList>
            </br>
            <asp:Label ID="StartTime" runat="server" Text="Start Time"></asp:Label>
            <asp:DropDownList ID="DD_StartTimeHour" runat="server">
                <asp:ListItem Text="0" Value="0"></asp:ListItem>
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
                <asp:ListItem Text="6" Value="6"></asp:ListItem>
                <asp:ListItem Text="7" Value="7"></asp:ListItem>
                <asp:ListItem Text="8" Value="8"></asp:ListItem>
                <asp:ListItem Text="9" Value="9"></asp:ListItem>
                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                <asp:ListItem Text="11" Value="11"></asp:ListItem>
                <asp:ListItem Text="12" Value="12"></asp:ListItem>
                <asp:ListItem Text="13" Value="13"></asp:ListItem>
                <asp:ListItem Text="14" Value="14"></asp:ListItem>
                <asp:ListItem Text="15" Value="15"></asp:ListItem>
                <asp:ListItem Text="16" Value="16"></asp:ListItem>
                <asp:ListItem Text="17" Value="17"></asp:ListItem>
                <asp:ListItem Text="18" Value="18"></asp:ListItem>
                <asp:ListItem Text="19" Value="19"></asp:ListItem>
                <asp:ListItem Text="20" Value="20"></asp:ListItem>
                <asp:ListItem Text="21" Value="21"></asp:ListItem>
                <asp:ListItem Text="22" Value="22"></asp:ListItem>
                <asp:ListItem Text="23" Value="23"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DD_StartTimeMin" runat="server">
                <asp:ListItem Text="0" Value="00"></asp:ListItem>
                <asp:ListItem Text="15" Value="15"></asp:ListItem>
                <asp:ListItem Text="30" Value="30"></asp:ListItem>
                <asp:ListItem Text="45" Value="45"></asp:ListItem>                                                
            </asp:DropDownList>
            <asp:DropDownList ID="DD_StartAmPm" runat="server">
                <asp:ListItem Text="AM" Value="AM"></asp:ListItem>
                <asp:ListItem Text="AM" Value="PM"></asp:ListItem>  
            </asp:DropDownList>
            </br>
            <asp:Label ID="EndTime" runat="server" Text="End Time"></asp:Label>
            <asp:DropDownList ID="DD_EndTimeHour" runat="server">
                <asp:ListItem Text="0" Value="0"></asp:ListItem>
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
                <asp:ListItem Text="6" Value="6"></asp:ListItem>
                <asp:ListItem Text="7" Value="7"></asp:ListItem>
                <asp:ListItem Text="8" Value="8"></asp:ListItem>
                <asp:ListItem Text="9" Value="9"></asp:ListItem>
                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                <asp:ListItem Text="11" Value="11"></asp:ListItem>
                <asp:ListItem Text="12" Value="12"></asp:ListItem>
                <asp:ListItem Text="13" Value="13"></asp:ListItem>
                <asp:ListItem Text="14" Value="14"></asp:ListItem>
                <asp:ListItem Text="15" Value="15"></asp:ListItem>
                <asp:ListItem Text="16" Value="16"></asp:ListItem>
                <asp:ListItem Text="17" Value="17"></asp:ListItem>
                <asp:ListItem Text="18" Value="18"></asp:ListItem>
                <asp:ListItem Text="19" Value="19"></asp:ListItem>
                <asp:ListItem Text="20" Value="20"></asp:ListItem>
                <asp:ListItem Text="21" Value="21"></asp:ListItem>
                <asp:ListItem Text="22" Value="22"></asp:ListItem>
                <asp:ListItem Text="23" Value="23"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DD_EndTimeMin" runat="server">
                <asp:ListItem Text="0" Value="00"></asp:ListItem>
                <asp:ListItem Text="15" Value="15"></asp:ListItem>
                <asp:ListItem Text="30" Value="30"></asp:ListItem>
                <asp:ListItem Text="45" Value="45"></asp:ListItem>  
            </asp:DropDownList>
            <asp:DropDownList ID="DD_EndAmPm" runat="server">
                <asp:ListItem Text="AM" Value="AM"></asp:ListItem>
                <asp:ListItem Text="PM" Value="PM"></asp:ListItem>  
            </asp:DropDownList>
            </br>
            <asp:Button ID="JobPostingSubmit" runat="server" Text="Submit" OnClick="JobPostingSubmit_Click" />
            </br>
            <asp:Label ID="ErrorLabel" runat="server" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
