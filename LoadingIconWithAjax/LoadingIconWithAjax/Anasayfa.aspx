<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="LoadingIconWithAjax.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
              </br>
                &nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verileri Getir" />
                <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                    <ProgressTemplate>
                       </br>
                        <div>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <img alt="" src="ajax-loader.gif"></img>
                        </div>
                        <br>
                        <br></br>
                        </br>
                        </br>
                    </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </br> 
            </ContentTemplate>
        </asp:UpdatePanel>     
    </form>
</body>
</html>
