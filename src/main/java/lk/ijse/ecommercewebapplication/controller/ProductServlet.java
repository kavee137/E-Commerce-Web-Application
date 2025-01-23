package lk.ijse.ecommercewebapplication.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.dbcp2.BasicDataSource;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(urlPatterns = "/adminPanelProductManage")
public class ProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("admin panel doget method run");

        ServletContext servletContext = req.getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

        try {
            Connection connection = ds.getConnection();

            ResultSet resultSet = connection.prepareStatement("select * from product").executeQuery();

            while (resultSet.next()) {
                int productID = resultSet.getInt("productID");
                String productName = resultSet.getString("productName");
                double unitPrice = resultSet.getDouble("unitPrice");
                String productDescription = resultSet.getString("productDescription");
                String tagLine = resultSet.getString("tagLine");
                int categoryID = resultSet.getInt("categoryID");
                int qtyOnHand = resultSet.getInt("qtyOnHand");

                System.out.println(productID + " " + productName + " " + unitPrice + " " + productDescription + " " + tagLine + " " + categoryID + " " + qtyOnHand);

            }
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        System.out.println("DBCPServlet doGet");
    }
}
