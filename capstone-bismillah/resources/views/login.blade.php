<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Add Tailwind CSS -->
     
  <link rel="shortcut icon" href="{{ asset('style/images/paw.png') }}" />
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Background animation for gradient effect */
        @keyframes gradientBG {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        .animated-bg {
            background: linear-gradient(45deg, #f78fb3, #f64f59, #e539ab);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
        }

        /* Input focus animation */
        .input-focus:focus {
            animation: inputFocusAnimation 0.3s ease-out;
        }

        @keyframes inputFocusAnimation {
            0% {
                border-color: #f78fb3;
                box-shadow: 0 0 0 2px rgba(247, 143, 179, 0.3);
            }
            100% {
                border-color: #e539ab;
                box-shadow: 0 0 0 2px rgba(229, 57, 171, 0.3);
            }
        }

        /* Button hover animation */
        .btn-hover:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 20px rgba(229, 57, 171, 0.3);
        }
    </style>
</head>
<body class="bg-gray-50 min-h-screen flex items-center justify-center animated-bg">
    <div class="w-full max-w-md p-8 space-y-6 bg-white shadow-2xl rounded-lg border border-gray-200 transform transition-all duration-300 ease-in-out hover:scale-105">
        <h2 class="text-center text-4xl font-bold text-pink-700">4Petto</h2>
        <h6 class="text-center text-lg font-medium text-gray-500">Welcome Back</h6>

        <form method="POST" action="{{ route('login') }}" class="space-y-6">
            @csrf
            <!-- Email Input -->
            <div>
                <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                <input type="email" name="email" id="email" class="w-full mt-2 px-4 py-3 border border-pink-500 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-pink-500 focus:border-pink-500 input-focus" placeholder="Enter your email" required>
            </div>
            <!-- Password Input -->
            <div>
                <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                <input type="password" name="password" id="password" class="w-full mt-2 px-4 py-3 border border-pink-500 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-pink-500 focus:border-pink-500 input-focus" placeholder="Enter your password" required>
            </div>
            <!-- Remember Me Checkbox -->
            <div class="flex items-center">
                <input type="checkbox" name="remember" id="remember" class="h-4 w-4 text-pink-500 focus:ring-pink-500">
                <label for="remember" class="ml-2 text-sm text-pink-500">Remember Me</label>
            </div>
            <!-- Submit Button -->
            <div>
                <button type="submit" class="w-full py-3 px-4 bg-pink-600 text-white font-semibold rounded-lg btn-hover hover:bg-pink-700 focus:outline-none focus:ring-2 focus:ring-pink-500">
                    Login
                </button>
            </div>
        </form>

        <div class="text-center">
            <a href="{{ route('register') }}" class="text-sm text-pink-500 hover:underline">Don't have an account? Register</a>
        </div>
    </div>
</body>
</html>
