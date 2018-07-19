package controller.role;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ACL_Controller;
import controller.PMF;
import model.entity.Role;

@SuppressWarnings("serial")
public class RoleControllerIndex extends HttpServlet {
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if (ACL_Controller.isAvalible(req, resp)) {
			
			PersistenceManager pm = PMF.get().getPersistenceManager();
			
			String query4 = "SELECT FROM " + Role.class.getName();
			List<Role> roles = (List<Role>) pm.newQuery(query4).execute();
			
			pm.close();
			
			req.setAttribute("roles", roles);
			req.getRequestDispatcher("/WEB-INF/Views/Role/index.jsp").forward(req, resp);
		}
	}
}