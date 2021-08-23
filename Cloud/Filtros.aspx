<%@ page language="VB" autoeventwireup="false" inherits="FiltrosWEB, App_Web_jver2jhs" %>

<%@ Register Assembly="Janus.Web.GridEX.v3" Namespace="Janus.Web.GridEX.EditControls"
    TagPrefix="jwge" %>
<%@ Register Assembly="Janus.Web.GridEX.v3" Namespace="Janus.Web.GridEX" TagPrefix="jwg" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>e- Route BASE >Filtros</title>
    <link rel="stylesheet" type="text/css" href="EstilosWeb.css" />

    <script type="text/javascript">
function Load()
{
var div =document.getElementById("Update");
div.style.visibility="visible";
}
function TABLE1_onclick() {

}

    </script>

    <style type="text/css">
        a.ClaseRoot
        {
            
            font-weight: normal;
	color: black;
	text-decoration: none;
        }
        a.ClaseParent
        {
        	text-decoration: none;
        	color: black;
        }
        a.ClaseHija
        {
        color: black;
        	text-decoration: none;
        		padding-left: 10px;
	padding-top: 3px;
        }     
         a.ClaseSeleccionada
        {
        	text-decoration: none;
        		padding-left: 10px;
	        padding-top: 3px;
	      font-weight: bold;
        }     
        a.ClaseParent:hover
        {
	       font-weight: bold;
        }     
         a.ClaseHija:hover
        {
	       font-weight: bold;
        }    
         a.ClaseRoot:hover
        {
	      font-weight: bold;
        }    
    </style>
