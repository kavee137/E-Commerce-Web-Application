<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Signup Animation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            /*background: linear-gradient(135deg, #cbc211 0%, #ffffff 100%);*/
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        .container {
            position: relative;
            width: 100%;
            max-width: 400px;
        }

        .form-container {
            position: relative;
            transition: transform 0.6s ease-in-out;
            display: flex;
            justify-content: center;
        }

        .form-container.active {
            transform: translateX(-50%);
        }

        .form-page {
            width: 50%;
            padding: 40px;
            box-sizing: border-box;
        }

        .login-page {
            border-radius: 1rem;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Soft shadow */
            background: rgba(255, 255, 255, 0); /* Fully transparent */
            backdrop-filter: blur(15px); /* Apply blur effect */
            -webkit-backdrop-filter: blur(15px); /* For Safari compatibility */
            /*padding: 40px;*/
        }



        .signup-page {
            background: #f8f9fa;
            border-radius: 1rem;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .btn-primary {
            background-color: #2575fc;
            border: none;
            border-radius: 0.5rem;
        }

        .btn-primary:hover {
            background-color: #1e5fca;
        }

        .form-link {
            font-size: 0.9rem;
        }

        .form-link a {
            color: #2575fc;
            text-decoration: none;
        }

        .form-link a:hover {
            text-decoration: underline;
        }







        /* From Uiverse.io by kyle1dev */
        .modern-form {
            --primary: #3b82f6;
            --primary-dark: #2563eb;
            --primary-light: rgba(59, 130, 246, 0.1);
            --success: #10b981;
            --text-main: #1e293b;
            --text-secondary: #64748b;
            --bg-input: #f8fafc;

            position: relative;
            width: 300px;
            padding: 24px;
            background: #ffffff;
            border-radius: 16px;
            box-shadow:
                    0 4px 6px -1px rgba(0, 0, 0, 0.1),
                    0 2px 4px -2px rgba(0, 0, 0, 0.05),
                    inset 0 0 0 1px rgba(148, 163, 184, 0.1);
            font-family:
                    system-ui,
                    -apple-system,
                    sans-serif;
        }

        .form-title {
            font-size: 22px;
            font-weight: 600;
            color: var(--text-main);
            margin: 0 0 24px;
            text-align: center;
            letter-spacing: -0.01em;
        }

        .input-group {
            margin-bottom: 16px;
        }

        .input-wrapper {
            position: relative;
            display: flex;
            align-items: center;
        }

        .form-input {
            width: 100%;
            height: 40px;
            padding: 0 36px;
            font-size: 14px;
            border: 1px solid #e2e8f0;
            border-radius: 10px;
            background: var(--bg-input);
            color: var(--text-main);
            transition: all 0.2s ease;
        }

        .form-input::placeholder {
            color: var(--text-secondary);
        }

        .input-icon {
            position: absolute;
            left: 12px;
            width: 16px;
            height: 16px;
            color: var(--text-secondary);
            pointer-events: none;
        }

        .password-toggle {
            position: absolute;
            right: 12px;
            display: flex;
            align-items: center;
            padding: 4px;
            background: none;
            border: none;
            color: var(--text-secondary);
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .eye-icon {
            width: 16px;
            height: 16px;
        }

        .submit-button {
            position: relative;
            width: 100%;
            height: 40px;
            margin-top: 8px;
            background: var(--primary);
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            overflow: hidden;
            transition: all 0.2s ease;
        }

        .button-glow {
            position: absolute;
            inset: 0;
            background: linear-gradient(
                    90deg,
                    transparent,
                    rgba(255, 255, 255, 0.2),
                    transparent
            );
            transform: translateX(-100%);
            transition: transform 0.5s ease;
        }

        .form-footer {
            margin-top: 16px;
            text-align: center;
            font-size: 13px;
        }

        .login-link {
            color: var(--text-secondary);
            text-decoration: none;
            transition: all 0.2s ease;
        }

        .login-link span {
            color: var(--primary);
            font-weight: 500;
        }

        /* Hover & Focus States */
        .form-input:hover {
            border-color: #cbd5e1;
        }

        .form-input:focus {
            outline: none;
            border-color: var(--primary);
            background: white;
            box-shadow: 0 0 0 4px var(--primary-light);
        }

        .password-toggle:hover {
            color: var(--primary);
            transform: scale(1.1);
        }

        .submit-button:hover {
            background: var(--primary-dark);
            transform: translateY(-1px);
            box-shadow:
                    0 4px 12px rgba(59, 130, 246, 0.25),
                    0 2px 4px rgba(59, 130, 246, 0.15);
        }

        .submit-button:hover .button-glow {
            transform: translateX(100%);
        }

        .login-link:hover {
            color: var(--text-main);
        }

        .login-link:hover span {
            color: var(--primary-dark);
        }

        /* Active States */
        .submit-button:active {
            transform: translateY(0);
            box-shadow: none;
        }

        .password-toggle:active {
            transform: scale(0.9);
        }

        /* Validation States */
        .form-input:not(:placeholder-shown):valid {
            border-color: var(--success);
        }

        .form-input:not(:placeholder-shown):valid ~ .input-icon {
            color: var(--success);
        }

        /* Animation */
        @keyframes shake {
            0%,
            100% {
                transform: translateX(0);
            }
            25% {
                transform: translateX(-4px);
            }
            75% {
                transform: translateX(4px);
            }
        }

        .form-input:not(:placeholder-shown):invalid {
            border-color: #ef4444;
            animation: shake 0.2s ease-in-out;
        }

        .form-input:not(:placeholder-shown):invalid ~ .input-icon {
            color: #ef4444;
        }

    </style>
</head>

<body>
<div class="container">
    <div class="form-container" id="form-container">
        <!-- Login Page -->
<%--        <div class="form-page login-page">--%>
<%--            <img class="mb-5" src="assets/home-page/web-logo.png" style="width: 200px">--%>
<%--            <h2 class="mb-4 text-center">Login</h2>--%>
<%--            <form action="login.jsp" method="post">--%>
<%--                <div class="mb-3">--%>
<%--                    <label for="loginEmail" class="form-label">Email</label>--%>
<%--                    <input type="email" class="form-control" name="email" id="loginEmail" placeholder="Enter your email" required>--%>
<%--                </div>--%>
<%--                <div class="mb-3">--%>
<%--                    <label for="loginPassword" class="form-label">Password</label>--%>
<%--                    <input type="password" class="form-control" name="password" id="loginPassword" placeholder="Enter your password" required>--%>
<%--                </div>--%>
<%--                <button type="submit" class="btn btn-primary w-100">Login</button>--%>
<%--                <p class="form-link text-center mt-3">--%>
<%--                    Don't have an account? <a href="#" id="show-signup">Sign Up</a>--%>
<%--                </p>--%>
<%--            </form>--%>
<%--        </div>--%>


        <!-- Login Page -->
        <div class="login-page">

            <form class="modern-form">

                <div class="form-title">Login</div>

                <div class="form-body">

                    <div class="input-group">
                        <div class="input-wrapper">
                            <svg fill="none" viewBox="0 0 24 24" class="input-icon">
                                <path
                                        stroke-width="1.5"
                                        stroke="currentColor"
                                        d="M3 8L10.8906 13.2604C11.5624 13.7083 12.4376 13.7083 13.1094 13.2604L21 8M5 19H19C20.1046 19 21 18.1046 21 17V7C21 5.89543 20.1046 5 19 5H5C3.89543 5 3 5.89543 3 7V17C3 18.1046 3.89543 19 5 19Z"
                                ></path>
                            </svg>
                            <input
                                    required=""
                                    placeholder="Email"
                                    class="form-input"
                                    type="email"
                            />
                        </div>
                    </div>

                    <div class="input-group">
                        <div class="input-wrapper">
                            <svg fill="none" viewBox="0 0 24 24" class="input-icon">
                                <path
                                        stroke-width="1.5"
                                        stroke="currentColor"
                                        d="M12 10V14M8 6H16C17.1046 6 18 6.89543 18 8V16C18 17.1046 17.1046 18 16 18H8C6.89543 18 6 17.1046 6 16V8C6 6.89543 6.89543 6 8 6Z"
                                ></path>
                            </svg>
                            <input
                                    required=""
                                    placeholder="Password"
                                    class="form-input"
                                    type="password"
                            />
                            <button class="password-toggle" type="button">
                                <svg fill="none" viewBox="0 0 24 24" class="eye-icon">
                                    <path
                                            stroke-width="1.5"
                                            stroke="currentColor"
                                            d="M2 12C2 12 5 5 12 5C19 5 22 12 22 12C22 12 19 19 12 19C5 19 2 12 2 12Z"
                                    ></path>
                                    <circle
                                            stroke-width="1.5"
                                            stroke="currentColor"
                                            r="3"
                                            cy="12"
                                            cx="12"
                                    ></circle>
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>

                <button class="submit-button" type="submit">
                    <span class="button-text" >Create Account</span>
                    <div class="button-glow"></div>
                </button>

                <div class="form-footer">
                    <a class="login-link" href="#">
                        Don't have an account? <a href="#" id="show-signup">Sign Up</a>
                    </a>
                </div>
            </form>

        </div>









        <!-- Signup Page -->
<%--        <div class="form-page signup-page">--%>
<%--            <h2 class="mb-4 text-center">Sign Up</h2>--%>
<%--            <form action="signup.jsp" method="post">--%>
<%--                <div class="mb-3">--%>
<%--                    <label for="signupName" class="form-label">Full Name</label>--%>
<%--                    <input type="text" class="form-control" name="fullname" id="signupName" placeholder="Enter your full name" required>--%>
<%--                </div>--%>
<%--                <div class="mb-3">--%>
<%--                    <label for="signupEmail" class="form-label">Email</label>--%>
<%--                    <input type="email" class="form-control" name="email" id="signupEmail" placeholder="Enter your email" required>--%>
<%--                </div>--%>
<%--                <div class="mb-3">--%>
<%--                    <label for="signupPassword" class="form-label">Password</label>--%>
<%--                    <input type="password" class="form-control" name="password" id="signupPassword" placeholder="Create a password" required>--%>
<%--                </div>--%>
<%--                <button type="submit" class="btn btn-primary w-100">Sign Up</button>--%>
<%--                <p class="form-link text-center mt-3">--%>
<%--                    Already have an account? <a href="#" id="show-login">Login</a>--%>
<%--                </p>--%>
<%--            </form>--%>
<%--        </div>--%>


        <!-- Signup Page -->
        <div class="signup-page">
            <form class="modern-form">

                <div class="form-title" style="color: #686868">Sign Up</div>

                <img src="assets/customer-login-signup-page/web-logo-black.png" style="width: 100px; margin-left: 30%; margin-bottom: 50px; opacity: 64%">


                <div class="form-body">
                    <div class="input-group">
                        <div class="input-wrapper">
                            <svg fill="none" viewBox="0 0 24 24" class="input-icon">
                                <circle
                                        stroke-width="1.5"
                                        stroke="currentColor"
                                        r="4"
                                        cy="8"
                                        cx="12"
                                ></circle>
                                <path
                                        stroke-linecap="round"
                                        stroke-width="1.5"
                                        stroke="currentColor"
                                        d="M5 20C5 17.2386 8.13401 15 12 15C15.866 15 19 17.2386 19 20"
                                ></path>
                            </svg>
                            <input
                                    required=""
                                    placeholder="Username"
                                    class="form-input"
                                    type="text"
                            />
                        </div>
                    </div>

                    <div class="input-group">
                        <div class="input-wrapper">
                            <svg fill="none" viewBox="0 0 24 24" class="input-icon">
                                <path
                                        stroke-width="1.5"
                                        stroke="currentColor"
                                        d="M3 8L10.8906 13.2604C11.5624 13.7083 12.4376 13.7083 13.1094 13.2604L21 8M5 19H19C20.1046 19 21 18.1046 21 17V7C21 5.89543 20.1046 5 19 5H5C3.89543 5 3 5.89543 3 7V17C3 18.1046 3.89543 19 5 19Z"
                                ></path>
                            </svg>
                            <input
                                    required=""
                                    placeholder="Email"
                                    class="form-input"
                                    type="email"
                            />
                        </div>
                    </div>

                    <div class="input-group">
                        <div class="input-wrapper">
                            <svg fill="none" viewBox="0 0 24 24" class="input-icon">
                                <path
                                        stroke-width="1.5"
                                        stroke="currentColor"
                                        d="M12 10V14M8 6H16C17.1046 6 18 6.89543 18 8V16C18 17.1046 17.1046 18 16 18H8C6.89543 18 6 17.1046 6 16V8C6 6.89543 6.89543 6 8 6Z"
                                ></path>
                            </svg>
                            <input
                                    required=""
                                    placeholder="Password"
                                    class="form-input"
                                    type="password"
                            />
                            <button class="password-toggle" type="button">
                                <svg fill="none" viewBox="0 0 24 24" class="eye-icon">
                                    <path
                                            stroke-width="1.5"
                                            stroke="currentColor"
                                            d="M2 12C2 12 5 5 12 5C19 5 22 12 22 12C22 12 19 19 12 19C5 19 2 12 2 12Z"
                                    ></path>
                                    <circle
                                            stroke-width="1.5"
                                            stroke="currentColor"
                                            r="3"
                                            cy="12"
                                            cx="12"
                                    ></circle>
                                </svg>
                            </button>
                        </div>
                    </div>

                    <div class="input-group">
                        <div class="input-wrapper">
                            <svg fill="none" viewBox="0 0 24 24" class="input-icon">
                                <path
                                        stroke-width="1.5"
                                        stroke="currentColor"
                                        d="M12 10V14M8 6H16C17.1046 6 18 6.89543 18 8V16C18 17.1046 17.1046 18 16 18H8C6.89543 18 6 17.1046 6 16V8C6 6.89543 6.89543 6 8 6Z"
                                ></path>
                            </svg>
                            <input
                                    required=""
                                    placeholder="Confirm Password"
                                    class="form-input"
                                    type="password"
                            />
                            <button class="password-toggle" type="button">
                                <svg fill="none" viewBox="0 0 24 24" class="eye-icon">
                                    <path
                                            stroke-width="1.5"
                                            stroke="currentColor"
                                            d="M2 12C2 12 5 5 12 5C19 5 22 12 22 12C22 12 19 19 12 19C5 19 2 12 2 12Z"
                                    ></path>
                                    <circle
                                            stroke-width="1.5"
                                            stroke="currentColor"
                                            r="3"
                                            cy="12"
                                            cx="12"
                                    ></circle>
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>

                <button class="submit-button" type="submit">
                    <span class="button-text">Create Account</span>
                    <div class="button-glow"></div>
                </button>

                <div class="form-footer">
                    <a class="login-link" href="#">
                        Already have an account? <a href="#" id="show-login">Login</a>
                    </a>
                </div>
            </form>
        </div>


    </div>
</div>

<script>
    const loginPage = document.querySelector('.login-page');
    const signupPage = document.querySelector('.signup-page');
    const showSignup = document.getElementById('show-signup');
    const showLogin = document.getElementById('show-login');

    // Initially, show only the login page
    loginPage.style.display = 'block'; // Login form visible
    signupPage.style.display = 'none'; // Signup form hidden

    // Show Signup Page
    showSignup.addEventListener('click', (e) => {
        e.preventDefault(); // Prevent default link behavior
        loginPage.style.display = 'none'; // Hide login form
        signupPage.style.display = 'block'; // Show signup form
    });

    // Show Login Page
    showLogin.addEventListener('click', (e) => {
        e.preventDefault(); // Prevent default link behavior
        loginPage.style.display = 'block'; // Show login form
        signupPage.style.display = 'none'; // Hide signup form
    });
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
