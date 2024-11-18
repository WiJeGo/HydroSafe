<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HydroSafe.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<head>
    <title>Acerca de</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="Content/bootstrap.css">
    <link rel="stylesheet" href="Content/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <style>
        .ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;}
        html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}

        /* Estilos mejorados para testimonios */
        .testimonial {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-bottom: 30px;
            transition: all 0.3s ease;
        }

        .testimonial:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.2);
        }

        .testimonial-img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
            border: 5px solid #f8f9fa;
        }

        .testimonial p {
            font-style: italic;
            color: #6c757d;
            line-height: 1.6;
        }

        .testimonial strong {
            color: #343a40;
            font-size: 18px;
            display: block;
            margin-top: 15px;
        }

        /* Estilos mejorados para preguntas frecuentes */
        .faq-container {
            max-width: 800px;
            margin: 0 auto;
        }

        .faq-item {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            overflow: hidden;
        }

        .faq-question {
            padding: 20px;
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-weight: bold;
            color: #343a40;
        }

        .faq-question:after {
            content: '\002B';
            font-size: 20px;
            transition: transform 0.3s ease;
        }

        .faq-question.active:after {
            transform: rotate(45deg);
        }

        .faq-answer {
            padding: 0 20px;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease, padding 0.3s ease;
        }

        .faq-answer.show {
            padding: 20px;
            max-height: 500px;
        }
    </style>
</head>
            <section class="section section-lg section-main-bunner section-main-bunner-filter">
        <div class="main-bunner-img" style="background-image: url(&quot;images/bg-bunner-2.jpg&quot;); background-size: cover;"></div>
        <div class="main-bunner-inner">
          <div class="container">
            <div class="row row-50 justify-content-lg-center align-items-lg-center">
              <div class="col-lg-12">
                <div class="bunner-content-modern text-center">
                  <h1 class="main-bunner-title">HYDROSAFE</h1>
                  <p>HydroSafe es un sistema de monitoreo en tiempo real que garantiza la calidad del agua en operaciones mineras. Con tecnología avanzada y sensores multiparamétricos, ofrecemos datos precisos para proteger el medio ambiente.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
