<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>قائمة الجامعات والتخصصات</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">
    <div class="container mx-auto p-6">
        <h1 class="text-4xl font-bold text-center text-green-700 mb-8">قائمة الجامعات والتخصصات</h1>

        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            @foreach ($universities as $university)
                <div class="bg-white shadow-lg rounded-2xl p-6 border-l-8 border-green-500 hover:shadow-2xl hover:border-green-700 transition duration-300 ease-in-out">
                    <h2 class="text-2xl font-semibold text-gray-900 mb-4 border-b pb-3">
                        {{ $university->name }}
                    </h2>
                    <ul class="space-y-2">
                        @forelse ($university->majors as $major)
                            <li class="bg-green-100 text-green-800 px-4 py-2 rounded-lg shadow-md font-medium hover:bg-green-200 transition duration-200 ease-in-out">
                                {{ $major->name }}
                            </li>
                        @empty
                            <li class="text-gray-500 italic">❌ لا توجد تخصصات متاحة</li>
                        @endforelse
                    </ul>
                </div>
            @endforeach
        </div>
    </div>
</body>
</html>