</head>
<body id="CuerpoReportesWeb">
    <form id="form1" runat="server">
        <div style="padding-left: 20px; width: 100%; height: 200px; background-image: url(images/FondoDegradado.gif);
            background-position: top; background-repeat: repeat-x;">
            <table>
                <tr>
                    <td>
                        <img alt="" src="images/ReportesWeb.png" />
                    </td>
                    <td>
                        <asp:Label ID="lbReporteW" runat="server" Text="Reportes Web" Font-Names="Arial"
                            Font-Size="24pt" Font-Bold="true" ForeColor="#191c1f"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Literal ID="litPopUp" runat="server"></asp:Literal>
            <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="600" />
            <table id="TABLE1" border="0" cellpadding="0" cellspacing="0" style="vertical-align: top;
                width: 100%; height: 100%; text-align: left;" onclick="return TABLE1_onclick()">
                <tr>
                    <td style="vertical-align: top; width: 428px; text-align: left;">
                        <table id="TABLEIZQ" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 373px; height: 14px;">
                                    <asp:Label ID="Label2" runat="server" Text="Reporte: " Font-Names="Tahoma" Font-Size="9pt"
                                        Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 373px">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False"
                                        RenderMode="Inline">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="ddlReporte" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlReporte_SelectedIndexChanged"
                                                Width="300px">
                                            </asp:DropDownList>
                                            <table style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                                border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none;
                                                border-collapse: collapse; border-bottom-style: none" id="TABLE2">
                                                <tr>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxDetallado" runat="server" AutoPostBack="true" Text="Detallado"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" OnCheckedChanged="chboxDetallado_CheckedChanged1" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxGeneral" runat="server" AutoPostBack="true" Text="General"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chboxGeneral_CheckedChanged1" /></td>
                                                    <td style="width: 100px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxAsignados" runat="server" AutoPostBack="true" Text="Asignados"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chboxAsignados_CheckedChanged" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxNoAsignados" runat="server" AutoPostBack="true" Text="No Asignados"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chboxNoAsignados_CheckedChanged" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxPorFiltro" runat="server" AutoPostBack="true" Text="Por Filtro"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chboxPorFiltro_CheckedChanged" /></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxActivas" runat="server" AutoPostBack="true" Text="Activas"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" OnCheckedChanged="chboxActivas_CheckedChanged" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxLiquidadas" runat="server" AutoPostBack="true" Text="Liquidadas"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chboxLiquidadas_CheckedChanged" /></td>
                                                    <td style="width: 100px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxActivos" runat="server" AutoPostBack="true" Text="Activos"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" OnCheckedChanged="chboxActivos_CheckedChanged" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxInactivos" runat="server" AutoPostBack="true" Text="Inactivos"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chboxInactivos_CheckedChanged" /></td>
                                                    <td style="width: 100px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxSurtidos" runat="server" AutoPostBack="true" Text="Surtidos"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" Visible="False" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxPorSurtir" runat="server" AutoPostBack="true" Text="Por Surtir"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxAmbos" runat="server" AutoPostBack="true" Text="Ambos" Font-Names="Tahoma"
                                                            Font-Size="9pt" Visible="False" /></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxAplicadas" runat="server" AutoPostBack="true" Text="Aplicadas"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" Visible="False" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxNoAplicadas" runat="server" AutoPostBack="true" Text="No Aplicadas"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" /></td>
                                                </tr>
                                                <tr>
                                                                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxPorCliente" runat="server" AutoPostBack="true" Text="Por Cliente"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" Visible="False" OnCheckedChanged="chboxPorCliente_CheckedChanged" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxPorProducto" runat="server" AutoPostBack="true" Text="Por Producto"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" OnCheckedChanged="chboxPorProducto_CheckedChanged" /></td>
                                                    <td style="width: 100px">    
                                                        <asp:CheckBox ID="chboxPorRuta" runat="server" AutoPostBack="true" Text="Por Ruta"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" OnCheckedChanged="chboxPorRuta_CheckedChanged" /></td>
                                                </tr>
                                                <tr>
                                                                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxAguas" runat="server" AutoPostBack="true" Text="Aguas"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" Visible="False" OnCheckedChanged="chboxAguas_CheckedChanged" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxCervezas" runat="server" AutoPostBack="true" Text="Cervezas"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" OnCheckedChanged="chboxCervezas_CheckedChanged" /></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px; height: 22px;"><asp:CheckBox ID="chkTGeneral" runat="server" AutoPostBack="true" Text="General"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chboxGeneral_CheckedChanged1" /></td>
                                                    <td style="width: 100px; height: 22px;"><asp:CheckBox ID="chkTCliente" runat="server" AutoPostBack="true" Text="Cliente"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chboxGeneral_CheckedChanged1" /></td>
                                                    <td style="width: 100px; height: 22px;"><asp:CheckBox ID="chkTVendedor" runat="server" AutoPostBack="true" Text="Vendedor"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chboxGeneral_CheckedChanged1" /></td>
                                                </tr>
                                                <tr>
                                                                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxProducto" runat="server" AutoPostBack="true" Text="Producto"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" Visible="False" OnCheckedChanged="chboxProducto_CheckedChanged" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxEnvase" runat="server" AutoPostBack="true" Text="Envase"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" OnCheckedChanged="chboxEnvase_CheckedChanged" /></td>
                                                </tr>
                                                <tr>
                                                                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxCartones" runat="server" AutoPostBack="true" Text="Cartones"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" Visible="False" OnCheckedChanged="chboxCartones_CheckedChanged" /></td>
                                                    <td style="width: 100px">
                                                        <asp:CheckBox ID="chboxHectolitros" runat="server" AutoPostBack="true" Text="Hectolitros"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" OnCheckedChanged="chboxHectolitros_CheckedChanged" /></td>
                                                </tr>
                                                <tr>
                                                   <td> 
                                                      <asp:CheckBox ID="chboxConfirmados" runat="server" AutoPostBack="true" Text="Confirmados"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" OnCheckedChanged = "chboxConfirmados_CheckedChanged"  />
                                                   </td>
                                                   <td> 
                                                      <asp:CheckBox ID="chboxNoConfirmados" runat="server" AutoPostBack="true" Text="No Confirmados"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" OnCheckedChanged = "chboxNoConfirmados_CheckedChanged" />
                                                   </td>
                                                   <td> 
                                                      <asp:CheckBox ID="chboxTodos" runat="server" AutoPostBack="true" Text="Todos"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" Visible="False"  OnCheckedChanged = "chboxTodos_CheckedChanged" />
                                                   </td>
                                                </tr>
                                                
                                                
                                                <tr>
                                                       <td style="width: 100px">
                                                          <asp:CheckBox ID="chboxPromoActivadas" runat="server" AutoPostBack="true" Text="Promociones Activas"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" Visible="False" />
                                                       </td>
                                                       <td style="width: 100px">
                                                          <asp:CheckBox ID="chboxPromoInactivas" runat="server" AutoPostBack="true" Text="Promociones Inactivas"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" />
                                                       </td>
                                                </tr>
                                                <tr>
                                                       <td style="width: 100px">
                                                          <asp:CheckBox ID="chboxPorDia" runat="server" AutoPostBack="true" Text="Por Día"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" Visible="False" OnCheckedChanged="chboxPorDia_CheckedChanged"/>
                                                       </td>
                                                       <td style="width: 100px">
                                                          <asp:CheckBox ID="chboxPorSemana" runat="server" AutoPostBack="true" Text="Por Semana"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" OnCheckedChanged="chboxPorSemana_CheckedChanged"/>
                                                       </td>
                                                </tr>
                                                <tr>
                                                       <td style="width: 100px">
                                                          <asp:CheckBox ID="chboxIncluirGrafica" runat="server" AutoPostBack="true" Text="Incluir Gráfica"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="True" Visible="False" />
                                                       </td>                                                       
                                                </tr>
                                                <tr>
                                                       <td style="width: 150px">
                                                          <asp:CheckBox ID="chboxDetCliente" runat="server" AutoPostBack="true" Text="Detallado Cliente"
                                                            Font-Names="Tahoma" Font-Size="9pt" Checked="False" Visible="False" OnCheckedChanged="chboxDetCliente_CheckedChanged"/>
                                                       </td>
                                                       <td style="width: 150px">
                                                          <asp:CheckBox ID="chboxDetProducto" runat="server" AutoPostBack="true" Text="Detallado Producto"
                                                            Font-Names="Tahoma" Font-Size="9pt" Visible="False" OnCheckedChanged="chboxDetProducto_CheckedChanged"/>
                                                       </td>
                                                </tr>
                                            </table>
                                            <asp:UpdatePanel ID="UpdatePanelF" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                                                <ContentTemplate>
                                                    <table style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                                border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none;
                                                border-collapse: collapse; border-bottom-style: none" id="Table3">
                                                        <tr>
                                                            <td style="width: 100px; height: 22px">
                                                                <asp:Label ID="lblClasificacion" runat="server" Font-Bold="True" Text="Clasificación:"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 100px; height: 22px">
                                                                <asp:CheckBox ID="chkTEsquema" runat="server" AutoPostBack="true" Text="Por Esquema"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chkTEsquema_CheckedChanged" /></td>
                                                            <td style="width: 100px; height: 22px">
                                                                <asp:CheckBox ID="chkTProducto" runat="server" AutoPostBack="true" Text="Por Producto"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chkTProducto_CheckedChanged" /></td>
                                                        </tr>
                                                    </table><cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipo" TargetControlID="chkTEsquema"
                                                Key="tipoReporte" runat="server">
                                                    </cc1:MutuallyExclusiveCheckBoxExtender>
                                                    <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipo2" TargetControlID="chkTProducto"
                                                Key="tipoReporte" runat="server">
                                                    </cc1:MutuallyExclusiveCheckBoxExtender>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <br />
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte" TargetControlID="chboxDetallado"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte2" TargetControlID="chboxGeneral"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte3" TargetControlID="chboxAsignados"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte4" TargetControlID="chboxNoAsignados"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte5" TargetControlID="chboxPorFiltro"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte6" TargetControlID="chboxActivas"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte7" TargetControlID="chboxLiquidadas"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte8" TargetControlID="chboxActivos"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte9" TargetControlID="chboxInactivos"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte10" TargetControlID="chboxSurtidos"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte11" TargetControlID="chboxPorSurtir"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte12" TargetControlID="chboxAmbos"
                                                Key="tipoReporte" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte13" TargetControlID="chboxAplicadas"
                                                Key="Bonificaciones" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte14" TargetControlID="chboxNoAplicadas"
                                                Key="Bonificaciones" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <br />
                                               <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte15" TargetControlID="chboxPorCliente"
                                                Key="TipoEstadistico" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte16" TargetControlID="chboxPorProducto"
                                                Key="TipoEstadistico" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte17" TargetControlID="chboxAguas"
                                                Key="EsquemaEstadistico" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte18" TargetControlID="chboxCervezas"
                                                Key="EsquemaEstadistico" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte19" TargetControlID="chboxPorRuta"
                                                Key="TipoEstadistico" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender><cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte20" TargetControlID="chkTGeneral"
                                                Key="TipoEstadistico" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte21" TargetControlID="chkTCliente"
                                                Key="TipoEstadistico" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <cc1:MutuallyExclusiveCheckBoxExtender ID="mecheTipoReporte22" TargetControlID="chkTVendedor"
                                                Key="TipoEstadistico" runat="server">
                                            </cc1:MutuallyExclusiveCheckBoxExtender>
                                            <br />
                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                                Text="Formato: "></asp:Label>
                                            <br />
                                            <asp:DropDownList ID="DdlFormato" runat="server" AutoPostBack="True" Width="300px">
                                            </asp:DropDownList>
                                            <br />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <asp:UpdatePanel ID="updFolio" runat="server" ChildrenAsTriggers="False" RenderMode="Inline"
                                        UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <table style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                                border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none;
                                                border-collapse: collapse; border-bottom-style: none">
                                                <tr>
                                                    <td style="width: 245px; height: 22px">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 245px">
                                                        <asp:Panel ID="pnlFolio" runat="server">
                                                            <asp:Label ID="lblFolio" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                                                Text="Folio"></asp:Label><br />
                                                            <asp:TextBox ID="txtFolio" runat="server" Width="293px"></asp:TextBox></asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 373px">
                                    <asp:UpdatePanel ID="UpdatePanel7" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False"
                                        RenderMode="Inline">
                                        <ContentTemplate>
                                            <table style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                                border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none;
                                                border-collapse: collapse; border-bottom-style: none">
                                                <tr>
                                                    <td>
                                                        <asp:CheckBox ID="ChBoxCentroDistribucion" runat="server" AutoPostBack="true" Font-Names="Tahoma"
                                                            Font-Size="9pt" OnCheckedChanged="ChBoxCentroDistribucion_CheckedChanged1" Font-Bold="True"
                                                            Text="Centros De Distribucion" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="PanelCentroDistribucion" runat="server">
                                                            <asp:DropDownList ID="DdlCentroDistribucion" runat="server" Width="299px" OnSelectedIndexChanged="DdlCentroDistribucion_SelectedIndexChanged" AutoPostBack="True">
                                                            </asp:DropDownList>
                                                            <br />
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 373px">
                                    <asp:UpdatePanel ID="UpdatePanel16" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False"
                                        RenderMode="Inline">
                                        <ContentTemplate>
                                            <table style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                                border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none;
                                                border-collapse: collapse; border-bottom-style: none">
                                                <tr>
                                                    <td>
                                                        <asp:CheckBox ID="chboxSupervisor" runat="server" AutoPostBack="true" Enabled="true" OnCheckedChanged="chboxSupervisor_CheckedChanged"
                                    Text="Supervisor" Font-Names="Tahoma" Font-Size="9pt" Font-Bold="True" Visible="False" /></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="PanelSupervisor" runat="server" Visible="False">
                                                            &nbsp;<br />
                                                            <jwg:GridEX ID="GridEXSupervisor" runat="server" DefaultFilterRowComparison="Equal"
                                                                FilterMode="Automatic" GridLineColor="ScrollBar" GroupByBoxVisible="False"
                                                                Width="361px" AllowPaging="Never">
<SelectedFormatStyle VerticalAlign="top" BackColor="#316AC5" ForeColor="HighlightText" Height="20px"></SelectedFormatStyle>

<PageNavigatorSettings PageBlockSize="1000" PageSize="10"><BottomPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel Visible="False"></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorNextBlockPanel>
</BottomPageNavigatorPanels>
<TopPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right"></jwg:GridEXPageNavigatorNextBlockPanel>
</TopPageNavigatorPanels>
</PageNavigatorSettings>

<GroupTotalRowFormatStyle BackColor="Control" Height="20px"></GroupTotalRowFormatStyle>

<HeaderFormatStyle Appearance="RaisedLight" BackColor="Control" BorderColor="GrayText" BorderWidth="1px" BorderStyle="Solid" ForeColor="ControlText" Height="20px"></HeaderFormatStyle>

<AlternatingRowFormatStyle BackColor="Control" BorderWidth="1px" BorderStyle="Solid" Height="20px"></AlternatingRowFormatStyle>

