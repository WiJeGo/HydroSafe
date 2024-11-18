<%@ Page Title="HydroSafe" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HydroSafe._Default" Async="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="jumbotron text-center">
            <h1 class="display-4">HydroSafe</h1>
            <p class="lead">Monitoreo de calidad del agua para comunidades mineras</p>
        </div>

        <!-- Sección para cargar archivos multimedia -->
        <div class="card mb-4">
            <div class="card-header bg-success text-white">
                <h2 class="h4 mb-0">Cargar Imagen o Video</h2>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <asp:FileUpload ID="FileUploadControl" runat="server" CssClass="form-control-file" accept="image/*,video/*" />
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="AnalyzeButton" runat="server" Text="Analizar Archivo" OnClick="AnalyzeButton_Click" CssClass="btn btn-primary" />
                    </div>
                </div>
                <asp:Label ID="StatusLabel" runat="server" CssClass="mt-3 d-block font-weight-bold"></asp:Label>
            </div>
        </div>

        <!-- Sección de previsualización -->
        <div class="card mb-4">
            <div class="card-header bg-success text-white">
                <h2 class="h4 mb-0">Previsualización</h2>
            </div>
            <div class="card-body">
                <div id="previewContainer" class="text-center">
                    <asp:Image ID="ImagePreview" runat="server" CssClass="img-fluid mb-3" Visible="false" />
                    <asp:Literal ID="VideoPreview" runat="server"></asp:Literal>
                </div>
            </div>
        </div>

        <!-- Sección para mostrar la respuesta -->
        <div class="card mb-4">
            <div class="card-header bg-success text-white">
                <h2 class="h4 mb-0">Resultado del Análisis</h2>
            </div>
            <div class="card-body">
                <asp:Literal ID="ResponseContainer" runat="server"></asp:Literal>
                <asp:Button ID="GetFinalResultsButton" runat="server" Text="Obtener Resultados Finales" OnClick="GetFinalResultsButton_Click" CssClass="btn btn-primary mt-3" Visible="false" />
            </div>
        </div>
    </div>
</asp:Content>