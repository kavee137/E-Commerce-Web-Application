<%@ page import="lk.ijse.ecommercewebapplication.entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecommercewebapplication.controller.ProductServlet" %>
<%@ page import="lk.ijse.ecommercewebapplication.controller.dto.CategoryDTO" %><%--
  Created by IntelliJ IDEA.
  User: rukshan
  Date: 2025-01-13
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    <meta http-equiv="refresh" content="0; URL=/rukzmobile/manageProduct">--%>

    <title>Admin Panel</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Include Quill CSS -->
    <link href="https://cdn.quilljs.com/1.3.7/quill.snow.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .sidebar {
            background-color: #343a40;
            color: white;
            height: 100vh;
            position: fixed;
            padding: 15px;
            width: 250px;
            /*display: none; !* Hidden by default for smaller screens *!*/
            z-index: 1050;
        }
        .sidebar a {
            color: #adb5bd;
            text-decoration: none;
            display: block;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
        }
        .sidebar a:hover {
            background-color: #495057;
            color: white;
        }
        .content {
            margin-left: 260px;
            padding: 20px;
        }


        .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .modal-content {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            width: 400px;
            position: relative;
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
            font-size: 18px;
            color: #333;
        }

        @media (max-width: 991.98px) {
            .sidebar {
                display: block; /* Display for toggling */
                transform: translateX(-260px); /* Hidden off-screen */
                transition: transform 0.3s ease;
            }
            .sidebar.show {
                transform: translateX(0); /* Visible on-screen */
            }
            .content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>
<div class="container-fluid p-0">
    <!-- Navbar for Mobile and Tablet -->
    <nav class="navbar navbar-dark bg-dark d-lg-none">
        <div class="container-fluid">
            <button class="navbar-toggler" id="sidebarToggle" type="button">
                <span class="navbar-toggler-icon"></span>
            </button>
            <span class="navbar-brand mb-0 h1">Admin Panel</span>
        </div>
    </nav>

    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <h4 class="text-center">Admin Panel</h4>
        <hr>
        <a href="manageProduct?section=dashboardManagement" datid="dashboard_nav">Dashboard</a>
        <a href="manageProduct?section=productMange" id="product_nav">Product Management</a>
        <a href="manageProduct?section=categoryManagement" id="category_nav">Category Management</a>
        <a href="manageProduct?section=orderManagement" id="order_nav">Order Management</a>
        <a href="manageProduct?section=userManagement" id="user_nav">User Management</a>
        <a href="manageProduct?section=customerManagement" id="customer_nav">Customer Management</a>
    </div>

    <!-- Content Area -->
    <div class="content">
        <h1>Welcome, Administrator</h1>


        <%--dashboard--%>
        <div id="dashboardManagement">
            <h2>This is dashboard</h2>
            <h2>This is dashboard</h2>
            <h2>This is dashboard</h2>
            <h2>This is dashboard</h2>
        </div>

        <%--Customer--%>
        <div id="customerMange" style="display: none;">
            <h2>This is customerMange</h2>
            <h2>This is customerMange</h2>
            <h2>This is customerMange</h2>
            <h2>This is customerMange</h2>
        </div>

        <!--Item-->
        <div class="container mt-5 pt-5 border" id="productMange" style="background-color: #f8f9fa; display: none">
            <h1 class="mb-4">Product Manage</h1>

            <!-- Search Bar and Dropdown -->
            <div class="row mb-3">
                <div class="col-lg-4">
                    <input type="text" class="form-control" placeholder="Search items...">
                </div>
                <div class="col-lg-4">
                    <select class="form-select" aria-label="Select item category">
                        <option selected>Search by</option>
                        <option value="1">ID</option>
                        <option value="2">Name</option>
                    </select>
                </div>
                <div class="col-lg-4">
                    <button class="btn btn-primary">Search</button>
                </div>
            </div>


            <div class="row">
                <!-- Form Column -->
                <div class="col-lg-12">
                    <div class="card my-4">
                        <div class="card-header">Enter Product Details</div>
                        <div class="card-body col-lg-12">

                            <%--item form--%>
                            <form id="admin-product-form" method="POST" action="manageProduct" enctype="multipart/form-data">

                                <div class="col-lg-12 d-flex flex-row justify-content-around flex-wrap">

                                    <div class="col-lg-5">
                                        <%--ID--%>
<%--                                        <div class="col mb-3">--%>
<%--                                            <label class="form-label">ID</label>--%>
<%--                                            <input type="text" class="form-control-plaintext p-0" name="productId">--%>
<%--                                        </div>--%>
                                            <div class="mb-3">
                                                <label for="productCategory" class="form-label">Category</label>
                                                <select class="form-select" id="productCategory" name="productCategory" required>
                                                    <option selected>Select Category</option>

                                                    <%
                                                        List<CategoryDTO> categories = (List<CategoryDTO>) request.getAttribute("categories");
                                                        if (categories != null && !categories.isEmpty()) {
                                                            for (CategoryDTO category : categories) {
                                                                System.out.println("CategoryID: " + category.getCategoryId() + "   " + "Category: " + category.getCategory());
                                                    %>

                                                    <option value="<%= category.getCategoryId() %>"><%= category.getCategory() %></option>
                                                    <%
                                                        }
                                                    } else {
                                                    %>
                                                    <option value="">No categories available</option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        <div class="row mb-3">
                                            <div class="col">
                                                <label for="productName" class="form-label">Product Name</label>
                                                <input type="text" class="form-control" id="productName" name="productName" required>
                                            </div>
                                        </div>
                                        <%--                                <div class="row mb-3">--%>
                                        <%--                                    <div class="col">--%>
                                        <%--                                        <label for="itemName" class="form-label">Name</label>--%>
                                        <%--                                        <input id="itemName" type="text" class="form-control" name="name" placeholder="name" required>--%>
                                        <%--                                    </div>--%>
                                        <%--                                </div>--%>

                                        <div class="row mb-3">
                                            <div class="col">
                                                <label for="productTagLine" class="form-label">Tag Line</label>
                                                <input id="productTagLine" type="text" class="form-control" name="productTagLine" placeholder="item tag line" required>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col">
                                                <label for="productStorageCapacity" class="form-label">Storage Capacity</label>
                                                <input id="productStorageCapacity" type="text" class="form-control" name="productStorageCapacity" placeholder="e.g., 128 | 256 | 512" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-5">
                                        <div class="row mb-3">
                                            <div class="col">
                                                <label for="productColor" class="form-label">Color</label>
                                                <input id="productColor" type="text" class="form-control" name="productColor" placeholder="e.g., Red | Green | Black" required>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col">
                                                <label for="productUnitPrice" class="form-label">Unit Price</label>
                                                <input id="productUnitPrice" type="number" class="form-control" name="productUnitPrice" step="0.01" placeholder="unit price" required>
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <label for="productQtyOnHand" class="form-label">QTY on Hand</label>
                                            <input id="productQtyOnHand" type="number" class="form-control" name="productQtyOnHand" placeholder="qty on hand" required>
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Upload Product Image</label>
                                            <input id="imageUpload" type="file" class="form-control" name="productImage" accept="image/*" required>
                                            <div id="previewContainer" style="margin-top: 10px; position: relative;">
                                                <img id="imagePreview" src="" alt="Image Preview" style="width: 100px; max-width: 100%; display: none; border: 1px solid #ddd; border-radius: 5px;">
                                                <button id="deleteButton" style="display: none; position: absolute; top: 5px; right: 5px; background: #f44336; color: white; border: none; border-radius: 50%; width: 25px; height: 25px; cursor: pointer; text-align: center; line-height: 25px;">X</button>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <div class="col">
                                                <label for="productDescription" class="form-label">Description</label>
                                                <input id="productDescription" type="text" class="form-control" name="productDescription" placeholder="enter product description" required>
                                            </div>
                                        </div>

                                    </div>

                                </div>



<%--                                <!-- Buttons to trigger different operations -->--%>
<%--                                <div class="d-grid gap-2 d-md-block">--%>
<%--                                    <button class="btn btn-outline-secondary" type="submit" name="operation" value="clear">Clear</button>--%>
<%--                                    <button class="btn btn-outline-danger" type="submit" name="operation" value="delete">Delete</button>--%>
<%--                                    <button class="btn btn-outline-warning" type="submit" name="operation" value="update">Update</button>--%>
<%--                                    <button class="btn btn-outline-success" type="submit" name="operation">Save</button>--%>
<%--                                </div>--%>


                                <input type="hidden" id="operation" name="operation" value="">

                                <div class="d-grid gap-2 d-md-block">
                                    <button class="btn btn-outline-secondary" type="button" onclick="submitForm('clear')">Clear</button>
                                    <button class="btn btn-outline-danger" type="button" onclick="submitForm('delete')">Delete</button>
                                    <button class="btn btn-outline-warning" type="button" onclick="submitForm('update')">Update</button>
                                    <button class="btn btn-outline-success" type="button" onclick="submitForm('save')">Save</button>
                                </div>
                            </form>

                                <%--update popup form--%>
                                <div id="editModal" class="modal" style="display: none;">
                                    <div class="modal-content">
                                        <span class="close-btn" onclick="closeModal()">&times;</span>
                                        <h4>Edit Product</h4>
                                        <form id="editForm" method="post" action="manageProduct">
                                            <input type="hidden" name="productID" id="editProductID">

                                            <div class="form-group">
                                                <label for="editProductName">Product Name</label>
                                                <input type="text" id="editProductName" name="editProductName" class="form-control" required>
                                            </div>

                                            <div class="form-group">
                                                <label for="productCategory" class="form-label">Category</label>
                                                <select class="form-select" id="" name="productCategory" required>
                                                    <option id="editProductCategory" selected></option>

                                                    <%
                                                        if (categories != null && !categories.isEmpty()) {
                                                            for (CategoryDTO category : categories) {
                                                                System.out.println("CategoryID: " + category.getCategoryId() + "   " + "Category: " + category.getCategory());
                                                    %>
                                                    <option value="">select category</option>
                                                    <option value="<%= category.getCategoryId() %>"><%= category.getCategory() %></option>
                                                    <%
                                                        }
                                                    } else {
                                                    %>
                                                    <option value="">No categories available</option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>


                                            <div class="form-group">
                                                <label for="productTagLine" class="form-label">Tag Line</label>
                                                <input id="editProductTagLine" type="text" class="form-control" name="editProductTagLine" placeholder="item tag line" required>
                                            </div>


                                            <div class="form-group">
                                                <label for="editUnitPrice">Unit Price</label>
                                                <input type="number" id="editUnitPrice" name="editUnitPrice" class="form-control" required>
                                            </div>

                                            <div class="form-group">
                                                <label for="editQuantity">Quantity</label>
                                                <input type="number" id="editQuantity" name="editQuantity" class="form-control" required>
                                            </div>

                                            <div class="form-group">
                                                <label for="editQuantity">Color</label>
                                                <input type="number" id="editColor" name="editColor" class="form-control" required>
                                            </div>

                                            <button type="submit" class="btn btn-success">Save Changes</button>
                                        </form>
                                    </div>
                                </div>




                            <%--table--%>
                            <div class="row">
                                <!-- Table Column -->
                                <div class="col-lg-12">
                                    <table class="table table-striped table-hover">
                                        <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Category</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Unit price (Rs)</th>
                                            <th scope="col">QTY on hand</th>
                                            <th scope="col">Photo</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                        </thead>

                                        <tbody id="itemTableBody">


                                        <%
                                            List<Product> products = (List<Product>) request.getAttribute("products");
                                            if (products != null && !products.isEmpty()) {
                                                for (Product product : products) {
                                        %>

                                        <tr>
                                            <td><%= product.getProductID()%></td>
                                            <td><%= product.getCategoryID()%></td>
                                            <td><%= product.getProductName()%></td>
                                            <td><%= product.getUnitPrice()%></td>
                                            <td><%= product.getQtyOnHand()%></td>
                                            <%--                            <td><img src="assets/home-page/product-imac-m4.png" alt="iMac" width="50" height="50"></td>--%>
                                            <td><img src="<%= request.getContextPath() %>/uploads/<%= product.getImage() %>" alt="Product Image" width="50"></td>
                                            <td>
                                                <button
                                                        class="btn btn-primary edit-btn"
                                                        data-id="<%= product.getProductID() %>"
                                                        data-name="<%= product.getProductName() %>"
                                                        data-price="<%= product.getUnitPrice() %>"
                                                        data-quantity="<%= product.getQtyOnHand() %>">
                                                    Edit
                                                </button>
                                                <button class="btn btn-sm btn-danger">
                                                    Delete
                                                </button>
                                            </td>
                                        </tr>

                                        <%
                                            }
                                        %>
                                        <%
                                        }else {
                                        %>
                                        <tr>
                                            <td colspan="6">No products found.</td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Category Management -->
        <div id="categoryManagement" style="display: none;">
            <h3>Category Management</h3>
            <div class="row">
                <div class="col-md-6 col-lg-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Add Category</h5>
                            <p class="card-text">Create a new category.</p>
                            <a href="#" class="btn btn-primary">Add</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">View Categories</h5>
                            <p class="card-text">List all categories.</p>
                            <a href="#" class="btn btn-primary">View</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Update Category</h5>
                            <p class="card-text">Modify category details.</p>
                            <a href="#" class="btn btn-primary">Update</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Delete Category</h5>
                            <p class="card-text">Remove categories.</p>
                            <a href="#" class="btn btn-danger">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Order Management -->
        <div id="orderManagement"  style="display: none;">
            <h3>Order Management</h3>
            <p>View all orders placed by customers.</p>
            <a href="#" class="btn btn-primary">View Orders</a>
        </div>

        <!-- User Management -->
        <div id="userManagement" style="display: none;">
            <h3>User Management</h3>
            <p>Manage customer accounts: activate or deactivate accounts.</p>
            <a href="#" class="btn btn-primary">Manage Users</a>
        </div>
    </div>
</div>











<!--jQuery-->
<script src="lib/jquery-3.7.1.min.js"></script>



<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Include Quill JavaScript -->
<script src="https://cdn.quilljs.com/1.3.7/quill.min.js"></script>

<%--image preview in product manage section --%>
<script>
    const imageUpload = document.getElementById('imageUpload');
    const imagePreview = document.getElementById('imagePreview');
    const deleteButton = document.getElementById('deleteButton');

    // Show the selected image
    imageUpload.addEventListener('change', function (event) {
        const file = event.target.files[0];

        if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
                imagePreview.src = e.target.result;
                imagePreview.style.display = 'block';
                deleteButton.style.display = 'block';
            };
            reader.readAsDataURL(file);
        }
    });

    // Delete the selected image
    deleteButton.addEventListener('click', function () {
        imagePreview.src = '';
        imagePreview.style.display = 'none';
        deleteButton.style.display = 'none';
        imageUpload.value = ''; // Clear the file input
    });
</script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Get the selected section from the server-side attribute
        const selectedSection = '<%= request.getAttribute("selectedSection") %>';

        // Hide all sections
        const sections = document.querySelectorAll('.content > div');
        sections.forEach(section => {
            section.style.display = 'none';
        });

        // Show the selected section
        if (selectedSection) {
            const sectionToShow = document.getElementById(selectedSection);
            if (sectionToShow) {
                sectionToShow.style.display = 'block';
            }
        }
    });