<section class="section section-xl">
  <div class="container">
    <div class="row row-50 justify-content-lg-between align-items-lg-center">
      <div class="col-lg-6">
        <div class="box-img-animate">
          <div class="box-img-animate-item" data-parallax-scroll="{&quot;y&quot;: 0, &quot;x&quot;: 140,  &quot;smoothness&quot;: 50 }"><img src="images/1.jpg" alt="" width="217" height="153"></div>
          <div class="box-img-animate-item" data-parallax-scroll="{&quot;y&quot;: 150, &quot;x&quot;: 0,  &quot;smoothness&quot;: 50 }"><img src="images/2.jpg" alt="" width="271" height="153"></div>
          <div class="box-img-animate-item" data-parallax-scroll="{&quot;y&quot;:70, &quot;x&quot;: -250,  &quot;smoothness&quot;: 50 }"><img src="images/3.jpg" alt="" width="271" height="191"></div>
          <div class="box-img-animate-item" data-parallax-scroll="{&quot;y&quot;:20, &quot;x&quot;: 20,  &quot;smoothness&quot;: 50 }"><img src="images/4.jpg" alt="" width="339" height="236"></div>
          <div class="box-img-animate-item" data-parallax-scroll="{&quot;y&quot;:60, &quot;x&quot;: 70,  &quot;smoothness&quot;: 50 }"><img src="images/5.jpg" alt="" width="179" height="126"></div>
          <div class="box-img-animate-item" data-parallax-scroll="{&quot;y&quot;:0, &quot;x&quot;: 140,  &quot;smoothness&quot;: 50 }"><img src="images/6.jpg" alt="" width="217" height="153"></div>
        </div>
      </div>
      <div class="col-lg-6 col-xl-5">
        <div class="innset-xl-left-70">
          <h3>Nuestra Misión</h3>
          <p class="text-opacity-80">En HydroSafe, nos dedicamos a proteger el agua y el medio ambiente en áreas mineras. Conoce nuestros objetivos a continuación.</p>
          <div class="row row-50">
            <div class="col-md-6 col-lg-12">
              <div class="box-icon-modern">
                <div class="box-icon-inner decorate-triangle"><span class="icon-xl linearicons-water icon-primary"></span></div>
                <div class="box-icon-caption">
                  <h4><a href="#">Monitoreo de Calidad del Agua</a></h4>
                  <p>Implementamos un sistema en tiempo real para detectar contaminantes y preservar el recurso hídrico.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-12">
              <div class="box-icon-modern">
                <div class="box-icon-inner decorate-circle"><span class="icon-xl linearicons-eco icon-primary"></span></div>
                <div class="box-icon-caption">
                  <h4><a href="#">Sostenibilidad Ambiental</a></h4>
                  <p>Promovemos prácticas sostenibles que minimizan el impacto de las actividades mineras en el entorno.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-12">
              <div class="box-icon-modern">
                <div class="box-icon-inner decorate-rectangle"><span class="icon-xl linearicons-community icon-primary"></span></div>
                <div class="box-icon-caption">
                  <h4><a href="#">Compromiso con las Comunidades</a></h4>
                  <p>Fomentamos la transparencia y la confianza con las comunidades locales a través de la gestión del agua.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

      <section class="section section-lg bg-gray-1">
  <div class="container">
    <div class="row justify-content-center text-center">
      <div class="col-md-9 col-lg-7 wow-outer">
        <div class="wow slideInDown">
          <h3 class="animate__animated animate__fadeInDown">Características</h3>
          <p class="animate__animated animate__fadeIn animate__delay-1s">Descubre las innovadoras características de HydroSafe que revolucionan el monitoreo de agua en operaciones mineras.</p>
        </div>
      </div>
    </div>
    <div class="row row-50 justify-content-center">
      <div class="col-md-6 col-lg-4 wow-outer">
        <div class="wow fadeInUp">
          <article class="feature-box animate__animated animate__fadeInUp">
            <div class="feature-box-img">
              <img src="images/sensor.jpg" alt="Dispositivos LoRa" width="372" height="396"/>
              <div class="feature-box-overlay">
                <p>Tecnología de vanguardia para una comunicación eficiente y de largo alcance.</p>
              </div>
            </div>
            <h4 class="font-weight-medium">Dispositivos LoRa</h4>
          </article>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 wow-outer">
        <div class="wow fadeInUp" data-wow-delay=".1s">
          <article class="feature-box animate__animated animate__fadeInUp animate__delay-1s">
            <div class="feature-box-img">
              <img src="images/modulos.jpg" alt="Módulos LoRa" width="372" height="396"/>
              <div class="feature-box-overlay">
                <p>Módulos especializados para una integración perfecta y un rendimiento óptimo.</p>
              </div>
            </div>
            <h4 class="font-weight-medium">Módulos LoRa</h4>
          </article>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 wow-outer">
        <div class="wow fadeInUp" data-wow-delay=".2s">
          <article class="feature-box animate__animated animate__fadeInUp animate__delay-2s">
            <div class="feature-box-img">
              <img src="images/aaaaaa.jpg" alt="Conexión Sin Señal" width="372" height="396"/>
              <div class="feature-box-overlay">
                <p>Funcionamiento confiable incluso en áreas remotas sin conectividad convencional.</p>
              </div>
            </div>
            <h4 class="font-weight-medium">Conexión Sin Señal</h4>
          </article>
        </div>
      </div>
    </div>
  </div>
</section>

<style>
  .feature-box {
    background-color: #ffffff;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
    margin-bottom: 30px;
  }

  .feature-box:hover {
    transform: translateY(-10px);
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.2);
  }

  .feature-box-img {
    position: relative;
    overflow: hidden;
  }

  .feature-box-img img {
    width: 100%;
    height: auto;
    transition: transform 0.3s ease;
  }

  .feature-box:hover .feature-box-img img {
    transform: scale(1.1);
  }

  .feature-box-overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.7);
    display: flex;
    align-items: center;
    justify-content: center;
    opacity: 0;
    transition: opacity 0.3s ease;
  }

  .feature-box:hover .feature-box-overlay {
    opacity: 1;
  }

  .feature-box-overlay p {
    color: #ffffff;
    padding: 20px;
    text-align: center;
    font-size: 14px;
  }

  .feature-box h4 {
    padding: 20px;
    margin: 0;
    text-align: center;
    color: #333;
    font-size: 18px;
    font-weight: 600;
  }
</style>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
<script>
    $(document).ready(function () {
        new WOW().init();

        function animateOnScroll() {
            $('.feature-box').each(function () {
                var elementPosition = $(this).offset().top;
                var topOfWindow = $(window).scrollTop();

                if (elementPosition < topOfWindow + $(window).height() - 100) {
                    $(this).addClass('animate__animated animate__fadeInUp');
                }
            });
        }

        // Ejecutar la animación al cargar la página y al hacer scroll
        animateOnScroll();
        $(window).scroll(animateOnScroll);
    });
</script>