<GroupRowFormatStyle TextAlign="left" VerticalAlign="middle" BackColor="Control" ForeColor="ControlText" Height="20px"></GroupRowFormatStyle>

<GroupByBoxFormatStyle Padding="5px 4px 5px 4px" BackColor="ControlDark"></GroupByBoxFormatStyle>

<FocusCellFormatStyle BorderColor="Highlight" BorderWidth="1px" BorderStyle="Solid"></FocusCellFormatStyle>

<PageNavigatorFormatStyle Appearance="RaisedLight" BackColor="Control"></PageNavigatorFormatStyle>

<TotalRowFormatStyle BackColor="Window" Height="20px"></TotalRowFormatStyle>

<GroupRowIndentJunctionFormatStyle BackColor="Control"></GroupRowIndentJunctionFormatStyle>

<EditorsFormatStyle BackColor="Control"></EditorsFormatStyle>

<NewRowFormatStyle BackColor="Window" ForeColor="WindowText" Height="20px"></NewRowFormatStyle>

<GroupByBoxInfoFormatStyle VerticalAlign="middle" Padding="4px 4px" BackColor="Control" ForeColor="ControlDark" Height="100%"></GroupByBoxInfoFormatStyle>

<RootTable><Columns>
<jwg:GridEXColumn ActAsSelector="True" AllowDrag="False" Key="Selector" Width="20px" DefaultGroupPrefix=":" ColumnType="CheckBox" EditType="CheckBox" FilterRowComparison="Equal" FilterEditType="NoEdit" InvalidValueAction="DiscardChanges" DataTypeCode="Boolean">
<CellStyle Width="20px"></CellStyle>
</jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Clave" Key="Clave" HeaderAlignment="Center" DataMember="Clave" DefaultGroupPrefix="Clave:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object"></jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Nombre" Key="Nombre" Width="230px" HeaderAlignment="Center" DataMember="Nombre" DefaultGroupPrefix="Nombre:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object">
<CellStyle Width="230px"></CellStyle>
</jwg:GridEXColumn>
</Columns>
</RootTable>

<FilterRowFormatStyle BackColor="Window" ForeColor="WindowText"></FilterRowFormatStyle>

<RowFormatStyle TextAlign="left" VerticalAlign="top" BackColor="Window" BorderWidth="1px" BorderStyle="Solid" ForeColor="WindowText" Height="20px"></RowFormatStyle>

<GroupIndentFormatStyle BackColor="Control"></GroupIndentFormatStyle>

<PreviewRowFormatStyle ForeColor="Blue" Height="100%"></PreviewRowFormatStyle>
</jwg:GridEX></asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 373px;">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                                        <ContentTemplate>
                                            <table style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                                border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none;
                                                border-collapse: collapse; border-bottom-style: none; width: 100%; height: 100%">
                                                <tr>
                                                    <td>
                                                        <asp:CheckBox ID="chboxVendedor" runat="server" AutoPostBack="true" Font-Names="Tahoma"
                                                            Font-Size="9pt" OnCheckedChanged="chboxVendedor_CheckedChanged" Text="Vendedor"
                                                            Font-Bold="True" />
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="PanelVendedor" runat="server" Visible="False" Height="100%" Width="100%">
                                                            <table style="width: 100%; height: 100%">
                                                                <tr>
                                                                    <td style="padding-left: 30px">
                                                                        <asp:CheckBox ID="chBoxVendedorActivo" runat="server" AutoPostBack="true" Text="Mostrar Inactivos"
                                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chboxVendedorActivo_checkedChanged"
                                                                            Width="224px" Font-Bold="false" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlVendedor" runat="server" AutoPostBack="True" Font-Names="verdana"
                                                                            Font-Size="X-Small" Width="300px">
                                                                        </asp:DropDownList></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <jwg:GridEX ID="GridEXVendedor" runat="server" DefaultFilterRowComparison="Equal"
                                                                            FilterMode="Automatic" GridLineColor="ScrollBar" GroupByBoxVisible="False" Visible="False">
<SelectedFormatStyle VerticalAlign="top" BackColor="#316AC5" ForeColor="HighlightText" Height="20px"></SelectedFormatStyle>

<PageNavigatorSettings PageBlockSize="1000" PageSize="10"><BottomPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel Visible="False"></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorNextBlockPanel>
</BottomPageNavigatorPanels>
<TopPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right"></jwg:GridEXPageNavigatorNextBlockPanel>
</TopPageNavigatorPanels>
</PageNavigatorSettings>

<GroupTotalRowFormatStyle BackColor="Control" Height="20px"></GroupTotalRowFormatStyle>

<HeaderFormatStyle Appearance="RaisedLight" BackColor="Control" BorderColor="GrayText" BorderWidth="1px" BorderStyle="Solid" ForeColor="ControlText" Height="20px"></HeaderFormatStyle>

<AlternatingRowFormatStyle BackColor="Control" BorderWidth="1px" BorderStyle="Solid" Height="20px"></AlternatingRowFormatStyle>

<GroupRowFormatStyle TextAlign="left" VerticalAlign="middle" BackColor="Control" ForeColor="ControlText" Height="20px"></GroupRowFormatStyle>

<GroupByBoxFormatStyle Padding="5px 4px 5px 4px" BackColor="ControlDark"></GroupByBoxFormatStyle>

<FocusCellFormatStyle BorderColor="Highlight" BorderWidth="1px" BorderStyle="Solid"></FocusCellFormatStyle>

<PageNavigatorFormatStyle Appearance="RaisedLight" BackColor="Control"></PageNavigatorFormatStyle>

<TotalRowFormatStyle BackColor="Window" Height="20px"></TotalRowFormatStyle>

<GroupRowIndentJunctionFormatStyle BackColor="Control"></GroupRowIndentJunctionFormatStyle>

<EditorsFormatStyle BackColor="Control"></EditorsFormatStyle>

<NewRowFormatStyle BackColor="Window" ForeColor="WindowText" Height="20px"></NewRowFormatStyle>

<GroupByBoxInfoFormatStyle VerticalAlign="middle" Padding="4px 4px" BackColor="Control" ForeColor="ControlDark" Height="100%"></GroupByBoxInfoFormatStyle>

<RootTable><Columns>
<jwg:GridEXColumn ActAsSelector="True" AllowDrag="False" Key="Selector" Width="20px" DefaultGroupPrefix=":" ColumnType="CheckBox" EditType="CheckBox" FilterRowComparison="Equal" FilterEditType="NoEdit" InvalidValueAction="DiscardChanges" DataTypeCode="Boolean">
<CellStyle Width="20px"></CellStyle>
</jwg:GridEXColumn>
<jwg:GridEXColumn Caption="VendedorID" Key="VendedorID" DataMember="VendedorID" DefaultGroupPrefix="VendedorID:" FilterRowComparison="Equal" Visible="False" InvalidValueAction="DiscardChanges" DataTypeCode="Object"></jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Nombre" Key="Nombre" Width="330px" DataMember="Nombre" DefaultGroupPrefix="Nombre:" FilterRowComparison="Equal" InvalidValueAction="DiscardChanges" DataTypeCode="Object">
<CellStyle Width="330px"></CellStyle>
</jwg:GridEXColumn>
</Columns>
</RootTable>

<FilterRowFormatStyle BackColor="Window" ForeColor="WindowText"></FilterRowFormatStyle>

<RowFormatStyle TextAlign="left" VerticalAlign="top" BackColor="Window" BorderWidth="1px" BorderStyle="Solid" ForeColor="WindowText" Height="20px"></RowFormatStyle>

<GroupIndentFormatStyle BackColor="Control"></GroupIndentFormatStyle>

