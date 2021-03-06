﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura/View/MasterAplicaciones.Master"
    AutoEventWireup="true" CodeBehind="InfDespachoFuturo2.aspx.cs" Inherits="Intranet.ModuloDespacho.View.InfDespachoFuturo2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../js/jquery-1.9.1.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .filterable
        {
            margin-top: 15px;
        }
        .filterable .panel-heading .pull-right
        {
            margin-top: -20px;
        }
        .filterable .filters input[disabled]
        {
            background-color: transparent;
            border: none;
            cursor: auto;
            box-shadow: none;
            padding: 0;
            height: auto;
        }
        .filterable .filters input[disabled]::-webkit-input-placeholder
        {
            color: #333;
        }
        .filterable .filters input[disabled]::-moz-placeholder
        {
            color: #333;
        }
        .filterable .filters input[disabled]:-ms-input-placeholder
        {
            color: #333;
        }
        .container
        {
            width: 95%;
            height: 800px;
        }
        .pre-scrollable
        {
            max-height: 746px;
            overflow-y: auto;
        }
    </style>
    <script>
        $(document).ready(function () {
            $('.filterable .btn-filter').click(function () {
                var $panel = $(this).parents('.filterable'),
        $filters = $panel.find('.filters input'),
        $tbody = $panel.find('.table tbody');
                if ($filters.prop('disabled') == true) {
                    $filters.prop('disabled', false);
                    $filters.first().focus();
                } else {
                    $filters.val('').prop('disabled', true);
                    $tbody.find('.no-result').remove();
                    $tbody.find('tr').show();
                }
            });

            $('.filterable .filters input').keyup(function (e) {
                /* Ignore tab key */
                var code = e.keyCode || e.which;
                if (code == '9') return;
                /* Useful DOM data and selectors */
                var $input = $(this),
        inputContent = $input.val().toLowerCase(),
        $panel = $input.parents('.filterable'),
        column = $panel.find('.filters th').index($input.parents('th')),
        $table = $panel.find('.table'),
        $rows = $table.find('tbody tr');
                /* Dirtiest filter function ever ;) */
                var $filteredRows = $rows.filter(function () {
                    var value = $(this).find('td').eq(column).text().toLowerCase();
                    return value.indexOf(inputContent) === -1;
                });
                /* Clean previous no-result if exist */
                $table.find('tbody .no-result').remove();
                /* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
                $rows.show();
                $filteredRows.hide();
                /* Prepend no-result row if all rows are filtered */
                if ($filteredRows.length === $rows.length) {
                    $table.find('tbody').prepend($('<tr class="no-result text-center"><td colspan="' + $table.find('.filters th').length + '">No result found</td></tr>'));
                }
            });
        });
    </script>
    <script>
        function divPiePagina() {
            document.getElementById("lblFooter").style.position = "fixed";
            document.getElementById("lblFooter").style.marginTop = "710px";
            document.getElementById("lblFooter").style.marginleft = "30%";
        }
    </script>
    <script type="text/javascript">
        function DetalleOT(OT) {
            window.open('../../ModuloProduccion/View/DetalleOT.aspx?ot=' + OT, 'Detalle OT', 'left=160,top=100,width=1115 ,height=793,scrollbars=no,dependent=no,toolbar=no,location=no,status=no,directories=no,menubar=no,status=no,resizable=yes');
        };
           
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <center>
            <div class="form-inline well">
                <div class="form-group">
                    <label class="" for="OT">
                        OT</label>
                    <asp:TextBox ID="txtOT" class="form-control" runat="server" placeholder="Numero OT"></asp:TextBox>
                    <div class="form-group">
                        <label class="" for="endDate">
                            Nombre OT</label>
                        <asp:TextBox ID="txtNombreOT" class="form-control" runat="server" placeholder="Nombre OT"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="" for="endDate">
                            Cliente</label>
                        <asp:TextBox ID="txtCliente" class="form-control" runat="server" placeholder="Cliente"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="" for="endDate">
                            Fechas
                        </label>
                        <asp:TextBox ID="txtFechaInicio" class="form-control" runat="server" placeholder="Inicio"
                            Style="width: 100px;"></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFechaInicio"
                            Format="dd/MM/yyyy">
                        </asp:CalendarExtender>
                    </div>
                    <div class="form-group">
                        <label class="" for="endDate">
                            a</label>
                        <asp:TextBox ID="txtFechaTermino" class="form-control" runat="server" placeholder="Termino"
                            Style="width: 100px;"></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtFechaTermino"
                            Format="dd/MM/yyyy">
                        </asp:CalendarExtender>
                    </div>
                </div>
                <asp:Button ID="btnFiltro" runat="server" class="btn btn-default" OnClick="btnFiltro_Click1"
                    Text="Filtar" />
            </div>
        </center>
        <div runat="server" id="divbotones" style="text-align: right; width: 100%; margin-bottom: -15px;
            margin-left: -10px;">
            <a title="Exportar a Excel">
                <asp:ImageButton ID="ibExcel" runat="server" Height="20px" ImageUrl="~/Images/Excel-icon.png"
                    Width="20px" Visible="True" OnClick="ibExcel_Click" /></a>
        </div>
        <div class="row">
            <div class="panel panel-primary filterable pre-scrollable">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        Informe Despacho Fecha Distribución</h3>
                </div>
                <asp:Label ID="lblTabla" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <script type="text/javascript">
            $('#accordion ul:eq(8)').show();
        </script>
    </div>
</asp:Content>