</script>


<%--product description editor tool bar--%>
<%--<script>--%>
<%--    // Initialize Quill editor--%>
<%--    var quill = new Quill('#editorContainer', {--%>
<%--        theme: 'snow', // Theme options: 'snow', 'bubble'--%>
<%--        placeholder: 'Write product description here...',--%>
<%--        modules: {--%>
<%--            toolbar: [--%>
<%--                [{ 'header': [1, 2, 3, false] }],--%>
<%--                ['bold', 'italic', 'underline', 'strike'], // Text styling--%>
<%--                [{ 'list': 'ordered' }, { 'list': 'bullet' }], // Lists--%>
<%--                [{ 'align': [] }], // Alignment--%>
<%--                ['link', 'image'], // Links and images--%>
<%--                ['clean'] // Remove formatting--%>
<%--            ]--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>


<script>
    document.addEventListener("DOMContentLoaded", () => {
        const editButtons = document.querySelectorAll(".edit-btn");
        const modal = document.getElementById("editModal");
        const editForm = document.getElementById("editForm");

        // Populate and show the modal when an edit button is clicked
        editButtons.forEach((button) => {
            button.addEventListener("click", () => {
                const productID = button.dataset.id;
                const productName = button.dataset.name;
                const unitPrice = button.dataset.price;
                const quantity = button.dataset.quantity;
                const editProductCategory = button.dataset.category;

                document.getElementById("editProductID").value = productID;
                document.getElementById("editProductName").value = productName;
                document.getElementById("editUnitPrice").value = unitPrice;
                document.getElementById("editQuantity").value = quantity;
                document.getElementById("editProductCategory").textContent = editProductCategory;

                modal.style.display = "flex"; // Show the modal
            });
        });

        // Close the modal
        window.closeModal = () => {
            modal.style.display = "none";
        };

        // Close the modal when clicking outside the content
        window.onclick = (event) => {
            if (event.target === modal) {
                modal.style.display = "none";
            }
        };
    });
</script>

<!-- Custom JS -->
<script>
    const sidebarToggle = document.getElementById('sidebarToggle');
    const sidebar = document.getElementById('sidebar');

    sidebarToggle.addEventListener('click', () => {
        sidebar.classList.toggle('show');
    });

    // Close the sidebar when a link is clicked (optional)
    sidebar.addEventListener('click', (e) => {
        if (e.target.tagName === 'A') {
            sidebar.classList.remove('show');
        }
    });
</script>

<%--for product crud--%>
<script>
    // Function to set the operation and submit the form
    function submitForm(operation) {
        if (!operation) {
            console.error("Operation is not defined.");
            return;
        }

        // Set the value of the hidden input field
        document.getElementById("operation").value = operation;

        // Submit the form
        document.getElementById("admin-product-form").submit();
    }
</script>


<script>
    $(document).ready(function () {
        $("#itemTableBody tr").on("click", function () {
            const productId = $(this).data("id");
            fetchProductDetails(productId);
        });

        function fetchProductDetails(productId) {
            $.ajax({
                url: `getProductDetails?productID=${productId}`,
                method: "GET",
                dataType: "json",
                success: function (data) {
                    $("#productId").val(data.productID);
                    $("#productCategory").val(data.categoryID);
                    $("#productName").val(data.productName);
                    $("#productTagLine").val(data.tagLine);
                    $("#productStorageCapacity").val(data.storageCapacity);
                    $("#productColor").val(data.color);
                    $("#productUnitPrice").val(data.unitPrice);
                    $("#productQtyOnHand").val(data.qtyOnHand);
                    $("#productDescription").val(data.productDescription);
                },
                error: function (xhr, status, error) {
                    console.error("Error fetching product details:", error);
                }
            });
        }
    });

</script>


</body>
</html>