<PreviewRowFormatStyle ForeColor="Blue" Height="100%"></PreviewRowFormatStyle>
                                                                        </jwg:GridEX></td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 373px">
                                    <asp:UpdatePanel ID="UpdatePanelEstatus" runat="server" UpdateMode="Conditional" RenderMode="Inline" ChildrenAsTriggers="False">
                                        <ContentTemplate>
                                            <table style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                                border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none;
                                                border-collapse: collapse; border-bottom-style: none; width: 100%; height: 100%">
                                                <tr>
                                                    <td>
                                                        <asp:CheckBox ID="chboxEstatus" runat="server" AutoPostBack="true" Font-Names="Tahoma"
                                                            Font-Size="9pt" OnCheckedChanged="chboxEstatus_CheckedChanged" Text="Estatus"
                                                            Font-Bold="True" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="PanelEstatus" runat="server">
                                                            <asp:DropDownList ID="ddlEstatus" runat="server" Width="299px" AutoPostBack="True" OnSelectedIndexChanged="ddlEstatus_SelectedIndexChanged">
                                                            </asp:DropDownList>
                                                            <br />
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 373px">
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional" RenderMode="Inline"
                                        ChildrenAsTriggers="False">
                                        <ContentTemplate>
                                            <table style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                                border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none;
                                                border-collapse: collapse; border-bottom-style: none">
                                                <tr>
                                                    <td>
                                                        <asp:CheckBox ID="chboxFecha" runat="server" AutoPostBack="true" Font-Names="Tahoma"
                                                            Font-Size="9pt" OnCheckedChanged="chboxFecha_CheckedChanged" Text="Fecha :" Font-Bold="True" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="8pt" Text="dd/mm/aaaa"
                                                            ForeColor="Gray" Visible="False"></asp:Label></td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 22px">
                                                        <asp:DropDownList ID="ddlFecha" runat="server" AutoPostBack="True" Font-Names="verdana"
                                                            Font-Size="X-Small" OnSelectedIndexChanged="ddlFecha_SelectedIndexChanged" Width="109px"
                                                            Visible="False">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="height: 22px">
                                                        <asp:TextBox ID="txtFInicio" runat="server" AutoPostBack="True" Font-Names="Verdana" Font-Size="X-Small"
                                                            Width="80px" Visible="False" OnTextChanged="txtFInicio_TextChanged"></asp:TextBox></td>
                                                    <td style="height: 22px">
                                                        <asp:TextBox ID="txtFFinal" runat="server" AutoPostBack="True" Font-Names="Verdana" Font-Size="X-Small"
                                                            Width="80px" Visible="False" OnTextChanged="txtFFinal_TextChanged"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 22px"></td>
                                                    <td style="height: 22px">
                                                        <asp:TextBox ID="txtFInicio2" runat="server" Font-Names="Verdana" Font-Size="X-Small"
                                                            Width="80px" Visible="False"></asp:TextBox></td>
                                                    <td style="height: 22px">
                                                        <asp:TextBox ID="txtFFinal2" runat="server" Font-Names="Verdana" Font-Size="X-Small"
                                                            Width="80px" Visible="False"></asp:TextBox></td>
                                                </tr>
                                            </table>
                                            <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtFFinal"
                                                Format="dd/MM/yyyy" OnClientDateSelectionChanged=" hideCalendar">
                                            </cc1:CalendarExtender>
                                            <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFInicio"
                                                Format="dd/MM/yyyy" OnClientDateSelectionChanged=" hideCalendar">
                                            </cc1:CalendarExtender>
                                            <cc1:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txtFFinal2"
                                                Format="dd/MM/yyyy" OnClientDateSelectionChanged=" hideCalendar">
                                            </cc1:CalendarExtender>
                                            <cc1:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID="txtFInicio2"
                                                Format="dd/MM/yyyy" OnClientDateSelectionChanged=" hideCalendar">
                                            </cc1:CalendarExtender>
                                            &nbsp;
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <br/>
                                    <asp:UpdatePanel ID="UpdatePanel17" runat="server" UpdateMode="Conditional" RenderMode="Inline"
                                        ChildrenAsTriggers="False">
                                        <ContentTemplate>
                                        <asp:Label ID="lblTipoComparacion" runat="server" Font-Names="Tahoma" Font-Size="9pt" Text="Tipo Comparación"
                                                            Font-Bold="True" Visible="False"></asp:Label>
                                         <br/>
                                         <asp:DropDownList ID="cboxTipoComparativo" runat="server" AutoPostBack="True" Font-Names="verdana"
                                        Font-Size="X-Small" OnSelectedIndexChanged="cboxTipoComparativo_SelectedIndexChanged" Width="230px"
                                        Visible="False">
                                    </asp:DropDownList>
                                            <table style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                                border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none;
                                                border-collapse: collapse; border-bottom-style: none">                                                
                                                <tr>
                                                    <td style="height: 22px">
                                                       <asp:TextBox ID="txtPeriodoX" runat="server" AutoPostBack="True" Font-Names="Verdana" Font-Size="X-Small"
                                                            Width="80px" Visible="False" OnTextChanged="txtFInicio_TextChanged"></asp:TextBox> 
                                                    </td>
                                                    <td style="height: 22px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="lblVS" runat="server" Font-Names="Tahoma" Font-Size="9pt" Text="VS"
                                                           Font-Bold="True" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                    <td style="height: 22px">
                                                        <asp:TextBox ID="txtPeriodoY" runat="server" AutoPostBack="True" Font-Names="Verdana" Font-Size="X-Small"
                                                            Width="80px" Visible="False" OnTextChanged="txtFFinal_TextChanged"></asp:TextBox></td>
                                                </tr>                                                
                                            </table>
                                            <cc1:CalendarExtender ID="CalendarExtender5" runat="server" TargetControlID="txtPeriodoX"
                                                Format="dd/MM/yyyy" OnClientDateSelectionChanged=" hideCalendar">
                                            </cc1:CalendarExtender>
                                            <cc1:CalendarExtender ID="CalendarExtender6" runat="server" TargetControlID="txtPeriodoY"
                                                Format="dd/MM/yyyy" OnClientDateSelectionChanged=" hideCalendar">
                                            </cc1:CalendarExtender>                                           
                                            &nbsp;
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 373px; text-align: left">
                                    <asp:UpdatePanel ID="updAreaSolicitud" runat="server" ChildrenAsTriggers="False"
                                        RenderMode="Inline" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <table style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                                border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none;
                                                border-collapse: collapse; border-bottom-style: none">
                                                <tr>
                                                    <td>
                                                        <asp:CheckBox ID="chbAreaSolicitud" runat="server" AutoPostBack="True" Font-Bold="True"
                                                            Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chbAreaSolicitud_CheckedChanged"
                                                            Text="Área" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="pnlAreaSolicitud" runat="server">
                                                            &nbsp;<asp:DropDownList ID="ddlAreaSolicitud" runat="server" Width="299px">
                                                            </asp:DropDownList><br />
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                        </asp:UpdatePanel><asp:UpdatePanel ID="UpdatePanelVin" runat="server" ChildrenAsTriggers="False" RenderMode="Inline"
                                        UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Panel ID="PanelVIN" runat="server" Height="100%" Width="100%" Visible="False">
                                                <table>
                                                    <tr>
                                                        <td style="width: 61%">
                                                            <asp:Label ID="LblVin" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                                                Text="VIN" Width="158px"></asp:Label>
                                                        </td>
                                                        <td style="width: 60%">
                                                            <asp:TextBox ID="txtVIN" runat="server"></asp:TextBox></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </ContentTemplate>                                    
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 373px; text-align: left">
                                    <asp:UpdatePanel ID="UpdatePanel6" runat="server" RenderMode="Inline" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Label ID="lbError" runat="server" Font-Names="Tahoma" Font-Size="10pt" ForeColor="Red"></asp:Label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 373px;">
                                    <br />
                                    <asp:Button ID="btnContinuar" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="X-Small"
                                        OnClick="btnContinuar_Click" Text="Continuar" OnClientClick="this.disabled = true; Load()"
                                        UseSubmitBehavior="False" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <!--

Separacion Filas

-->
                    <td style="vertical-align: top; text-align: left;">
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                            <ContentTemplate>
                                <asp:CheckBox ID="chboxRuta" runat="server" AutoPostBack="true" Enabled="true" OnCheckedChanged="chboxRuta_CheckedChanged"
                                    Text="Ruta :" Font-Names="Tahoma" Font-Size="9pt" Font-Bold="True" />
                                <asp:Panel ID="panelRuta" runat="server">
                                    &nbsp;<br />
                                    <asp:CheckBox ID="chbRutaActivo" runat="server" AutoPostBack="true" Text="Mostrar Inactivas"
                                        Font-Names="Tahoma" Font-Size="9pt" OnCheckedChanged="chbRutaActivo_checkedChanged"
                                        Width="224px" Font-Bold="false" /><br />
                                    <asp:DropDownList ID="ddlRuta" runat="server" Width="299px">
                                    </asp:DropDownList><br />
                                </asp:Panel>
                                <jwg:GridEX ID="GridEXRuta" runat="server" FilterMode="Automatic" GridLineColor="ScrollBar"
                                    GroupByBoxVisible="False" DefaultFilterRowComparison="Equal" Visible="False">
