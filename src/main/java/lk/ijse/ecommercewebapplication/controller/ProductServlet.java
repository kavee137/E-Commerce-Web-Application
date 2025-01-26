package lk.ijse.ecommercewebapplication.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import lk.ijse.ecommercewebapplication.entity.Product;
import org.apache.commons.dbcp2.BasicDataSource;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.file.Paths;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@MultipartConfig
@WebServlet(name = "manageProduct", value = "/manageProduct")
public class ProductServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String selectedSection = req.getParameter("section");
        if (selectedSection == null) {
            selectedSection = "dashboardManagement"; // Default section
        }

        req.setAttribute("selectedSection", selectedSection);





        System.out.println("Admin Panel DOGET method run");

        List<Product> products = new ArrayList<>();

        // Fetch the DataSource from the ServletContext
        ServletContext servletContext = req.getServletContext();
        BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");

        try (Connection connection = ds.getConnection()) {
            // Execute the query to fetch products
            ResultSet resultSet = connection.prepareStatement("SELECT * FROM product").executeQuery();

            while (resultSet.next()) {
                int productID = resultSet.getInt("productID");
                String productName = resultSet.getString("productName");
                double unitPrice = resultSet.getDouble("unitPrice");
                String productDescription = resultSet.getString("productDescription");
                String tagLine = resultSet.getString("tagLine");
                int categoryID = resultSet.getInt("categoryID");
                int qtyOnHand = resultSet.getInt("qtyOnHand");
                String color = resultSet.getString("color");
                String image = resultSet.getString("image");
                String capacity = resultSet.getString("capacity");

                System.out.println(productID + " " + productName + " " + unitPrice + " " + productDescription + " " + tagLine + " " + categoryID + " " + qtyOnHand + " " + color + " " + image + " " + capacity);

                // Add each product to the list
                products.add(new Product(productID, productName, BigDecimal.valueOf(unitPrice), productDescription, tagLine, categoryID, qtyOnHand, color, image, capacity));
            }



            // Close resources automatically with try-with-resources
        } catch (SQLException e) {
            throw new RuntimeException("Error fetching products from the database", e);
        }

        // Set the products list in the request scope
        req.setAttribute("products", products);

        // Forward the request to the JSP page
        req.getRequestDispatcher("loadCategories").forward(req, resp);

        System.out.println("Products fetched and forwarded to admin-panel.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the operation (button clicked)
        String operation = request.getParameter("operation");

        System.out.println("Operation : " + request.getParameter("operation"));

        String productId = request.getParameter("productId");
        String categoryID = request.getParameter("productCategory"); // Dropdown value
        String productName = request.getParameter("productName");
        String tagLine = request.getParameter("productTagLine");
        String capacities = request.getParameter("productStorageCapacity"); // Pipe-separated values
        String colors = request.getParameter("productColor"); // Pipe-separated values
        String unitPrice = request.getParameter("productUnitPrice");
        String qtyOnHand = request.getParameter("productQtyOnHand");
        String img = request.getParameter("productImage");
        String productDescription = request.getParameter("productDescription");

        System.out.println("Product ID : " + productId);
        System.out.println("categoryID : " + categoryID);
        System.out.println("Product Name : " + productName);
        System.out.println("Tag Line : " + tagLine);
        System.out.println("Capacities : " + capacities);
        System.out.println("Colors : " + colors);
        System.out.println("Unit Price : " + unitPrice);
        System.out.println("QtyOnHand : " + qtyOnHand);
        System.out.println("Image : " + img);
        System.out.println("Product Description : " + productDescription);

//         Handle the operation
        if (operation != null) {
            switch (operation) {
                case "clear":
                    // Logic for clearing the form or resetting the data
                    System.out.println("Clear operation triggered.");
                    break;

                case "delete":
                    // Logic for deleting the product
                    System.out.println("Delete operation triggered.");
                    break;

                case "update":
                    // Logic for updating the product
                    System.out.println("Update operation triggered.");
                    break;

                case "save":
                    // Logic for saving the product
                    System.out.println("Save operation triggered.");

                    saveProduct(request, response);
                    break;

                default:
                    // Handle unexpected operation value
                    System.out.println("Invalid operation");
                    break;
            }
        }

//         After processing, you can redirect or forward to another page (e.g., a list of products)
//        response.sendRedirect("admin-panel.jsp");
    }



    private void saveProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("save product method run");

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet generatedKeys = null;

        try {
            // Retrieve the connection pool from ServletContext
            ServletContext servletContext = request.getServletContext();
            BasicDataSource ds = (BasicDataSource) servletContext.getAttribute("dataSource");
            conn = ds.getConnection(); // Get a connection from the pool

            // Get product details from request
            String categoryID = request.getParameter("productCategory"); // Dropdown value
            String productName = request.getParameter("productName");
            String tagLine = request.getParameter("productTagLine");
            String capacities = request.getParameter("productStorageCapacity"); // Pipe-separated values
            String colors = request.getParameter("productColor"); // Pipe-separated values
            String unitPrice = request.getParameter("productUnitPrice");
            String qtyOnHand = request.getParameter("productQtyOnHand");
            String productDescription = request.getParameter("productDescription");

            // Validate input values
            if (productName == null || productName.trim().isEmpty()) {
                response.getWriter().write("Product name is required.");
                return;
            }

            if (unitPrice == null || unitPrice.trim().isEmpty()) {
                response.getWriter().write("Unit price is required.");
                return;
            }

            if (categoryID == null || categoryID.trim().isEmpty()) {
                response.getWriter().write("Category is required.");
                return;
            }

            if (qtyOnHand == null || qtyOnHand.trim().isEmpty()) {
                response.getWriter().write("Quantity on hand is required.");
                return;
            }

            // Handle file upload
            Part filePart = request.getPart("productImage"); // Get the uploaded file
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // Get file name

            if (fileName == null || fileName.trim().isEmpty()) {
                response.getWriter().write("Product image is required.");
                return;
            }

            // Define upload directory
            String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir(); // Create uploads directory if it doesn't exist
            }

            // Write the file to the server
            filePart.write(uploadPath + File.separator + fileName);

            // Step 1: Insert into Product table
            String sqlProduct = "INSERT INTO Product (productName, unitPrice, productDescription, tagLine, categoryID, qtyOnHand, color, image, capacity) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sqlProduct, Statement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, productName);
            pstmt.setDouble(2, Double.parseDouble(unitPrice));
            pstmt.setString(3, productDescription);
            pstmt.setString(4, tagLine);
            pstmt.setInt(5, Integer.parseInt(categoryID));
            pstmt.setInt(6, Integer.parseInt(qtyOnHand));
            pstmt.setString(7, colors);
            pstmt.setString(8, fileName);
            pstmt.setString(9, capacities);

            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                response.getWriter().write("Product saved successfully!");
                System.out.println("Product saved successfully!");
                response.sendRedirect(request.getContextPath() + "/manageProduct?section=productMange");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to save product.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        } finally {
            // Close resources
            try {
                if (generatedKeys != null) generatedKeys.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close(); // Return connection to the pool
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}















