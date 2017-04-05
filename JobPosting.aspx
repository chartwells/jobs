<%@ Page Language="C#" AutoEventWireup="false" CodeFile="JobPosting.aspx.vb" Inherits="Projects_Chartwells_JobPosting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    </div>
        <div style="margin-left: 120px">
            <asp:Label ID="JobDate" runat="server" Text="Job Date"></asp:Label>
            </br>
            <asp:DropDownList ID="DD_DateDay" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="DD_DateMonth" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="DD_DateYear" runat="server"></asp:DropDownList>
            </br>
            <asp:Label ID="StartTime" runat="server" Text="Start Time"></asp:Label>
            <asp:DropDownList ID="DD_StartTimeHour" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="DD_StartTimeMin" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="DD_StartAmPm" runat="server"></asp:DropDownList>
            </br>
            <asp:Label ID="EndTime" runat="server" Text="End Time"></asp:Label>            <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="DD_EndTimeHour" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="DD_EndTimeMin" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="DD_EndAmPm" runat="server"></asp:DropDownList>
            </br>
            <asp:Label ID="Area" runat="server" Text="End Time"></asp:Label> 
            <asp:DropDownList ID="DD_Area" runat="server"></asp:DropDownList>
            <asp:Button ID="JobPostingSubmit" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
