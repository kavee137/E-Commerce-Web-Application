//package lk.ijse.ecommercewebapplication.controller;
//
//import jakarta.servlet.ServletContext;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.MultipartConfig;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import lk.ijse.ecommercewebapplication.entity.Product;
//import org.apache.commons.dbcp2.BasicDataSource;
//
//import java.math.BigDecimal;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//@MultipartConfig
//@WebServlet(name = "GetProductDetailsServlet", value = "/getProductDetailsServlet")
//public class GetProductDetailsServlet extends HttpServlet {
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String productId = req.getParameter("productID");
//        resp.setContentType("application/json");
//
//
//        System.out.println("GetProductDetailsServlet");
//
//        List<Product> products = new ArrayList<>();
//
//        // Fetch the DataSource from the ServletContext
//        ServletContext servletContext = req.getServletContext();
//        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");
//
//        try (Connection connection = ds.getConnection()) {
//            // Execute the query to fetch products
//            ResultSet resultSet = connection.prepareStatement("SELECT p.*, pi.imageFileName FROM product p LEFT JOIN productImage pi ON p.productID = pi.productID WHERE p.productID = ?").executeQuery();
//
//            while (resultSet.next()) {
//                int productID = resultSet.getInt("productID");
//                String productName = resultSet.getString("productName");
//                double unitPrice = resultSet.getDouble("unitPrice");
//                String productDescription = resultSet.getString("productDescription");
//                String tagLine = resultSet.getString("tagLine");
//                int categoryID = resultSet.getInt("categoryID");
//                int qtyOnHand = resultSet.getInt("qtyOnHand");
//
//                String image = resultSet.getString("imageFileName");
//
//                System.out.println(productID + " " + productName + " " + unitPrice + " " + productDescription + " " + tagLine + " " + categoryID + " " + qtyOnHand + " " + image);
//
//                // Add each product to the list
//                products.add(new Product(productID, productName, BigDecimal.valueOf(unitPrice), productDescription, tagLine, categoryID, qtyOnHand, image));
//            }
//
//
//
//            // Close resources automatically with try-with-resources
//        } catch (SQLException e) {
//            throw new RuntimeException("Error fetching products from the database", e);
//        }
//
//
//
//
//
//
//
//
////        try (Connection connection = ((BasicDataSource) getServletContext().getAttribute("dataSource")).getConnection()) {
////            PreparedStatement stmt = connection.prepareStatement(
////                    "SELECT p.*, pi.imageFileName FROM product p LEFT JOIN productImage pi ON p.productID = pi.productID WHERE p.productID = ?");
////            stmt.setInt(1, Integer.parseInt(productId));
////            ResultSet rs = stmt.executeQuery();
////
////            if (rs.next()) {
////                JsonObject json = new JsonObject();
////                json.addProperty("productID", rs.getInt("productID"));
////                json.addProperty("productName", rs.getString("productName"));
////                json.addProperty("unitPrice", rs.getDouble("unitPrice"));
////                json.addProperty("productDescription", rs.getString("productDescription"));
////                json.addProperty("tagLine", rs.getString("tagLine"));
////                json.addProperty("categoryID", rs.getInt("categoryID"));
////                json.addProperty("qtyOnHand", rs.getInt("qtyOnHand"));
////                json.addProperty("imageFileName", rs.getString("imageFileName"));
////
////                resp.getWriter().write(json.toString());
////            } else {
////                resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
////            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred");
//        }
//    }
//}
