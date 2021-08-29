package Controller;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.porderDao;
import Model.porder;

/**
 * Servlet implementation class addOrderController
 */
@WebServlet("/addOrderController")
public class addOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
    public addOrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(); // new session 物件
//		System.out.println("Get the object p of confirm.jsp -> " + session.getAttribute("P"));
		porder p = (porder)session.getAttribute("P");		
		new porderDao().add(p);
		response.sendRedirect("finish.jsp");
	}

}
