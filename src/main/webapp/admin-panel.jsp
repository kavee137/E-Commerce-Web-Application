<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
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
        <a href="#productMange">Product Management</a>
        <a href="#categoryManagement">Category Management</a>
        <a href="#orderManagement">Order Management</a>
        <a href="#userManagement">User Management</a>
        <a href="#customerManagement">Customer Management</a>
    </div>

    <!-- Content Area -->
    <div class="content">
        <h1>Welcome, Administrator</h1>
        <hr>

        <!--Item-->
        <div class="container mt-5 pt-5 border" id="productMange" style="background-color: #f8f9fa">
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
                        <div class="card-body">
                            <form id="itemForm">

                                <div class="col">
                                    <label for="itemId" class="form-label">ID</label>
                                    <input id="itemId" type="text" class="form-control-plaintext p-0" readonly>
                                </div>

                                <div class="col mb-3">
                                    <select class="form-select" aria-label="Select item category">
                                        <option selected>Select category</option>
                                        <option value="1">iPhone</option>
                                        <option value="2">Mac</option>
                                        <option value="3">iPad</option>
                                        <option value="4">Accessories</option>
                                    </select>
                                </div>

                                <div class="row mb-3">
                                    <div class="col">
                                        <label for="itemName" class="form-label">Name</label>
                                        <input id="itemName" type="text" class="form-control" placeholder="name" required>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col">
                                        <label for="itemTagLine" class="form-label">Tag line</label>
                                        <input id="itemTagLine" type="text" class="form-control" placeholder="item tag line" required>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col">
                                        <label for="itemUnitPrice" class="form-label">Unit price</label>
                                        <input id="itemUnitPrice" type="text" class="form-control" placeholder="unit price" required>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="itemQtyOnHand" class="form-label">QTY on hand</label>
                                    <input id="itemQtyOnHand" type="text" class="form-control" placeholder="qty on hand" required>
                                </div>
                                <div class="d-grid gap-2 d-md-block">
                                    <button id="item_clear_btn" class="btn btn-outline-secondary" type="button">clear</button>
                                    <button id="item_delete_btn" class="btn btn-outline-danger" type="button">delete</button>
                                    <button id="item_update_btn" class="btn btn-outline-warning" type="button">update</button>
                                    <button id="item_save_btn" class="btn btn-outline-success" type="button">save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Table Column -->
                <div class="col-lg-8">
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Unit price (Rs)</th>
                            <th scope="col">QTY on hand</th>
                        </tr>
                        </thead>
                        <tbody id="itemTableBody">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>


<%--        <!-- Product Management -->--%>
<%--        <section id="productManagement">--%>
<%--            <h3>Product Management</h3>--%>
<%--            <div class="row">--%>
<%--                <div class="col-md-6 col-lg-3">--%>
<%--                    <div class="card text-center">--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">Add Product</h5>--%>
<%--                            <p class="card-text">Add new products to the inventory.</p>--%>
<%--                            <a href="#" class="btn btn-primary">Add</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-md-6 col-lg-3">--%>
<%--                    <div class="card text-center">--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">View Products</h5>--%>
<%--                            <p class="card-text">View all products in the inventory.</p>--%>
<%--                            <a href="#" class="btn btn-primary">View</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-md-6 col-lg-3">--%>
<%--                    <div class="card text-center">--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">Update Product</h5>--%>
<%--                            <p class="card-text">Edit product details.</p>--%>
<%--                            <a href="#" class="btn btn-primary">Update</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-md-6 col-lg-3">--%>
<%--                    <div class="card text-center">--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">Delete Product</h5>--%>
<%--                            <p class="card-text">Remove products from the inventory.</p>--%>
<%--                            <a href="#" class="btn btn-danger">Delete</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </section>--%>

        <hr>

        <!-- Category Management -->
        <section id="categoryManagement">
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
        </section>

        <hr>

        <!-- Order Management -->
        <section id="orderManagement">
            <h3>Order Management</h3>
            <p>View all orders placed by customers.</p>
            <a href="#" class="btn btn-primary">View Orders</a>
        </section>

        <hr>

        <!-- User Management -->
        <section id="userManagement">
            <h3>User Management</h3>
            <p>Manage customer accounts: activate or deactivate accounts.</p>
            <a href="#" class="btn btn-primary">Manage Users</a>
        </section>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

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
</body>
</html>
