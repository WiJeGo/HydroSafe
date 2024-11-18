using System;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Threading.Tasks;

namespace HydroSafe
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["InitialAnalysis"] = null;
            }
        }

        protected void AnalyzeButton_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    string fileName = Path.GetFileName(FileUploadControl.FileName);
                    string filePath = Path.Combine(Server.MapPath("~/Uploads"), fileName);
                    FileUploadControl.SaveAs(filePath);

                    // Mostrar previsualización
                    if (FileUploadControl.PostedFile.ContentType.StartsWith("image/"))
                    {
                        ImagePreview.ImageUrl = "~/Uploads/" + fileName;
                        ImagePreview.Visible = true;
                        VideoPreview.Text = string.Empty;
                    }
                    else if (FileUploadControl.PostedFile.ContentType.StartsWith("video/"))
                    {
                        VideoPreview.Text = $"<video controls class='img-fluid mb-3'><source src='Uploads/{fileName}' type='{FileUploadControl.PostedFile.ContentType}'></video>";
                        ImagePreview.Visible = false;
                    }

                    // Análisis inicial
                    var initialAnalysis = PerformInitialAnalysis();
                    Session["InitialAnalysis"] = initialAnalysis;
                    ResponseContainer.Text = GenerateInitialResponse(initialAnalysis);

                    if (initialAnalysis.RequiresVerification)
                    {
                        GetFinalResultsButton.Visible = true;
                    }
                    else
                    {
                        StatusLabel.Text = "Análisis completado. No se requiere verificación adicional.";
                    }
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Error: " + ex.Message;
                }
            }
            else
            {
                StatusLabel.Text = "Por favor, seleccione un archivo para cargar.";
            }
        }

        protected async void GetFinalResultsButton_Click(object sender, EventArgs e)
        {
            GetFinalResultsButton.Enabled = false;
            StatusLabel.Text = "Obteniendo resultados finales...";

            var initialAnalysis = Session["InitialAnalysis"] as WaterAnalysisResult;
            if (initialAnalysis != null && initialAnalysis.RequiresVerification)
            {
                await Task.Delay(5000); // Simula el tiempo que toma la verificación
                var finalAnalysis = PerformFinalAnalysis(initialAnalysis);
                ResponseContainer.Text += GenerateFinalResponse(finalAnalysis);
                StatusLabel.Text = "Análisis final completado.";
            }
            else
            {
                StatusLabel.Text = "No se requiere verificación adicional o no se ha realizado un análisis inicial.";
            }

            GetFinalResultsButton.Visible = false;
        }

        private WaterAnalysisResult PerformInitialAnalysis()
        {
            Random random = new Random();
            return new WaterAnalysisResult
            {
                ContaminationLevel = random.Next(0, 101),
                pH = random.Next(0, 14) + random.NextDouble(),
                Turbidity = random.Next(0, 1000) / 10.0,
                DissolvedOxygen = random.Next(0, 150) / 10.0,
                RequiresVerification = random.Next(0, 2) == 1 // 50% de probabilidad de requerir verificación
            };
        }

        private WaterAnalysisResult PerformFinalAnalysis(WaterAnalysisResult initialResult)
        {
            Random random = new Random();
            return new WaterAnalysisResult
            {
                ContaminationLevel = Math.Max(0, Math.Min(100, initialResult.ContaminationLevel + random.Next(-10, 11))),
                pH = Math.Max(0, Math.Min(14, initialResult.pH + (random.NextDouble() - 0.5))),
                Turbidity = Math.Max(0, initialResult.Turbidity + (random.NextDouble() - 0.5) * 10),
                DissolvedOxygen = Math.Max(0, initialResult.DissolvedOxygen + (random.NextDouble() - 0.5) * 2),
                RequiresVerification = false
            };
        }

        private string GenerateInitialResponse(WaterAnalysisResult result)
        {
            string alertClass = "alert-info";
            string heading = "Análisis inicial del agua";
            string message = $"Se ha realizado un análisis inicial del agua con los siguientes resultados:<br>" +
                             $"Nivel de contaminación: {result.ContaminationLevel}%<br>" +
                             $"pH: {result.pH:F2}<br>" +
                             $"Turbidez: {result.Turbidity:F1} NTU<br>" +
                             $"Oxígeno disuelto: {result.DissolvedOxygen:F1} mg/L<br><br>";

            if (result.RequiresVerification)
            {
                message += "Debido a los resultados obtenidos, se requiere una verificación adicional por parte de la empresa XINEKA. " +
                           "Un equipo será enviado para realizar un análisis más detallado. Por favor, espere y luego presione el botón 'Obtener Resultados Finales'.";
            }
            else
            {
                message += "Los resultados iniciales no indican la necesidad de una verificación adicional. " +
                           "Sin embargo, continuaremos monitoreando la zona regularmente.";
            }

            return $"<div class='alert {alertClass}' role='alert'>" +
                   $"<h4 class='alert-heading'>{heading}</h4>" +
                   $"<p>{message}</p>" +
                   "</div>";
        }

        private string GenerateFinalResponse(WaterAnalysisResult result)
        {
            string alertClass;
            string heading;
            string message;

            if (result.ContaminationLevel < 20)
            {
                alertClass = "alert-success";
                heading = "Resultados finales: No se ha detectado contaminación significativa";
                message = $"Tras la verificación de la empresa XINEKA, se confirma que la calidad del agua es excelente. " +
                          $"Los niveles de contaminación están por debajo del 20% ({result.ContaminationLevel}%). " +
                          $"El pH del agua es {result.pH:F2}, la turbidez es {result.Turbidity:F1} NTU y el oxígeno disuelto es {result.DissolvedOxygen:F1} mg/L. " +
                          "Se mantendrá el monitoreo regular para asegurar la calidad del agua.";
            }
            else if (result.ContaminationLevel < 50)
            {
                alertClass = "alert-warning";
                heading = "Resultados finales: Se ha detectado contaminación leve";
                message = $"La verificación de la empresa XINEKA ha confirmado una contaminación leve en el agua. " +
                          $"El nivel de contaminación es del {result.ContaminationLevel}%. " +
                          $"El pH del agua es {result.pH:F2}, la turbidez es {result.Turbidity:F1} NTU y el oxígeno disuelto es {result.DissolvedOxygen:F1} mg/L. " +
                          "Se implementarán medidas preventivas y se aumentará la frecuencia de monitoreo en la zona.";
            }
            else
            {
                alertClass = "alert-danger";
                heading = "Resultados finales: ¡Se ha detectado contaminación significativa!";
                message = $"La verificación de la empresa XINEKA ha confirmado una contaminación grave en el agua. " +
                          $"El nivel de contaminación es del {result.ContaminationLevel}%. " +
                          $"El pH del agua es {result.pH:F2}, la turbidez es {result.Turbidity:F1} NTU y el oxígeno disuelto es {result.DissolvedOxygen:F1} mg/L. " +
                          "Se están implementando medidas de emergencia para tratar la contaminación. " +
                          "Se recomienda evitar el uso de esta fuente de agua hasta nuevo aviso.";
            }

            return $"<div class='alert {alertClass}' role='alert'>" +
                   $"<h4 class='alert-heading'>{heading}</h4>" +
                   $"<p>{message}</p>" +
                   "</div>";
        }
    }

    public class WaterAnalysisResult
    {
        public int ContaminationLevel { get; set; }
        public double pH { get; set; }
        public double Turbidity { get; set; }
        public double DissolvedOxygen { get; set; }
        public bool RequiresVerification { get; set; }
    }
}