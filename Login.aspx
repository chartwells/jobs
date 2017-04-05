<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CHARTWELLS</title>
    <link href="CSS/StyleSheet.css" rel="stylesheet" />
    
</head>
<body>
  
    <div id="container">
         <div id="logo">
             <img src="images/TAMU.png" style="background-color:#5d0f0f" />
         </div>
        <br />
        <br />
        <div class="login-page">
          <div class="form">
              <img src="Images/chartwells-logo.png" style="width:250px; padding-bottom:20px" />  
                  <form class="login-form" runat="server">
                     <asp:TextBox ID="txtEmail" runat="server" placeholder="E-Mail ID" ></asp:TextBox>
                       <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                      <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="red"></asp:RegularExpressionValidator>
                      </form>
          </div>
        </div>
    </div>
    
</body>
</html>
