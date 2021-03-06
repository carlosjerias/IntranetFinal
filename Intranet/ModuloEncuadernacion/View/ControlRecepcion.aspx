﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Aplicaciones.Master" AutoEventWireup="true" CodeBehind="ControlRecepcion.aspx.cs" Inherits="Intranet.ModuloEncuadernacion.View.ControlRecepcion" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--
<div align="center" >
<h3 style="color: rgb(23, 130, 239);">Control Recepción Productos Terminados</h3>
</div>--%>
<table style="background-color:#EEE;border:1px solid #999;padding:5px;border-radius:10px 10px 10px 10px;" align="center" width="890px">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style15">
               
                <asp:Label ID="Label3" runat="server" Text="OP:"></asp:Label>
               
            </td>
            <td class="style22">
               
                <asp:TextBox ID="txtOP" runat="server"></asp:TextBox>
               
            </td>
            <td class="style13">
                &nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Nombre OP: "></asp:Label>
                </td>
            <td class="style16">
                <asp:TextBox ID="txtNombreOP" runat="server"></asp:TextBox>

            </td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style15">
               
                <asp:Label ID="lblFechaInicio" runat="server" Text="Fecha Inicio: "></asp:Label>
               
            </td>
            <td class="style22">
               
                <asp:TextBox ID="txtFechaInicio" runat="server" ></asp:TextBox>
               
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                    TargetControlID="txtFechaInicio" Format="MM-dd-yyyy">
                </asp:CalendarExtender>
               
            </td>
            <td class="style13">
                &nbsp;
                <asp:Label ID="lblFechaTermino" runat="server" Text="Fecha Termino: "></asp:Label>
                </td>
            <td class="style16">
                <asp:TextBox ID="txtFechaTermino" runat="server"></asp:TextBox>

                <asp:CalendarExtender ID="txtFechaTermino_CalendarExtender" runat="server" 
                    Enabled="True" Format="MM-dd-yyyy" TargetControlID="txtFechaTermino">
                </asp:CalendarExtender>

            </td>
            <td class="style14">
            <div style="margin-left:17px;">
                <asp:Button ID="btnFiltro" runat="server" Text="Filtrar"  Width="73px" 
                    onclick="btnFiltro_Click1" style="height: 26px" />
           </div>
            </td>
        </tr>
    </table>


<br />

    <%--inicio tabconteiner--%>
    <div runat="server" id="divbotones" 
        style="text-align:right;margin-bottom:1px;width:1090px; margin-top:-20px;" >
   <a title="Actualizar OTs Nuevas">
        <a title="Exportar a PDF">
        <asp:ImageButton 
                   ID="ibPDF" runat="server" Height="20px" 
                   ImageUrl="~/Images/pdf-icon.jpg" Width="20px" 
                   Visible="False" onclick="ibPDF_Click"  />
                   </a>
                      &nbsp;&nbsp;
   <a title="Exportar a Excel">
    <asp:ImageButton ID="ibExcel" 
                   runat="server" Height="20px" 
                   ImageUrl="~/Images/Excel-icon.png" Width="20px" 
            onclick="ibExcel_Click" Visible="False" />
                   </a>&nbsp;&nbsp; <a title="Atrás" href="javascript:history.go(-1)"> 
                   <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/Images/Atras-icon.png" Height="20px" Width="20px" />
