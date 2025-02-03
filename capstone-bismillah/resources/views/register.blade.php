<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
  <link rel="shortcut icon" href="{{ asset('style/images/paw.png') }}" />
    <!-- Add Tailwind CSS -->
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
            background: linear-gradient(45deg, #4c6ef5, #3f72b5, #2a1888);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
        }

        /* Input focus animation */
        .input-focus:focus {
            animation: inputFocusAnimation 0.3s ease-out;
        }

        @keyframes inputFocusAnimation {
            0% {
                border-color: #3f72b5;
                box-shadow: 0 0 0 2px rgba(63, 114, 181, 0.3);
            }
            100% {
                border-color: #2a1888;
                box-shadow: 0 0 0 2px rgba(42, 24, 136, 0.3);
            }
        }

        /* Button hover animation */
        .btn-hover:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 20px rgba(42, 24, 136, 0.3);
        }
    </style>
</head>
<body class="bg-gray-50 min-h-screen flex items-center justify-center animated-bg">
    <div class="w-full max-w-md p-8 space-y-6 bg-white shadow-2xl rounded-lg border border-gray-200 transform transition-all duration-300 ease-in-out hover:scale-105">
        <h2 class="text-center text-4xl font-bold text-indigo-800">4Petto</h2>
        <h6 class="text-center text-lg font-medium text-gray-500">Create Your Account</h6>

        <form method="POST" action="{{ route('register') }}" class="space-y-6">
            @csrf
            <!-- Name Input -->
            <div>
                <label for="name" class="block text-sm font-medium text-gray-700">Full Name</label>
                <input type="text" name="name" id="name" class="w-full mt-2 px-4 py-3 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 input-focus" placeholder="Enter your full name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                @error('name')
                    <div class="mt-2 text-red-500 text-xs">{{ $message }}</div>
                @enderror
            </div>
            <!-- Email Input -->
            <div>
                <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                <input type="email" name="email" id="email" class="w-full mt-2 px-4 py-3 border border-indigo-500 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 input-focus" placeholder="Enter your email" value="{{ old('email') }}" required autocomplete="email">
                @error('email')
                    <div class="mt-2 text-red-500 text-xs">{{ $message }}</div>
                @enderror
            </div>
            <!-- Password Input -->
            <div>
                <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                <input type="password" name="password" id="password" class="w-full mt-2 px-4 py-3 border border-indigo-500 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 input-focus" placeholder="Enter your password" required autocomplete="new-password">
                @error('password')
                    <div class="mt-2 text-red-500 text-xs">{{ $message }}</div>
                @enderror
            </div>
            <!-- Confirm Password Input -->
            <div>
                <label for="confirmpassword" class="block text-sm font-medium text-gray-700">Confirm Password</label>
                <input type="password" name="confirmpassword" id="confirmpassword" class="w-full mt-2 px-4 py-3 border border-indigo-500 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 input-focus" placeholder="Confirm your password" required>
            </div>
            <!-- Submit Button -->
            <div>
                <button type="submit" class="w-full py-3 px-4 bg-indigo-600 text-white font-semibold rounded-lg btn-hover hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500">
                    Register
                </button>
            </div>
        </form>

        <div class="text-center">
            <a href="{{ route('login') }}" class="text-sm text-indigo-600 hover:underline">Already have an account? Login</a>
        </div>
    </div>
</body>
</html>