<SelectedFormatStyle VerticalAlign="top" BackColor="#316AC5" ForeColor="HighlightText" Height="20px"></SelectedFormatStyle>

<PageNavigatorSettings PageBlockSize="1000" PageSize="10"><BottomPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel Visible="False"></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorNextBlockPanel>
</BottomPageNavigatorPanels>
<TopPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right"></jwg:GridEXPageNavigatorNextBlockPanel>
</TopPageNavigatorPanels>
</PageNavigatorSettings>

<GroupTotalRowFormatStyle BackColor="Control" Height="20px"></GroupTotalRowFormatStyle>

<HeaderFormatStyle Appearance="RaisedLight" BackColor="Control" BorderColor="GrayText" BorderWidth="1px" BorderStyle="Solid" ForeColor="ControlText" Height="20px"></HeaderFormatStyle>

<AlternatingRowFormatStyle BackColor="Control" BorderWidth="1px" BorderStyle="Solid" Height="20px"></AlternatingRowFormatStyle>

<GroupRowFormatStyle TextAlign="left" VerticalAlign="middle" BackColor="Control" ForeColor="ControlText" Height="20px"></GroupRowFormatStyle>

<GroupByBoxFormatStyle Padding="5px 4px 5px 4px" BackColor="ControlDark"></GroupByBoxFormatStyle>

<FocusCellFormatStyle BorderColor="Highlight" BorderWidth="1px" BorderStyle="Solid"></FocusCellFormatStyle>

<PageNavigatorFormatStyle Appearance="RaisedLight" BackColor="Control"></PageNavigatorFormatStyle>

<TotalRowFormatStyle BackColor="Window" Height="20px"></TotalRowFormatStyle>

<GroupRowIndentJunctionFormatStyle BackColor="Control"></GroupRowIndentJunctionFormatStyle>

<EditorsFormatStyle BackColor="Control"></EditorsFormatStyle>

<NewRowFormatStyle BackColor="Window" ForeColor="WindowText" Height="20px"></NewRowFormatStyle>

<GroupByBoxInfoFormatStyle VerticalAlign="middle" Padding="4px 4px" BackColor="Control" ForeColor="ControlDark" Height="100%"></GroupByBoxInfoFormatStyle>

<RootTable><Columns>
<jwg:GridEXColumn ActAsSelector="True" AllowDrag="False" Key="Selector" Width="20px" DefaultGroupPrefix=":" ColumnType="CheckBox" EditType="CheckBox" FilterRowComparison="Equal" FilterEditType="NoEdit" InvalidValueAction="DiscardChanges" DataTypeCode="Boolean">
<CellStyle Width="20px"></CellStyle>
</jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Clave" Key="RUTClave" HeaderAlignment="Center" DataMember="RUTClave" DefaultGroupPrefix="Clave:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object"></jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Descripcion" Key="Descripcion" Width="230px" HeaderAlignment="Center" DataMember="Descripcion" DefaultGroupPrefix="Descripcion:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object">
<CellStyle Width="230px"></CellStyle>
</jwg:GridEXColumn>
</Columns>
</RootTable>

<FilterRowFormatStyle BackColor="Window" ForeColor="WindowText"></FilterRowFormatStyle>

<RowFormatStyle TextAlign="left" VerticalAlign="top" BackColor="Window" BorderWidth="1px" BorderStyle="Solid" ForeColor="WindowText" Height="20px"></RowFormatStyle>

<GroupIndentFormatStyle BackColor="Control"></GroupIndentFormatStyle>

<PreviewRowFormatStyle ForeColor="Blue" Height="100%"></PreviewRowFormatStyle>
                                </jwg:GridEX>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel12" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                            <ContentTemplate>
                                <asp:Panel runat="server" ID="PanelEncuestas" Height="100%" Width="100%">
                                    <br />
                                    <asp:Label ID="LbEncuesta" runat="server" Text="Encuestas:" Font-Names="Tahoma" Font-Size="9pt"
                                        Font-Bold="True"></asp:Label>
                                    <asp:Panel ID="PanelEnc" runat="server" BorderStyle="Solid" Height="216px" ScrollBars="Auto"
                                        Width="352px" BorderColor="#002D96" BorderWidth="1px">
                                        &nbsp;
                                        <asp:TreeView ID="tvEncuesta" runat="server" ExpandDepth="2" OnSelectedNodeChanged="tvEncuesta_SelectedNodeChanged"
                                            Font-Names="Tahoma" Font-Size="9pt" Font-Bold="False" EnableClientScript="False"
                                            ExpandImageUrl="~/images/derecha.gif" NodeWrap="True" PopulateNodesFromClient="False"
                                            CollapseImageUrl="~/images/abajo.gif" NoExpandImageUrl="~/images/kfouleggs.gif"
                                            EnableTheming="True" SkipLinkText="?">
                                            <RootNodeStyle CssClass="ClaseRoot" ImageUrl="~/images/esc_cliente.gif" />
                                            <LeafNodeStyle CssClass="ClaseParent" />
                                            <NodeStyle CssClass="ClaseHija" />
                                            <SelectedNodeStyle CssClass="ClaseSeleccionada" Font-Bold="True" />
                                        </asp:TreeView>
                                    </asp:Panel>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                            <ContentTemplate>
                                <asp:Panel runat="server" ID="PanelEsquemas" Height="100%" Width="100%">
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                        Text="Esquemas:"></asp:Label>
                                    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="216px" ScrollBars="Auto"
                                        Width="352px" BorderColor="#002D96" BorderWidth="1px">
                                        <asp:TreeView ID="tvEsquema" runat="server" ExpandDepth="2" OnSelectedNodeChanged="tvEsquema_SelectedNodeChanged"
                                            Font-Names="Tahoma" Font-Size="9pt" Font-Bold="False" EnableClientScript="False"
                                            ExpandImageUrl="~/images/derecha.gif" NodeWrap="True" PopulateNodesFromClient="False"
                                            CollapseImageUrl="~/images/abajo.gif" NoExpandImageUrl="~/images/kfouleggs.gif"
                                            EnableTheming="True" SkipLinkText="?">
                                            <RootNodeStyle CssClass="ClaseRoot" ImageUrl="~/images/esc_cliente.gif" />
                                            <LeafNodeStyle CssClass="ClaseParent" />
                                            <NodeStyle CssClass="ClaseHija" />
                                            <SelectedNodeStyle CssClass="ClaseSeleccionada" Font-Bold="True" />
                                        </asp:TreeView>
                                    </asp:Panel>
                                    <asp:Panel ID="PaneltxtEsquema" runat="server" Height="46px" Width="353px">
                                        <asp:TextBox ID="txtEsquema" runat="server" Width="232px" MaxLength="20"></asp:TextBox>
                                        <asp:Button ID="btnEsquema" runat="server" OnClick="btnEsquema_Click" Text="Mostrar Clientes"
                                            Width="109px" /></asp:Panel>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel18" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                            <ContentTemplate>
                                <br />
                                <asp:Panel ID="PnlEsqCli" runat="server" Height="100%" Width="100%">
                                    <asp:Label ID="lblEsqCli" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                        Text="Label"></asp:Label>
                                    <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label><br />
                                    <jwg:GridEX ID="GridEXEsqCli" runat="server" FilterMode="Automatic" GridLineColor="ScrollBar"
                                        GroupByBoxVisible="False" DefaultFilterRowComparison="Equal"  OnRowCheckedChanged="GridEXEsqCli_RowCheckedChanged" >
<SelectedFormatStyle VerticalAlign="top" BackColor="#316AC5" ForeColor="HighlightText" Height="20px"></SelectedFormatStyle>

<PageNavigatorSettings PageBlockSize="1000" PageSize="10"><BottomPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel Visible="False"></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorNextBlockPanel>
</BottomPageNavigatorPanels>
<TopPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right"></jwg:GridEXPageNavigatorNextBlockPanel>
</TopPageNavigatorPanels>
</PageNavigatorSettings>

<GroupTotalRowFormatStyle BackColor="Control" Height="20px"></GroupTotalRowFormatStyle>

