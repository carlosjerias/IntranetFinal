﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Aplicaciones.Master" AutoEventWireup="true" CodeBehind="AtenderSolicitudPapel.aspx.cs" Inherits="Intranet.ModuloBodegaPliegos.View.AtenderSolicitudPapel" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.divTitulo{
    background: linear-gradient(top, #D3D7DA 0%, #E2EBF4 100%);  
    background: -moz-linear-gradient(top, #D3D7DA 0%, #E2EBF4 100%); 
    background: -webkit-linear-gradient(top, #D3D7DA 0%,#E2EBF4 100%);
    font-weight: bold;
    padding: 5px;
    border: 1px solid #959595;
    text-align: left;
}
.divSeccion{
    padding: 10px;
    border: 1px solid #959595;
    border-top: 0px;
    margin-bottom: 2px;
}
.divEtiqueta{
    display: inline-block;
    padding: 5px;
    font-weight: bold;
    text-align: left;
}
.divCampo{
    display: inline-block;
    text-align: left;
}
    .style2
    {
        width: 129px;
    }
    .style3
    {
        width: 519px;
    }
    .style4
    {
        width: 155px;
    }
    .style5
    {
        width: 339px;
    }
    .style6
    {
        width: 129px;
        height: 23px;
    }
    .style7
    {
        width: 155px;
        height: 23px;
    }
    .style8
    {
        width: 339px;
        height: 23px;
    }
    .style9
    {
        height: 23px;
    }
    .style10
    {
        width: 610px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
    <div class="divTitulo">
    Atender Solicitud Papel</div>
    <div class="divSeccion">
        <table style="width: 100%;">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Numero OP:"></asp:Label>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Nombre OP:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Componente:"></asp:Label>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Fecha Creacion OP:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Formato Impresión:"></asp:Label>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label9" runat="server" Text="Cliente:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>

    <div class="divTitulo">
    Datos Papel Solicitado</div>
    <div class="divSeccion">
<table style="width: 100%;">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Código Producto:"></asp:Label>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;
                    </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style6">
                    </td>
                <td class="style6">
                    <asp:Label ID="Label14" runat="server" Text="Descripción:"></asp:Label>
                </td>
                <td class="style7">
                    &nbsp;
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style8">
                    &nbsp;
                    <asp:Label ID="Label19" runat="server" Text="Gramaje:"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="Label20" runat="server" Text="Ancho:"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="Label10" runat="server" Text="Alto:"></asp:Label>
                </td>
                <td class="style9">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label21" runat="server" Text="certificación:"></asp:Label>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;
                    <asp:Label ID="Label25" runat="server" Text="Tipo Certificación:"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;
                </td>
            </tr>
            </table>
    </div>
        <div class="divTitulo">
    Inventario Papel Bodega Pliegos</div>
    <div class="divSeccion">
    <telerik:radgrid ID="RadGrid1" runat="server" 
                Skin="Outlook" >
                <MasterTableView AutoGenerateColumns="False" DataKeyNames="OT"><NoRecordsTemplate><div style="text-align:center;"><br />¡ No se han encontrado registros !<br /></div></NoRecordsTemplate><CommandItemSettings ExportToPdfText="Export to Pdf" />
                
                <Columns>
                    <telerik:GridBoundColumn DataField="CodigoProducto" HeaderText="CodigoProducto" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" SortExpression="CodigoProducto" UniqueName="CodigoProducto">
                    </telerik:GridBoundColumn>
                        
                    <telerik:GridBoundColumn DataField="Marca" HeaderText="Marca" ItemStyle-Width="30px" SortExpression="Marca" UniqueName="Marca">
                    </telerik:GridBoundColumn>         
             
                    <telerik:GridBoundColumn DataField="Descripcion" HeaderText="Descripcion" ItemStyle-Width="160px" SortExpression="Descripcion" UniqueName="Descripcion">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="Gramaje" HeaderText="Gramaje" ItemStyle-Width="40px"  SortExpression="Gramaje" UniqueName="Gramaje">
                    </telerik:GridBoundColumn>               
                    
                    
                    <telerik:GridBoundColumn DataField="Ancho" HeaderText="Ancho" ItemStyle-Width="190px" SortExpression="Ancho" UniqueName="Ancho">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="Alto" HeaderText="Alto" ItemStyle-Width="30px"  SortExpression="Alto" UniqueName="Alto">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="Certificacion" HeaderText="Certificacion" ItemStyle-Width="30px" SortExpression="Certificacion" UniqueName="Certificacion">
                    </telerik:GridBoundColumn>
                    
                    

                    <telerik:GridBoundColumn DataField="StockFL" HeaderText="StockFL" ItemStyle-Width="30px" SortExpression="StockFL" UniqueName="StockFL">
                    </telerik:GridBoundColumn>
                    

                    <telerik:GridBoundColumn DataField="PliegosSol" HeaderText="PliegosSol" ItemStyle-Width="50px" SortExpression="PliegosSol" UniqueName="PliegosSol">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="Asignar" HeaderText="Asignar" ItemStyle-Width="50px" SortExpression="Asignar" UniqueName="Asignar">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="Inventario" HeaderText="Inventario" ItemStyle-Width="50px" SortExpression="Inventario" UniqueName="Inventario">
                    </telerik:GridBoundColumn>

                                
                </Columns>

                </MasterTableView>
                <ClientSettings EnableRowHoverStyle="true">
                </ClientSettings>
                <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default" 
                    EnableImageSprites="True">
                </HeaderContextMenu>
                </telerik:radgrid>
    </div>
    <div class="divTitulo">
    Papel Asignado</div>
    <div class="divSeccion">
    <telerik:radgrid ID="RadGrid2" runat="server" 
                Skin="Outlook" >
                <MasterTableView AutoGenerateColumns="False" DataKeyNames="OT"><NoRecordsTemplate><div style="text-align:center;"><br />¡ No se han encontrado registros !<br /></div></NoRecordsTemplate><CommandItemSettings ExportToPdfText="Export to Pdf" />
                
                <Columns>
                    <telerik:GridBoundColumn DataField="TipoPapel" HeaderText="TipoPapel" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" SortExpression="TipoPapel" UniqueName="TipoPapel">
                    </telerik:GridBoundColumn>
                        
                    <telerik:GridBoundColumn DataField="CodigoPallet" HeaderText="CodigoPallet" ItemStyle-Width="30px" SortExpression="CodigoPallet" UniqueName="CodigoPallet">
                    </telerik:GridBoundColumn>         
             
                    <telerik:GridBoundColumn DataField="Ubicacion" HeaderText="Ubicacion" ItemStyle-Width="160px" SortExpression="Ubicacion" UniqueName="Ubicacion">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="CodigoProducto" HeaderText="CodigoProducto" ItemStyle-Width="40px"  SortExpression="CodigoProducto" UniqueName="CodigoProducto">
                    </telerik:GridBoundColumn>               
                    
                    
                    <telerik:GridBoundColumn DataField="Marca" HeaderText="Marca" ItemStyle-Width="190px" SortExpression="Marca" UniqueName="Marca">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="Gramaje" HeaderText="Gramaje" ItemStyle-Width="40px"  SortExpression="Gramaje" UniqueName="Gramaje">
                    </telerik:GridBoundColumn>               
                    
                    
                    <telerik:GridBoundColumn DataField="Ancho" HeaderText="Ancho" ItemStyle-Width="190px" SortExpression="Ancho" UniqueName="Ancho">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="Alto" HeaderText="Alto" ItemStyle-Width="30px"  SortExpression="Alto" UniqueName="Alto">
                    </telerik:GridBoundColumn>

                    <telerik:GridBoundColumn DataField="Certificacion" HeaderText="Certificacion" ItemStyle-Width="30px" SortExpression="Certificacion" UniqueName="Certificacion">
                    </telerik:GridBoundColumn>

                                
                </Columns>

                </MasterTableView>
                <ClientSettings EnableRowHoverStyle="true">
                </ClientSettings>
                <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default" 
                    EnableImageSprites="True">
                </HeaderContextMenu>
                </telerik:radgrid>
    </div>
    <br />
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="style10">
                    <div align="center">
                        <table style="width: 80%;">
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td colspan="2">
                                    &nbsp;
                                    <asp:Label ID="Label26" runat="server" Text="Formato a Corte"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Label ID="Label27" runat="server" Text="Ancho"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Label ID="Label28" runat="server" Text="Alto"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td>
                    <div align="center">
                    
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Label ID="Label32" runat="server" Text="Pliegos"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Label ID="Label33" runat="server" Text="Kilos"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                    <asp:Label ID="Label29" runat="server" Text="Papel Solicitado"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;
                                    <asp:Label ID="Label30" runat="server" Text="Papel Asignado"></asp:Label>
                                </td>
                                <td class="style9">
                                    &nbsp;
                                </td>
                                <td class="style9">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label31" runat="server" Text="Saldo por Asignar"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            </table>
    </div>

    <div align="center">
        <asp:Button ID="Button1" runat="server" Text="Grabar" onclick="Button1_Click" 
            style="height: 26px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnFiltro"
            runat="server" Text="Cancelar" onclick="Button2_Click" />
    </div>
</asp:Content>