</a> 


       </div>

       <%--fin exportaciones--%>
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" 
        Height="470px" Width="1098px">
        <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="En Proceso">
            <ContentTemplate>
         <div style="border:1px solid blue;height:466px;overflow:scroll;" >
                  <telerik:RadGrid ID="RadGrid1" runat="server" BorderWidth="0px"  Skin="Outlook">
                    <MasterTableView AutoGenerateColumns="False" DataKeyNames="id_ProductosTerminados">
                        <NoRecordsTemplate>
                            <div style="text-align:center;">
                                <br />
                                ¡ No se han encontrado registros !<br /></div>
                        </NoRecordsTemplate>
                        <CommandItemSettings ExportToPdfText="Export to Pdf" />
                        <Columns>
                           <telerik:GridBoundColumn DataField="cod_Pallet" HeaderText="Pallet" 
                                ReadOnly="True" SortExpression="cod_Pallet" UniqueName="cod_Pallet">
                                <ItemStyle Width="30px" />
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn DataField="OT" HeaderText="OT" 
                                ReadOnly="True" SortExpression="OT" UniqueName="OT">
                                <ItemStyle Width="30px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="NombreOT" HeaderText="Nombre OT" 
                                SortExpression="NombreOT" UniqueName="NombreOT">
                                <ItemStyle Width="230px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Terminacion"   HeaderText="Terminacion" UniqueName="Terminacion">
                                <ItemStyle HorizontalAlign="Right" Width="50px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="TipoEmbalaje" HeaderText="Embalaje" 
                                UniqueName="TipoEmbalaje">
                                <ItemStyle Width="40px" />
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn DataField="Total" HeaderText="Total" 
                                ReadOnly="True" SortExpression="Total" UniqueName="Total">
                                <ItemStyle Width="30px" />
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn  DataField="FechaCreacion" HeaderText="FechaCreacion" 
                                ReadOnly="True" SortExpression="FechaCreacion" UniqueName="FechaCreacion">
                                <ItemStyle Width="100px" />
                            </telerik:GridBoundColumn>

                            
                            <telerik:GridBoundColumn DataField="FechaRecepcion" HeaderText="FechaRecepcion" 
                                ReadOnly="True" SortExpression="FechaRecepcion" UniqueName="FechaRecepcion">
                                <ItemStyle Width="70px" />
                            </telerik:GridBoundColumn>


                           <telerik:GridBoundColumn DataField="Modelo" HeaderText="Modelo" 
                                ReadOnly="True" SortExpression="Modelo" UniqueName="Modelo">
                                <ItemStyle Width="130px" HorizontalAlign="Right" />
                            </telerik:GridBoundColumn>

                            
                            <telerik:GridBoundColumn DataField="Observacion" HeaderText="Observacion" 
                                ReadOnly="True" SortExpression="Observacion" UniqueName="Observacion">
                                <ItemStyle Width="140px" />
                            </telerik:GridBoundColumn>


                        </Columns>
                    </MasterTableView>
                    <ClientSettings EnableRowHoverStyle="True">
                    </ClientSettings>
                    <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default" 
                        EnableImageSprites="True">
                    </HeaderContextMenu>
                </telerik:RadGrid>
                </div>
            </ContentTemplate>
        </asp:TabPanel>


        <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="Despachadas">
            <ContentTemplate>
              <div style="border:1px solid blue;height:466px;overflow:scroll;" >
                <telerik:RadGrid ID="RadGrid2" BorderWidth="0px" runat="server"  Skin="Outlook" 
                      GridLines="None">
                    <MasterTableView AutoGenerateColumns="False" DataKeyNames="id_ProductosTerminados">
                        <NoRecordsTemplate>
                            <div style="text-align:center;">
                                <br />
                                ¡ No se han encontrado registros !<br /></div>
                        </NoRecordsTemplate>
                        <CommandItemSettings ExportToPdfText="Export to Pdf" />
                        <Columns>
                            <telerik:GridBoundColumn DataField="cod_Pallet" HeaderText="Pallet" 
                                ReadOnly="True" SortExpression="cod_Pallet" UniqueName="cod_Pallet">
                                <ItemStyle Width="30px" />
                            </telerik:GridBoundColumn>


                            <telerik:GridBoundColumn DataField="OT" HeaderText="OT" 
                                ReadOnly="True" SortExpression="OT" UniqueName="OT">
                                <ItemStyle Width="30px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="NombreOT" HeaderText="Nombre OT" 
                                SortExpression="NombreOT" UniqueName="NombreOT">
                                <ItemStyle Width="190px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="Terminacion"   HeaderText="Terminacion" UniqueName="Terminacion">
                                <ItemStyle HorizontalAlign="Right" Width="40px" />
                            </telerik:GridBoundColumn>
                            <telerik:GridBoundColumn DataField="TipoEmbalaje" HeaderText="Tipo Embalaje" 
                                UniqueName="TipoEmbalaje">
                                <ItemStyle Width="80px" />
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn DataField="Total" HeaderText="Total Ejemplares" 
                                ReadOnly="True" SortExpression="Total" UniqueName="Total" ItemStyle-HorizontalAlign="Right">
                                <ItemStyle Width="50px" />
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn Visible="False" DataField="FechaCreacion" HeaderText="FechaCreacion" 
                                ReadOnly="True" SortExpression="FechaCreacion" UniqueName="FechaCreacion">
                                <ItemStyle Width="80px" />
                            </telerik:GridBoundColumn>


                            <telerik:GridBoundColumn DataField="ValidadoPor" HeaderText="Validado" 
                                ReadOnly="True" SortExpression="ValidadoPor" UniqueName="ValidadoPor">
                                <ItemStyle Width="40px" />
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn DataField="FechaValidacion" HeaderText="FechaValidacion" 
                                ReadOnly="True" SortExpression="FechaValidacion" UniqueName="FechaValidacion">
                                <ItemStyle Width="90px" />
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn DataField="RecepcionadoPor" HeaderText="Recepcionado" 
                                ReadOnly="True" SortExpression="RecepcionadoPor" UniqueName="RecepcionadoPor">
                                <ItemStyle Width="40px" />
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn DataField="FechaRecepcion" HeaderText="FechaRecepcion" 
                                ReadOnly="True" SortExpression="FechaRecepcion" UniqueName="FechaRecepcion">
                                <ItemStyle Width="90px" />
                            </telerik:GridBoundColumn>

                            <telerik:GridBoundColumn DataField="Modelo" HeaderText="Modelo" 
                                ReadOnly="True" SortExpression="Modelo" UniqueName="Modelo">
                                <ItemStyle Width="80px" />
                            </telerik:GridBoundColumn>

                        </Columns>
                    </MasterTableView>
                    <ClientSettings EnableRowHoverStyle="True">
                    </ClientSettings>
                    <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default" 
                        EnableImageSprites="True">
                    </HeaderContextMenu>
                </telerik:RadGrid>
                </div>
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
    <br />
</asp:Content>
