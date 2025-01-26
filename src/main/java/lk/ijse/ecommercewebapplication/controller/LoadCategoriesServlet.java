package lk.ijse.ecommercewebapplication.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommercewebapplication.controller.dto.CategoryDTO;
import org.apache.commons.dbcp2.BasicDataSource;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/loadCategories")
public class LoadCategoriesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("calloadCatergory");

        ArrayList<CategoryDTO> categories = new ArrayList<>();

        ServletContext servletContext = req.getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");
        try (Connection conn = ds.getConnection()) {
            String sql = "SELECT categoryId, category FROM category";
            try (PreparedStatement ps = conn.prepareStatement(sql);
                 ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    categories.add(new CategoryDTO(rs.getInt("categoryId"), rs.getString("category")));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.setAttribute("categories", categories);
        req.getRequestDispatcher("admin-panel.jsp").forward(req, resp);
    }
}



