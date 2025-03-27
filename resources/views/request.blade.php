<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>إرسال الطلب</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">
    <div class="container mx-auto p-6">
        <h1 class="text-4xl font-bold text-center text-blue-700 mb-8">إرسال الطلب</h1>

        <!-- تنبيه بالمعهد والكورس -->
        <div class="bg-white shadow-lg rounded-2xl p-6 border-l-8 border-blue-500 mb-6">
            <h2 class="text-2xl font-semibold text-gray-900 mb-4">طلب الالتحاق بـ:</h2>
            <p class="text-lg"><strong>اسم المعهد:</strong> {{ session('institute_name') }}</p>
            <p class="text-lg"><strong>اسم الكورس:</strong> {{ session('course_name') }}</p>
        </div>
        <!-- نموذج الطلب -->
        <form action="{{ route('institutes.submitRequest') }}" method="POST" class="bg-white shadow-lg rounded-2xl p-6 border">
            @csrf
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                    <label for="name" class="block text-sm font-medium text-gray-700">الاسم الكامل</label>
                    <input type="text" name="name" id="name" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm" required>
                </div>
                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700">البريد الإلكتروني</label>
                    <input type="email" name="email" id="email" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm">
                </div>
                <div>
                    <label for="country_of_residence" class="block text-sm font-medium text-gray-700">بلد الإقامة</label>
                    <input type="text" name="country_of_residence" id="country_of_residence" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm">
                </div>
                <div>
                    <label for="contact_number" class="block text-sm font-medium text-gray-700">رقم التواصل</label>
                    <input type="text" name="contact_number" id="contact_number" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm">
                </div>
                <div>
                    <label for="city_of_residence" class="block text-sm font-medium text-gray-700">المدينة</label>
                    <input type="text" name="city_of_residence" id="city_of_residence" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm">
                </div>
                <div>
                    <label for="preferred_programme" class="block text-sm font-medium text-gray-700">البرنامج المفضل</label>
                    <input type="text" name="preferred_programme" id="preferred_programme" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm">
                </div>
            </div>

            <button type="submit" class="mt-6 w-full bg-blue-600 text-white py-2 px-4 rounded-lg shadow-md hover:bg-blue-700 transition duration-200 ease-in-out">
                إرسال الطلب
            </button>
        </form>
    </div>
</body>
</html>