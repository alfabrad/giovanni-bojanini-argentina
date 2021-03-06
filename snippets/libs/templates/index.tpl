
<!doctype html>
<html class="no-js" lang="es">
    <head>
        <title>Recuperá mas que el pelo</title>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="Giovanni Bojanini lleva 20 años desarrollando tecnologías y tratamientos contra la alopecia. Hemos devuelto el cabello y la confianza a más de 100,000 personas en 8 países.">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

        <link rel="canonical" href="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/index.html" />

        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/../favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/../favicon.png" type="image/png" />

        <link rel="stylesheet" href="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/css/main.css">
        <script src="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/js/vendor/modernizr-2.8.3.min.js"></script>
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
          ga('create', 'UA-61243729-1', 'auto');
          ga('send', 'pageview');
        </script>
    </head>
    <body class="giovanni-bojanini general" ng-app="BojaApp">
        <header class="wrapper">
            <div class="central">
                <h2><a href="https://www.bojanini.com.ar/" title="Giovanni Bojanini" class="clearfix"><img src="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/img/hair-evolution-giovanni-bojanini.png" alt="Hair evolution. Giovanni Bojanini. A head full of possibilities." width="70" height="55"></a></h2>
                <h2><a href="https://www.bojanini.com.ar/" title="Giovanni Bojanini" class="clearfix"><img src="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/img/giovanni-bojanini.png" alt="Giovanni Bojanini" width="282" height="33"></a></h2>
            </div>
        </header>
        <section class="wrapper title">
            <h1><img src="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/img/recupera-mas-que-el-pelo.png" alt="Recuperá más que el pelo"></h1>
        </section>
        <section class="wrapper content">
            <div class="central clearfix">
                <p>Giovanni Bojanini lleva 20 años desarrollando tecnologías y tratamientos contra la alopecia.</p>
                <p>Hemos devuelto el cabello y la confianza a más de 100,000 personas en 8 países</p>
                <div class="features clearfix">
                    <div class="left">
                        <h3>Beneficios:</h3>
                        <p>Conocé los beneficios que ofrecemos</p>
                        <ul class="clearfix">
                            <li>
                                <p>Tratamientos no hormonales</p>
                            </li>
                            <li>
                                <p>Altamente efectivo</p>
                            </li>
                            <li>
                                <p>Tratamiento médico personalizado</p>
                            </li>
                            <li>
                                <p>Sin tratamiento quirúrgico</p>
                            </li>
                            <li>
                                <p>Más del 95% de efectividad</p>
                            </li>
                        </ul>
                    </div>
                    <div class="right">
                        <h4><img src="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/img/comenza-el-tratamiento.png" alt="Comenzá el tratamiento"></h4>
                    </div>
                </div>
            </div>
        </section>
        <div class="wrapper contact" ng-controller="ContactController as contact">
            <form name="contactForm" action="gateway.php?action=contact" method="POST" class="central contact-form" novalidate ng-submit="contactForm.$valid && form.submitForm( $event )">
                <fieldset class="clearfix">
                    <input type="hidden" name="form_id" ng-model="contact.form_id" value="generico">
                    <div class="input medium clearfix">
                        <label for="first_name">
                            <input type="text" required="true" name="first_name" placeholder="Nombre" ng-model="contact.first_name" required>
                        </label>
                    </div>
                    <div class="input medium clearfix">
                        <label for="last_name">
                            <input type="text" required="true" name="last_name" placeholder="Apellido" ng-model="contact.last_name" required>
                        </label>
                    </div>
                    <div class="input complete clearfix">
                        <label for="email">
                            <input type="email" required="true" name="email" placeholder="Correo Electrónico" ng-model="contact.email" required>
                        </label>
                    </div>
                    <div class="input complete clearfix">
                        <label for="city">
                            <input type="text" required="true" name="city" placeholder="Ciudad" ng-model="contact.city" required>
                        </label>
                    </div>
                </fieldset>
                <fieldset class="clearfix">
                    <div class="input medium clearfix">
                        <label for="phone">
                            <input type="tel" required="true" name="phone" placeholder="Teléfono" ng-model="contact.phone" required>
                        </label>
                    </div>
                    <div class="input medium clearfix">
                        <label for="message">
                            <textarea name="message" id="" cols="30" rows="10" placeholder="Mensaje" ng-model="contact.message" required></textarea>
                        </label>
                    </div>
                </fieldset>
                <fieldset class="clearfix">
                    <div class="input medium clearfix">
                        <input type="submit" name="submit-button" class="quiero-mi-pelo" ng-disabled="!contactForm.$valid">
                    </div>
                </fieldset>
            </form>
            <p class="response central">[+response+]</p>
        </div>
        <footer class="wrapper">
            <div class="central clearfix">
                <p><a href="https://www.giovannibojanini.ar/" target="_blank" title="www.giovannibojanini.ar"><img src="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/img/giovanni-bojanini-argentina.png" alt="www.giovannibojanini.ar/" width="280" height="23"></a></p>
                <ul class="clearfix">
                    <li class="facebook clearfix"><a href="" target="_blank" class="clearfix">Facebook</a></li>
                    <li class="twitter clearfix"><a href="" target="_blank" class="clearfix">Twitter</a></li>
                    <li class="linkedin clearfix"><a href="" target="_blank" class="clearfix">LinkedIn</a></li>
                    <li class="google-plus clearfix"><a href="" target="_blank" class="clearfix">Google Plus</a></li>
                    <li class="pinterest clearfix"><a href="" target="_blank" class="clearfix">Pinterest</a></li>
                    <li class="you-tube clearfix"><a href="" target="_blank" class="clearfix">You Tube</a></li>
                </ul>
            </div>
        </footer>
        <script src="https://www.bojanini.com.ar/recupera-mas-que-el-pelo/js/main.min.js"></script>
    </body>
</html>