<HeaderFormatStyle Appearance="RaisedLight" BackColor="Control" BorderColor="GrayText" BorderWidth="1px" BorderStyle="Solid" ForeColor="ControlText" Height="20px"></HeaderFormatStyle>

<AlternatingRowFormatStyle BackColor="Control" BorderWidth="1px" BorderStyle="Solid" Height="20px"></AlternatingRowFormatStyle>

<GroupRowFormatStyle TextAlign="left" VerticalAlign="middle" BackColor="Control" ForeColor="ControlText" Height="20px"></GroupRowFormatStyle>

<GroupByBoxFormatStyle Padding="5px 4px 5px 4px" BackColor="ControlDark"></GroupByBoxFormatStyle>

<FocusCellFormatStyle BorderColor="Highlight" BorderWidth="1px" BorderStyle="Solid"></FocusCellFormatStyle>

<PageNavigatorFormatStyle Appearance="RaisedLight" BackColor="Control"></PageNavigatorFormatStyle>

<TotalRowFormatStyle BackColor="Window" Height="20px"></TotalRowFormatStyle>

<GroupRowIndentJunctionFormatStyle BackColor="Control"></GroupRowIndentJunctionFormatStyle>

<EditorsFormatStyle BackColor="Control"></EditorsFormatStyle>

<NewRowFormatStyle BackColor="Window" ForeColor="WindowText" Height="20px"></NewRowFormatStyle>

<GroupByBoxInfoFormatStyle VerticalAlign="middle" Padding="4px 4px" BackColor="Control" ForeColor="ControlDark" Height="100%"></GroupByBoxInfoFormatStyle>

<RootTable><Columns>
<jwg:GridEXColumn ActAsSelector="True" AllowDrag="False" Key="Selector" Width="20px" DefaultGroupPrefix=":" ColumnType="CheckBox" EditType="CheckBox" FilterRowComparison="Equal" FilterEditType="NoEdit" InvalidValueAction="DiscardChanges" DataTypeCode="Boolean">
<CellStyle Width="20px"></CellStyle>
</jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Clave" Key="EsquemaId" DataMember="EsquemaId" DefaultGroupPrefix="EsquemaId:" FilterRowComparison="Contains" FilterEditType="TextBox" Visible="False" InvalidValueAction="DiscardChanges" DataTypeCode="Object"></jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Clave" Key="Clave" Width="100px" HeaderAlignment="Center" DataMember="Clave" DefaultGroupPrefix="Clave:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object">
<CellStyle Width="100px"></CellStyle>
</jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Nombre" Key="Nombre" Width="230px" HeaderAlignment="Center" DataMember="Nombre" DefaultGroupPrefix="Nombre:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object">
<CellStyle Width="230px"></CellStyle>
</jwg:GridEXColumn>
</Columns>
</RootTable>

<FilterRowFormatStyle BackColor="Window" ForeColor="WindowText"></FilterRowFormatStyle>

<RowFormatStyle TextAlign="left" VerticalAlign="top" BackColor="Window" BorderWidth="1px" BorderStyle="Solid" ForeColor="WindowText" Height="20px"></RowFormatStyle>

<GroupIndentFormatStyle BackColor="Control"></GroupIndentFormatStyle>

<PreviewRowFormatStyle ForeColor="Blue" Height="100%"></PreviewRowFormatStyle>
</jwg:GridEX></asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                            <ContentTemplate>
                                <br />
                                <asp:Panel ID="Pnlclientes" runat="server" Height="100%" Width="100%">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                        Text="Label"></asp:Label>
                                    <asp:Label ID="lblEsquemaActual" runat="server" Text="Label" Visible="False"></asp:Label><br />
                                    <jwg:GridEX ID="GridEXCliente" runat="server" FilterMode="Automatic" GridLineColor="ScrollBar"
                                        GroupByBoxVisible="False" DefaultFilterRowComparison="Equal" OnRowCheckedChanged="GridEXClientes_RowCheckedChanged">
<SelectedFormatStyle VerticalAlign="top" BackColor="#316AC5" ForeColor="HighlightText" Height="20px"></SelectedFormatStyle>

<PageNavigatorSettings PageBlockSize="1000" PageSize="10"><BottomPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel Visible="False"></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorNextBlockPanel>
</BottomPageNavigatorPanels>
<TopPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right"></jwg:GridEXPageNavigatorNextBlockPanel>
</TopPageNavigatorPanels>
</PageNavigatorSettings>

<GroupTotalRowFormatStyle BackColor="Control" Height="20px"></GroupTotalRowFormatStyle>

<HeaderFormatStyle Appearance="RaisedLight" BackColor="Control" BorderColor="GrayText" BorderWidth="1px" BorderStyle="Solid" ForeColor="ControlText" Height="20px"></HeaderFormatStyle>

<AlternatingRowFormatStyle BackColor="Control" BorderWidth="1px" BorderStyle="Solid" Height="20px"></AlternatingRowFormatStyle>

<GroupRowFormatStyle TextAlign="left" VerticalAlign="middle" BackColor="Control" ForeColor="ControlText" Height="20px"></GroupRowFormatStyle>

<GroupByBoxFormatStyle Padding="5px 4px 5px 4px" BackColor="ControlDark"></GroupByBoxFormatStyle>

<FocusCellFormatStyle BorderColor="Highlight" BorderWidth="1px" BorderStyle="Solid"></FocusCellFormatStyle>

<PageNavigatorFormatStyle Appearance="RaisedLight" BackColor="Control"></PageNavigatorFormatStyle>

<TotalRowFormatStyle BackColor="Window" Height="20px"></TotalRowFormatStyle>

<GroupRowIndentJunctionFormatStyle BackColor="Control"></GroupRowIndentJunctionFormatStyle>

<EditorsFormatStyle BackColor="Control"></EditorsFormatStyle>

<NewRowFormatStyle BackColor="Window" ForeColor="WindowText" Height="20px"></NewRowFormatStyle>

<GroupByBoxInfoFormatStyle VerticalAlign="middle" Padding="4px 4px" BackColor="Control" ForeColor="ControlDark" Height="100%"></GroupByBoxInfoFormatStyle>

<RootTable><Columns>
<jwg:GridEXColumn ActAsSelector="True" AllowDrag="False" Key="Selector" Width="20px" DefaultGroupPrefix=":" ColumnType="CheckBox" EditType="CheckBox" FilterRowComparison="Equal" FilterEditType="NoEdit" InvalidValueAction="DiscardChanges" DataTypeCode="Boolean">
<CellStyle Width="20px"></CellStyle>
</jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Clave" Key="ClienteClave" DataMember="ClienteClave" DefaultGroupPrefix="Clave:" FilterRowComparison="Contains" FilterEditType="TextBox" Visible="False" InvalidValueAction="DiscardChanges" DataTypeCode="Object"></jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Clave" Key="Clave" Width="100px" HeaderAlignment="Center" DataMember="Clave" DefaultGroupPrefix="Clave:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object">
<CellStyle Width="100px"></CellStyle>
</jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Cliente" Key="RazonSocial" Width="230px" HeaderAlignment="Center" DataMember="RazonSocial" DefaultGroupPrefix="Cliente:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object">
<CellStyle Width="230px"></CellStyle>
</jwg:GridEXColumn>
</Columns>
</RootTable>

<FilterRowFormatStyle BackColor="Window" ForeColor="WindowText"></FilterRowFormatStyle>

<RowFormatStyle TextAlign="left" VerticalAlign="top" BackColor="Window" BorderWidth="1px" BorderStyle="Solid" ForeColor="WindowText" Height="20px"></RowFormatStyle>

<GroupIndentFormatStyle BackColor="Control"></GroupIndentFormatStyle>

<PreviewRowFormatStyle ForeColor="Blue" Height="100%"></PreviewRowFormatStyle>
</jwg:GridEX></asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel10" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                            <ContentTemplate>
                                <br />
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                    Text="Label"></asp:Label>&nbsp;<br />
                                <jwg:GridEX ID="GridEXProducto" runat="server" FilterMode="Automatic" GridLineColor="ScrollBar"
                                    GroupByBoxVisible="False" DefaultFilterRowComparison="Equal">
<SelectedFormatStyle VerticalAlign="top" BackColor="#316AC5" ForeColor="HighlightText" Height="20px"></SelectedFormatStyle>

<PageNavigatorSettings PageBlockSize="1000" PageSize="10"><BottomPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel Visible="False"></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorNextBlockPanel>
</BottomPageNavigatorPanels>
<TopPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right"></jwg:GridEXPageNavigatorNextBlockPanel>
</TopPageNavigatorPanels>
</PageNavigatorSettings>