<section class="section section-lg text-center bg-light">
        <div class="container">
            <h3 class="animate__animated animate__fadeInDown">Testimonios</h3>
            <div class="row row-30 justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="testimonial animate__animated animate__fadeInLeft">
                        <img src="images/cliente1.jpg" alt="Cliente 1" class="testimonial-img">
                        <p>"Gracias a HydroSafe, podemos monitorear la calidad del agua en tiempo real, lo que ha mejorado nuestra relación con las comunidades locales."</p>
                        <strong>- Juan Pérez, Gerente Ambiental, Mina Azul</strong>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="testimonial animate__animated animate__fadeInUp">
                        <img src="images/cliente2.png" alt="Cliente 2" class="testimonial-img">
                        <p>"La implementación de HydroSafe ha sido clave para cumplir con las regulaciones y reducir nuestro impacto ambiental."</p>
                        <strong>- María López, Directora de Sostenibilidad, Compañía Minera Santa Rosa</strong>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="testimonial animate__animated animate__fadeInRight">
                        <img src="images/cliente3.png" alt="Cliente 3" class="testimonial-img">
                        <p>"El sistema de HydroSafe nos permite reaccionar rápidamente ante cualquier anomalía en la calidad del agua, garantizando la seguridad de nuestras operaciones."</p>
                        <strong>- Carlos Fernández, Jefe de Operaciones, Mina San Pedro</strong>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section section-lg bg-default text-center">
        <div class="container">
            <h3 class="animate__animated animate__fadeInDown">Preguntas Frecuentes</h3>
            <div class="faq-container">
                <div class="faq-item animate__animated animate__fadeInUp">
                    <div class="faq-question">¿Qué es HydroSafe?</div>
                    <div class="faq-answer">Es un sistema de monitoreo en tiempo real que mide la calidad del agua en áreas mineras.</div>
                </div>
                <div class="faq-item animate__animated animate__fadeInUp">
                    <div class="faq-question">¿Cómo funciona HydroSafe?</div>
                    <div class="faq-answer">Usa sondas multiparamétricas y tecnología LoRa para recolectar datos y enviarlos a una base central.</div>
                </div>
                <div class="faq-item animate__animated animate__fadeInUp">
                    <div class="faq-question">¿Qué tecnología usa HydroSafe?</div>
                    <div class="faq-answer">Emplea sensores LoRa, Microsoft SQL Server, e IIS para gestionar los datos y visualización.</div>
                </div>
                <div class="faq-item animate__animated animate__fadeInUp">
                    <div class="faq-question">¿Qué parámetros mide?</div>
                    <div class="faq-answer">pH, Conductividad Eléctrica, Temperatura, Sólidos Disueltos Totales (SDT) y Cloruros.</div>
                </div>
                <div class="faq-item animate__animated animate__fadeInUp">
                    <div class="faq-question">¿Por qué es importante monitorear el agua en zonas mineras?</div>
                    <div class="faq-answer">Para detectar contaminación y proteger el medio ambiente y las comunidades locales.</div>
                </div>
                <div class="faq-item animate__animated animate__fadeInUp">
                    <div class="faq-question">¿Qué ventajas tiene HydroSafe?</div>
                    <div class="faq-answer">Monitoreo en tiempo real, bajo consumo energético y cumplimiento de normativas peruanas.</div>
                </div>
                <div class="faq-item animate__animated animate__fadeInUp">
                    <div class="faq-question">¿Cumple con las regulaciones peruanas?</div>
                    <div class="faq-answer">Sí, está alineado con el D.S. N° 003-2010-MINAM.</div>
                </div>
                <div class="faq-item animate__animated animate__fadeInUp">
                    <div class="faq-question">¿Por qué usar LoRa en zonas mineras?</div>
                    <div class="faq-answer">Ofrece transmisión a larga distancia y bajo consumo energético.</div>
                </div>
                <div class="faq-item animate__animated animate__fadeInUp">
                    <div class="faq-question">¿Cómo protege los datos?</div>
                    <div class="faq-answer">Usa autenticación OAuth 2.0 y encriptación SSL/TLS.</div>
                </div>
                <div class="faq-item animate__animated animate__fadeInUp">
                    <div class="faq-question">¿Qué ventajas ofrece a las mineras?</div>
                    <div class="faq-answer">Cumplimiento normativo, alertas tempranas y mejora de relaciones con comunidades.</div>
                </div>
           </div>
        </div>
</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // Animación para las secciones de testimonios y preguntas frecuentes
            function animateOnScroll() {
                $('.testimonial, .faq-item').each(function () {
                    var elementPosition = $(this).offset().top;
                    var topOfWindow = $(window).scrollTop();

                    if (elementPosition < topOfWindow + $(window).height() - 100) {
                        $(this).addClass('animate__animated animate__fadeInUp');
                    }
                });
            }

            // Ejecutar la animación al cargar la página y al hacer scroll
            animateOnScroll();
            $(window).scroll(animateOnScroll);

            // Funcionalidad para las preguntas frecuentes
            $('.faq-question').click(function () {
                $(this).toggleClass('active');
                $(this).next('.faq-answer').toggleClass('show');
            });
        });
    </script>

    <script src="Scripts/core.min.js"></script>
    <script src="Scripts/script.js"></script>
</body>
</html>
</asp:Content>
