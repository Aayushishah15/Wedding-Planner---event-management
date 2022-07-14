<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SimpleAppointment.aspx.cs" Inherits="SimpleAppointment" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <br/>
    &nbsp;&nbsp;
    <div align="center" style="height: 932px; width: 1000px; margin-left: 117px">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Times New Roman" 
        Font-Size="12pt" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" 
        Height="900px" Width="1200px" BackColor="Black" BorderColor="Black" 
            BorderStyle="Solid" Font-Bold="True" InternalBorderColor="ActiveCaption" 
            InternalBorderWidth="2px">
        <LocalReport ReportPath="SimpleAppointmentReport.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetData" 
        TypeName="DatabaseDataSetTableAdapters.AppointmentTableAdapter">
    </asp:ObjectDataSource>
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <br />
    <br />
    </div>
    <div>

    </div>
    </form>
</body>
</html>
