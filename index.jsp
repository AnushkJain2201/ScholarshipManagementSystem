<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SMS</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
        }

        #app {
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        #content {
            flex: 1;
            display: flex;
            overflow: hidden;
        }

        #sidebar {
            height: 100%;
        }

        #main-content {
            overflow-y: auto;
        }

        .form-container {
            max-width: 400px;
            margin: auto;
            padding: 2rem;

            /* Primary orange */
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .form-link {
            color: #ff4500;
            /* Dark orange for link */
        }

        .form-link:hover {
            text-decoration: underline;
        }

        .input-field {
            background-color: #ffdab9;
            /* Peach Puff (light orange) */
        }

        .submit-btn {
            background-color: #ff7f50;
            /* Coral (soft orange) */
            color: white;
        }

        .submit-btn:hover {
            background-color: #ff6347;
            /* Tomato (red-orange) */
        }
    </style>
</head>

<body class="bg-orange-100">
    <div id="app">
        <!-- Header -->
        <header class="bg-orange-200 text-stone-800 p-6 md:p-8 flex justify-between items-center">
            <h1 class="text-2xl md:text-3xl font-extrabold">
                Scholarship Management System
            </h1>
            <!-- Hamburger Menu -->
            <button id="menu-btn" class="block lg:hidden p-2 focus:outline-none">
                <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16">
                    </path>
                </svg>
            </button>
        </header>

        <div id="content" class="flex flex-grow">
            <!-- Sidebar -->
            <aside id="sidebar"
                class="bg-orange-300 text-stone-800 font-bold text-2xl w-60 md:w-80 p-4 absolute lg:relative lg:translate-x-0 transform -translate-x-full transition-transform duration-200 ease-in-out lg:flex lg:flex-col">
                <nav>
                    <ul class="py-4 md:py-6">
                        <li class="mb-7">
                            <a href="#" class="text-xl ml-0 md:ml-8 md:text-2xl uppercase hover:text-orange-600"
                                onclick="loadContent('student')">
                                Student
                            </a>
                        </li>
                        <li class="mb-7">
                            <a href="#" class="text-xl md:text-2xl ml-0 md:ml-8 uppercase hover:text-orange-600"
                                onclick="loadContent('HOD')">
                                HOD
                            </a>
                        </li>
                        <li class="mb-7">
                            <a href="#" class="text-xl md:text-2xl ml-0 md:ml-8 uppercase hover:text-orange-600"
                                onclick="loadContent('principal')">
                                Principal
                            </a>
                        </li>
                        <li class="mb-7">
                            <a href="#" class="text-xl md:text-2xl ml-0 md:ml-8 uppercase hover:text-orange-600"
                                onclick="loadContent('finance')">
                                Finance Head
                            </a>
                        </li>
                    </ul>
                </nav>
            </aside>

            <!-- Main Content -->
            <main id="main-content" class="flex-1 p-8 overflow-y-auto">
                <div class="w-[100%] h-[40%] flex justify-center items-center gap-4 flex-col">
                    <h2 class="text-xl text-center md:text-4xl font-semibold mb-4">
                        Welcome To The Scholarship Management System
                    </h2>
                    <p class="text-gray-700 text-center w-[80%] font-bold">
                        This Scholarship Management System is an incredibly useful tool for managing scholarships, for the students applying as well as the administration dignitaries. 
                    </p>
                </div>

            </main>
        </div>
    </div>

    <script>
        const menuBtn = document.getElementById("menu-btn");
        const sidebar = document.getElementById("sidebar");

        menuBtn.addEventListener("click", () => {
            sidebar.classList.toggle("-translate-x-full");
        });

        function loadContent(page) {
            const content = {
                student: `<div id="form-container" class="form-container bg-orange-300">
        <!-- Sign-Up Form -->

        <div id="signup-form">
            <h2 class="text-orange-600 text-2xl font-bold mb-4 uppercase">Sign Up (STUDENT)</h2>
            <form>
                <div class="mb-4">
                    <label class="block text-white mb-2" for="name">Name</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="text" id="name" placeholder="Enter your name" required>
                </div>
                <div class="mb-4">
                    <label class="block text-white mb-2" for="email">Email</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="email" id="email" placeholder="Enter your email" required>
                </div>
                <div class="mb-4">
                    <label class="block text-white mb-2" for="rollno">Roll No</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="text" id="rollno" placeholder="Enter your roll number" required>
                </div>
                <div class="mb-6">
                    <label class="block text-white mb-2" for="password">Password</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="password" id="password" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="submit-btn w-full py-2 rounded">Sign Up</button>
            </form>
            <p class="text-center text-white mt-4">Already have an account? <a href="#" class="form-link" onclick="toggleForm()">Sign In</a></p>
        </div>

        <!-- Sign-In Form (Hidden by Default) -->
        <div id="signin-form" class="hidden">
            <h2 class="text-orange-600 text-2xl font-bold mb-4 uppercase">Sign In (STUDENT)</h2>
            <form>
                <div class="mb-4">
                    <label class="block text-white mb-2" for="signin-email">Email</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="email" id="signin-email" placeholder="Enter your email" required>
                </div>
                <div class="mb-6">
                    <label class="block text-white mb-2" for="signin-password">Password</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="password" id="signin-password" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="submit-btn w-full py-2 rounded">Sign In</button>
            </form>
            <p class="text-center text-white mt-4">Don't have an account? <a href="#" class="form-link" onclick="toggleForm()">Sign Up</a></p>
        </div>
    </div>`,
                HOD: `<div id="form-container" class="form-container bg-orange-300">
                    <div id="signin-form">
            <h2 class="text-orange-600 text-2xl font-bold mb-4 uppercase">Sign In (HOD)</h2>
            <form>
                <div class="mb-4">
                    <label class="block text-white mb-2" for="signin-email">Email</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="email" id="signin-email" placeholder="Enter your email" required>
                </div>
                <div class="mb-6">
                    <label class="block text-white mb-2" for="signin-password">Password</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="password" id="signin-password" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="submit-btn w-full py-2 rounded">Sign In</button>
            </form>
        </div>
    </div>`,
                principal: `<div id="form-container" class="form-container bg-orange-300">
                    <div id="signin-form">
            <h2 class="text-orange-600 text-2xl font-bold mb-4 uppercase">Sign In (Principal)</h2>
            <form>
                <div class="mb-4">
                    <label class="block text-white mb-2" for="signin-email">Email</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="email" id="signin-email" placeholder="Enter your email" required>
                </div>
                <div class="mb-6">
                    <label class="block text-white mb-2" for="signin-password">Password</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="password" id="signin-password" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="submit-btn w-full py-2 rounded">Sign In</button>
            </form>
        </div>
    </div>`,
                finance: `<div id="form-container" class="form-container bg-orange-300">
                    <div id="signin-form">
            <h2 class="text-orange-600 text-2xl font-bold mb-4 uppercase">Sign In (finance head)</h2>
            <form>
                <div class="mb-4">
                    <label class="block text-white mb-2" for="signin-email">Email</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="email" id="signin-email" placeholder="Enter your email" required>
                </div>
                <div class="mb-6">
                    <label class="block text-white mb-2" for="signin-password">Password</label>
                    <input class="input-field w-full px-3 py-2 rounded" type="password" id="signin-password" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="submit-btn w-full py-2 rounded">Sign In</button>
            </form>
        </div>
    </div>`,
            };

            document.getElementById("main-content").innerHTML =
                content[page];
        }

        function toggleForm() {
            const signupForm = document.getElementById("signup-form");
            const signinForm = document.getElementById("signin-form");

            signupForm.classList.toggle("hidden");
            signinForm.classList.toggle("hidden");
        }
    </script>
</body>

</html>