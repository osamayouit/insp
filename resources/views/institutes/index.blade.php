<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>قائمة المعاهد والكورسات</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">
    <div class="container mx-auto p-6">
        <h1 class="text-4xl font-bold text-center text-blue-700 mb-8">قائمة المعاهد والكورسات</h1>

        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            @foreach ($institutes as $institute)
                <div class="bg-white shadow-lg rounded-2xl p-6 border-l-8 border-blue-500 hover:shadow-2xl hover:border-blue-700 transition duration-300 ease-in-out">
                    <h2 class="text-2xl font-semibold text-gray-900 mb-4 border-b pb-3">
                        {{ $institute->name }}
                    </h2>
                    <ul class="space-y-2">
                        @foreach ($institute->courses as $course)
                            <li class="bg-blue-100 text-blue-800 px-4 py-2 rounded-lg shadow-md font-medium hover:bg-blue-200 transition duration-200 ease-in-out">
                                <a href="{{ route('institutes.requestForm', ['institute_id' => $institute->id, 'course_id' => $course->id]) }}">
                                    {{ $course->name }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            @endforeach
        </div>
    </div>
</body>
</html>