<GroupTotalRowFormatStyle BackColor="Control" Height="20px"></GroupTotalRowFormatStyle>

<HeaderFormatStyle Appearance="RaisedLight" BackColor="Control" BorderColor="GrayText" BorderWidth="1px" BorderStyle="Solid" ForeColor="ControlText" Height="20px"></HeaderFormatStyle>

<AlternatingRowFormatStyle BackColor="Control" BorderWidth="1px" BorderStyle="Solid" Height="20px"></AlternatingRowFormatStyle>

<GroupRowFormatStyle TextAlign="left" VerticalAlign="middle" BackColor="Control" ForeColor="ControlText" Height="20px"></GroupRowFormatStyle>

<GroupByBoxFormatStyle Padding="5px 4px 5px 4px" BackColor="ControlDark"></GroupByBoxFormatStyle>

<FocusCellFormatStyle BorderColor="Highlight" BorderWidth="1px" BorderStyle="Solid"></FocusCellFormatStyle>

<PageNavigatorFormatStyle Appearance="RaisedLight" BackColor="Control"></PageNavigatorFormatStyle>

<TotalRowFormatStyle BackColor="Window" Height="20px"></TotalRowFormatStyle>

<GroupRowIndentJunctionFormatStyle BackColor="Control"></GroupRowIndentJunctionFormatStyle>

<EditorsFormatStyle BackColor="Control"></EditorsFormatStyle>

<NewRowFormatStyle BackColor="Window" ForeColor="WindowText" Height="20px"></NewRowFormatStyle>

<GroupByBoxInfoFormatStyle VerticalAlign="middle" Padding="4px 4px" BackColor="Control" ForeColor="ControlDark" Height="100%"></GroupByBoxInfoFormatStyle>

<RootTable><Columns>
<jwg:GridEXColumn ActAsSelector="True" AllowDrag="False" Key="Selector" Width="20px" DefaultGroupPrefix=":" ColumnType="CheckBox" EditType="CheckBox" FilterRowComparison="Equal" FilterEditType="NoEdit" InvalidValueAction="DiscardChanges" DataTypeCode="Boolean">
<CellStyle Width="20px"></CellStyle>
</jwg:GridEXColumn>
<jwg:GridEXColumn Caption="EsquemaId" Key="EsquemaId" DataMember="EsquemaId" DefaultGroupPrefix="EsquemaId:" FilterRowComparison="Equal" Visible="False" InvalidValueAction="DiscardChanges" DataTypeCode="Object"></jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Clave" Key="Clave" HeaderAlignment="Center" DataMember="Clave" DefaultGroupPrefix="Clave:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object"></jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Producto" Key="Nombre" Width="230px" HeaderAlignment="Center" DataMember="Nombre" DefaultGroupPrefix="Producto:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object">
<CellStyle Width="230px"></CellStyle>
</jwg:GridEXColumn>
</Columns>
</RootTable>

<FilterRowFormatStyle BackColor="Window" ForeColor="WindowText"></FilterRowFormatStyle>

<RowFormatStyle TextAlign="left" VerticalAlign="top" BackColor="Window" BorderWidth="1px" BorderStyle="Solid" ForeColor="WindowText" Height="20px"></RowFormatStyle>

<GroupIndentFormatStyle BackColor="Control"></GroupIndentFormatStyle>

<PreviewRowFormatStyle ForeColor="Blue" Height="100%"></PreviewRowFormatStyle>
                                </jwg:GridEX>
                            </ContentTemplate>
                        </asp:UpdatePanel><asp:UpdatePanel ID="UpdatePanel14" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                            <ContentTemplate>
                                <br />
                                <asp:Label ID="LabelPro" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                    Text="Label"></asp:Label>&nbsp;<br />
                                <jwg:GridEX ID="GridEXPro" runat="server" DefaultFilterRowComparison="Equal" FilterMode="Automatic"
                                    GridLineColor="ScrollBar" GroupByBoxVisible="False">
<SelectedFormatStyle VerticalAlign="top" BackColor="#316AC5" ForeColor="HighlightText" Height="20px"></SelectedFormatStyle>

<PageNavigatorSettings PageBlockSize="1000" PageSize="10"><BottomPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel Visible="False"></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorNextBlockPanel>
</BottomPageNavigatorPanels>
<TopPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right"></jwg:GridEXPageNavigatorNextBlockPanel>
</TopPageNavigatorPanels>
</PageNavigatorSettings>

<GroupTotalRowFormatStyle BackColor="Control" Height="20px"></GroupTotalRowFormatStyle>

<HeaderFormatStyle Appearance="RaisedLight" BackColor="Control" BorderColor="GrayText" BorderWidth="1px" BorderStyle="Solid" ForeColor="ControlText" Height="20px"></HeaderFormatStyle>

<AlternatingRowFormatStyle BackColor="Control" BorderWidth="1px" BorderStyle="Solid" Height="20px"></AlternatingRowFormatStyle>

<GroupRowFormatStyle TextAlign="left" VerticalAlign="middle" BackColor="Control" ForeColor="ControlText" Height="20px"></GroupRowFormatStyle>

<GroupByBoxFormatStyle Padding="5px 4px 5px 4px" BackColor="ControlDark"></GroupByBoxFormatStyle>

<FocusCellFormatStyle BorderColor="Highlight" BorderWidth="1px" BorderStyle="Solid"></FocusCellFormatStyle>

<PageNavigatorFormatStyle Appearance="RaisedLight" BackColor="Control"></PageNavigatorFormatStyle>

<TotalRowFormatStyle BackColor="Window" Height="20px"></TotalRowFormatStyle>

<GroupRowIndentJunctionFormatStyle BackColor="Control"></GroupRowIndentJunctionFormatStyle>

<EditorsFormatStyle BackColor="Control"></EditorsFormatStyle>

<NewRowFormatStyle BackColor="Window" ForeColor="WindowText" Height="20px"></NewRowFormatStyle>

<GroupByBoxInfoFormatStyle VerticalAlign="middle" Padding="4px 4px" BackColor="Control" ForeColor="ControlDark" Height="100%"></GroupByBoxInfoFormatStyle>

<RootTable><Columns>
<jwg:GridEXColumn ActAsSelector="True" AllowDrag="False" Key="Selector" Width="20px" DefaultGroupPrefix=":" ColumnType="CheckBox" EditType="CheckBox" FilterRowComparison="Equal" FilterEditType="NoEdit" InvalidValueAction="DiscardChanges" DataTypeCode="Boolean">
<CellStyle Width="20px"></CellStyle>
</jwg:GridEXColumn>
<jwg:GridEXColumn Caption="EsquemaId" Key="EsquemaId" DataMember="EsquemaId" DefaultGroupPrefix="EsquemaId:" FilterRowComparison="Equal" Visible="False" InvalidValueAction="DiscardChanges" DataTypeCode="Object"></jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Clave" Key="Clave" HeaderAlignment="Center" DataMember="Clave" DefaultGroupPrefix="Clave:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object"></jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Producto" Key="Nombre" Width="230px" HeaderAlignment="Center" DataMember="Nombre" DefaultGroupPrefix="Producto:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object">
<CellStyle Width="230px"></CellStyle>
</jwg:GridEXColumn>
</Columns>
</RootTable>

<FilterRowFormatStyle BackColor="Window" ForeColor="WindowText"></FilterRowFormatStyle>

<RowFormatStyle TextAlign="left" VerticalAlign="top" BackColor="Window" BorderWidth="1px" BorderStyle="Solid" ForeColor="WindowText" Height="20px"></RowFormatStyle>

<GroupIndentFormatStyle BackColor="Control"></GroupIndentFormatStyle>

<PreviewRowFormatStyle ForeColor="Blue" Height="100%"></PreviewRowFormatStyle>
</jwg:GridEX>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel11" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                            <ContentTemplate>
                                <br />
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                    Text="Label"></asp:Label><br />
                                <jwg:GridEX ID="GridEXActivos" runat="server" DefaultFilterRowComparison="Equal"
                                    FilterMode="Automatic" GridLineColor="ScrollBar" GroupByBoxVisible="False">
<SelectedFormatStyle VerticalAlign="top" BackColor="#316AC5" ForeColor="HighlightText" Height="20px"></SelectedFormatStyle>

