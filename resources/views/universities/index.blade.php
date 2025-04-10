<!-- resources/views/universities/index.blade.php -->
<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>قائمة الجامعات</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .slide-up {
            transform: translateY(10px);
            opacity: 0;
            transition: all 0.5s ease-in-out;
        }

        .card:hover .slide-up {
            transform: translateY(0);
            opacity: 1;
        }
    </style>
</head>
<body class="bg-gray-100 text-gray-900 font-sans">
    <div class="max-w-7xl mx-auto p-6">
        <h1 class="text-4xl font-bold text-center text-green-700 mb-12">قائمة الجامعات</h1>

        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-10 justify-center">
            @foreach ($universities as $university)
                <div class="card bg-white shadow-xl rounded-2xl p-6 border-l-8 border-green-500 hover:border-green-700 transition duration-300 ease-in-out flex flex-col items-center text-center">

                    {{-- صورة الجامعة --}}
                    @if($university->image)
                        <img src="{{ asset('storage/' . $university->image) }}" alt="{{ $university->name }}" class="w-full h-48 object-cover rounded-xl mb-4 shadow">
                    @else
                        <div class="w-full h-48 bg-gray-200 rounded-xl mb-4 flex items-center justify-center text-gray-500">
                            لا توجد صورة
                        </div>
                    @endif

                    {{-- اسم الجامعة والوصف --}}
                    <h2 class="text-2xl font-semibold text-gray-900 mb-2">{{ $university->name }}</h2>
                    <p class="text-gray-600 text-sm mb-4">{!! $university->body !!}</p>

                    {{-- زر عرض التفاصيل --}}
                    <a href="{{ route('universities.show', ['university' => $university->id]) }}"
                       class="slide-up mt-auto bg-green-600 hover:bg-green-700 text-white font-semibold py-2 px-6 rounded-full transition duration-300 shadow-md">
                        عرض التفاصيل والتقديم
                    </a>
                </div>
            @endforeach
        </div>
    </div>
</body>
</html>
