<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HydroSafe.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<head>
    <title>Contacts</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="Content/fonts.css">
    <link rel="stylesheet" href="Content/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <style>
        .ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;}
        html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}

        /* Estilos personalizados */
        .contact-form {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .contact-form h3 {
            color: #2e7d32;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #2e7d32;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .form-group textarea {
            height: 100px;
        }

        .submit-btn {
            background-color: #2e7d32;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #1b5e20;
        }

        .map-container {
            position: relative;
            padding-bottom: 56.25%;
            height: 0;
            overflow: hidden;
        }

        .map-container iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .social-icons {
            display: flex;
            justify-content: space-around;
            margin-bottom: 30px;
        }

        .social-icon {
            text-align: center;
        }

        .social-icon img {
            width: 60px;
            height: 60px;
            transition: transform 0.3s ease;
        }

        .social-icon img:hover {
            transform: scale(1.1);
        }

        .social-icon h4 {
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <section class="parallax-container" data-parallax-img="images/bg-bunner-2.jpg">
        <div class="parallax-content breadcrumbs-custom context-dark">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-9">
                        <h2 class="breadcrumbs-custom-title">Contacto</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section section-lg text-center bg-default">
        <div class="container">
            <div class="social-icons">
                <div class="social-icon">
                    <a href="https://www.instagram.com" target="_blank">
                        <img src="images/instagram.png" alt="Instagram">
                    </a>
                    <h4>Instagram</h4>
                </div>
                <div class="social-icon">
                    <a href="https://www.facebook.com" target="_blank">
                        <img src="images/facebook.png" alt="Facebook">
                    </a>
                    <h4>Facebook</h4>
                </div>
                <div class="social-icon">
                    <a href="https://www.whatsapp.com" target="_blank">
                        <img src="images/whatsapp.png" alt="WhatsApp">
                    </a>
                    <h4>WhatsApp</h4>
                </div>
            </div>
        </div>
    </section>

    <section class="section section-lg text-center bg-default">
        <div class="container">
            <h3>Nuestra Ubicación</h3>
            <br><br>
            <div class="map-container">
                <iframe 
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.394348370915!2d-122.0842497!3d37.4219999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb24a6f21f3d7%3A0x102bd72e1f5b3a5a!2sGoogleplex!5e0!3m2!1sen!2sus!4v1614961871234!5m2!1sen!2sus" 
                    style="border:0;" 
                    allowfullscreen="" 
                    loading="lazy">
                </iframe>
            </div>
        </div>
    </section>

    <section class="section section-lg bg-gray-1 text-center">
        <div class="container">
            <div class="contact-form">
                <h3>Contáctanos</h3>
                <form id="contact-form" method="post">
                    <div class="form-group">
                        <label for="contact-name">Nombre</label>
                        <input type="text" id="contact-name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="contact-email">E-mail</label>
                        <input type="email" id="contact-email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="contact-phone">Teléfono</label>
                        <input type="tel" id="contact-phone" name="phone">
                    </div>
                    <div class="form-group">
                        <label for="contact-message">Mensaje</label>
                        <textarea id="contact-message" name="message" required></textarea>
                    </div>
                    <button type="submit" class="submit-btn">Enviar</button>
                </form>
            </div>
        </div>
    </section>

    <script src="Scripts/core.min.js"></script>
    <script src="Scripts/script.js"></script>
</body>
</html>
</asp:Content>