<PageNavigatorSettings PageBlockSize="1000" PageSize="10"><BottomPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel Visible="False"></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right" Visible="False"></jwg:GridEXPageNavigatorNextBlockPanel>
</BottomPageNavigatorPanels>
<TopPageNavigatorPanels>
<jwg:GridEXPageNavigatorItemCountPanel></jwg:GridEXPageNavigatorItemCountPanel>
<jwg:GridEXPageNavigatorEmptyPanel Width="100%"></jwg:GridEXPageNavigatorEmptyPanel>
<jwg:GridEXPageNavigatorPreviousBlockPanel Align="right"></jwg:GridEXPageNavigatorPreviousBlockPanel>
<jwg:GridEXPageNavigatorPreviousPagePanel Align="right"></jwg:GridEXPageNavigatorPreviousPagePanel>
<jwg:GridEXPageNavigatorPageSelectorDropDownPanel Align="right"></jwg:GridEXPageNavigatorPageSelectorDropDownPanel>
<jwg:GridEXPageNavigatorNextPagePanel Align="right"></jwg:GridEXPageNavigatorNextPagePanel>
<jwg:GridEXPageNavigatorNextBlockPanel Align="right"></jwg:GridEXPageNavigatorNextBlockPanel>
</TopPageNavigatorPanels>
</PageNavigatorSettings>

<GroupTotalRowFormatStyle BackColor="Control" Height="20px"></GroupTotalRowFormatStyle>

<HeaderFormatStyle Appearance="RaisedLight" BackColor="Control" BorderColor="GrayText" BorderWidth="1px" BorderStyle="Solid" ForeColor="ControlText" Height="20px"></HeaderFormatStyle>

<AlternatingRowFormatStyle BackColor="Control" BorderWidth="1px" BorderStyle="Solid" Height="20px"></AlternatingRowFormatStyle>

<GroupRowFormatStyle TextAlign="left" VerticalAlign="middle" BackColor="Control" ForeColor="ControlText" Height="20px"></GroupRowFormatStyle>

<GroupByBoxFormatStyle Padding="5px 4px 5px 4px" BackColor="ControlDark"></GroupByBoxFormatStyle>

<FocusCellFormatStyle BorderColor="Highlight" BorderWidth="1px" BorderStyle="Solid"></FocusCellFormatStyle>

<PageNavigatorFormatStyle Appearance="RaisedLight" BackColor="Control"></PageNavigatorFormatStyle>

<TotalRowFormatStyle BackColor="Window" Height="20px"></TotalRowFormatStyle>

<GroupRowIndentJunctionFormatStyle BackColor="Control"></GroupRowIndentJunctionFormatStyle>

<EditorsFormatStyle BackColor="Control"></EditorsFormatStyle>

<NewRowFormatStyle BackColor="Window" ForeColor="WindowText" Height="20px"></NewRowFormatStyle>

<GroupByBoxInfoFormatStyle VerticalAlign="middle" Padding="4px 4px" BackColor="Control" ForeColor="ControlDark" Height="100%"></GroupByBoxInfoFormatStyle>

<RootTable><Columns>
<jwg:GridEXColumn ActAsSelector="True" AllowDrag="False" Key="Selector" Width="20px" DefaultGroupPrefix=":" ColumnType="CheckBox" EditType="CheckBox" FilterRowComparison="Equal" FilterEditType="NoEdit" InvalidValueAction="DiscardChanges" DataTypeCode="Boolean">
<CellStyle Width="20px"></CellStyle>
</jwg:GridEXColumn>
<jwg:GridEXColumn Caption="Clave" Key="ActivoClave" HeaderAlignment="Center" DataMember="ActivoClave" DefaultGroupPrefix="Clave:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object"></jwg:GridEXColumn>
<jwg:GridEXColumn Caption="IdElectronico" Key="IdElectronico" Width="230px" HeaderAlignment="Center" DataMember="IdElectronico" DefaultGroupPrefix="Cliente:" FilterRowComparison="Contains" FilterEditType="TextBox" InvalidValueAction="DiscardChanges" DataTypeCode="Object">
<CellStyle Width="230px"></CellStyle>
</jwg:GridEXColumn>
</Columns>
</RootTable>

<FilterRowFormatStyle BackColor="Window" ForeColor="WindowText"></FilterRowFormatStyle>

<RowFormatStyle TextAlign="left" VerticalAlign="top" BackColor="Window" BorderWidth="1px" BorderStyle="Solid" ForeColor="WindowText" Height="20px"></RowFormatStyle>

<GroupIndentFormatStyle BackColor="Control"></GroupIndentFormatStyle>

<PreviewRowFormatStyle ForeColor="Blue" Height="100%"></PreviewRowFormatStyle>
                                </jwg:GridEX>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel9" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                            <ContentTemplate>
                                <br />
                                <div runat="server" id="divAlgo">
                                </div>
                                <asp:Panel ID="PanelLiquidacion" runat="server" Height="100%" Width="100%" Visible="False">
                                    <table>
                                        <tr>
                                            <td style="width: 61%">
                                                <asp:Label ID="LabelDegustacion" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                                    Font-Size="9pt" Text="Degustacion:" Width="158px"></asp:Label>
                                            </td>
                                            <td style="width: 60%">
                                                <asp:TextBox ID="txtDegustacion" runat="server">0.00</asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 61%">
                                                <asp:Label ID="LabelChequesDevueltos" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                                    Font-Size="9pt" Text="ChequesDevueltos:" Width="158px"></asp:Label>
                                            </td>
                                            <td style="width: 60%">
                                                <asp:TextBox ID="txtChequesDevueltos" runat="server">0.00</asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 61%">
                                                <asp:Label ID="LabelComision" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                                    Font-Size="9pt" Text="Comision:" Width="158px"></asp:Label>
                                            </td>
                                            <td style="width: 60%">
                                                <asp:TextBox ID="txtComision" runat="server">0.00</asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                &nbsp; &nbsp; &nbsp;&nbsp;
                            </ContentTemplate>
                        </asp:UpdatePanel><asp:UpdatePanel ID="UpdatePanel13" runat="server" UpdateMode="Conditional" RenderMode="Inline">
                            <ContentTemplate>
                                <br />
                                <asp:Panel ID="PanelPresupuesto" runat="server" Height="100%" Width="100%" Visible="False">
                                    <table>
                                        <tr>
                                            <td style="width: 61%">
                                                <asp:Label ID="LabelPresupuestoDia" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                                    Font-Size="9pt" Text="Presupuesto del Día:" Width="158px"></asp:Label>
                                            </td>
                                            <td style="width: 60%">
                                                <asp:TextBox ID="txtPresupuestoDia" runat="server">0.00</asp:TextBox></td>
                                        </tr>                                        
                                    </table>
                                </asp:Panel>
                                &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                                <br />
                                <asp:UpdatePanel ID="UpdatePanel15" runat="server" RenderMode="Inline" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <br />
                                        <asp:Panel ID="PanelComision" runat="server" Height="100%" Visible="False" Width="100%">
                                            <table>
                                                <tr>
                                                    <td style="width: 61%">
                                                        <asp:Label ID="LabelPorcentajeComision" runat="server" Font-Bold="True" Font-Names="Tahoma"
                                                            Font-Size="9pt" Text="Comision:" Width="158px"></asp:Label>
                                                    </td>
                                                    <td style="width: 60%">
                                                        <asp:TextBox ID="txtComisionElectro" runat="server">0.00</asp:TextBox></td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                        &nbsp; &nbsp; &nbsp;&nbsp;
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:HiddenField ID="Logeado" runat="server" />
                    </td>
                </tr>
            </table>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:UpdateProgress ID="UpdateProgress2" runat="server" DisplayAfter="100">
                <ProgressTemplate>
                    <iframe style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; filter: alpha(opacity=40)">
                    </iframe>
                    <div style="position: fixed; top: 0px; left: 0px; color: Blue">
                        <!--<img alt="" src="images/loader.gif" />-->
                        cargando
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            &nbsp;&nbsp;
            <div id="Update" style="visibility: hidden">
                <div style="position: fixed; top: 0px; left: 0px; width: 100%; height: 100%; background-color: #FFFFFF">
                </div>
                <div style="position: fixed; top: 35%; left: 45%">
                    <img alt="" src="images/loader2.gif" /></div>
            </div>
        </div>
    </form>
</body>
</html>
