<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <title>تفاصيل التخصص والجامعة</title>
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- select2 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- select2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>

    <style>
        .select2-container .select2-selection--single {
            height: 52px;
            padding: 10px;
            font-size: 1.125rem;
            border-radius: 0.75rem;
        }
    </style>
</head>
<body class="bg-gray-50 p-6">

    <!-- بطاقة الجامعة -->
    <div class="max-w-4xl mx-auto bg-white p-6 rounded-2xl shadow-md border-l-8 border-green-500">
        <div class="flex items-center space-x-4 space-x-reverse">
            @if($university->image)
                <img src="{{ asset('storage/' . $university->image) }}" alt="صورة الجامعة" class="w-32 h-32 object-cover rounded-xl border shadow">
            @endif
            <div>
                <h1 class="text-3xl font-bold text-green-700 mb-2">تفاصيل الجامعة والتخصص</h1>
                <p class="text-lg text-gray-700"><strong>اسم الجامعة:</strong> {{ $university->name }}</p>
            </div>
        </div>
    </div>

    <!-- نموذج التقديم -->
    <div class="mt-8 max-w-4xl mx-auto bg-white p-6 rounded-2xl shadow-md border border-gray-200">
        <h2 class="text-2xl font-semibold mb-6 text-green-700 text-center">📄 قدم طلبك الآن</h2>

        <form action="{{ route('applications.store') }}" method="POST" class="grid grid-cols-1 md:grid-cols-2 gap-6">
            @csrf
            <input type="hidden" name="university_name" value="{{ $university->name }}">

            <!-- الاسم الكامل -->
            <div>
                <label class="block mb-1 text-gray-700">اسمك الكامل <span class="text-red-500">*</span></label>
                <input type="text" name="name" required class="w-full rounded-xl border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 text-lg p-4">
            </div>
            <div>
                <label class="block mb-1 text-gray-700">رقمك الشخصي <span class="text-red-500">*</span></label>
                <input type="number" name="student_phone" required class="w-full rounded-xl border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 text-lg p-4">
            </div>
            <div>
                <label class="block mb-1 text-gray-700">رقم الاقارب <span class="text-red-500">*</span></label>
                <input type="number" name="father_phone" required class="w-full rounded-xl border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 text-lg p-4">
            </div>


            <!-- التخصص -->
            <div>
                <label class="block mb-1 text-gray-700">اختر التخصص <span class="text-red-500">*</span></label>
                <select name="major_name" required class="w-full select2">
                    <option value="" disabled selected>اختر التخصص</option>
                    @foreach ($university->majors as $major)
                        <option value="{{ $major->name }}">{{ $major->name }}</option>
                    @endforeach
                </select>
            </div>

            <!-- الدولة الحالية -->
            <div>
                <label class="block mb-1 text-gray-700">دولتك الحالية <span class="text-red-500">*</span></label>
                <select name="father_country" required class="w-full select2">
                    <option value="" disabled selected>اختر دولتك الحالية</option>
                    @foreach($countries as $country)
                        <option value="{{ $country->name }}">{{ $country->name }}</option>
                    @endforeach
                </select>
            </div>

            <!-- الدولة المستهدفة -->
            <div>
                <label class="block mb-1 text-gray-700">الدولة المستهدفة <span class="text-red-500">*</span></label>
                <select name="target_country" required class="w-full select2">
                    <option value="" disabled selected>اختر الدولة المستهدفة</option>
                    @foreach($countries as $country)
                        <option value="{{ $country->name }}">{{ $country->name }}</option>
                    @endforeach
                </select>
            </div>
            <div>
                <label class="block mb-1 text-gray-700">شهادة الثانوية<span class="text-red-500">*</span></label>
                <input type="file" name="highschool_certificate"
                    class="w-full rounded-xl border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 text-lg p-4">


                </div>

                <!-- 1. الصورة الشخصية (مطلوبة) -->

                   <div>
                    <label class="block mb-1 text-gray-700">
                        الصورة الشخصية <span class="text-red-500">*</span>
                    </label>

                    <input type="file" name="personal_photo" required
                        class="w-full rounded-xl border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 text-lg p-4">
                </div>

                <!-- 2. صورة جواز السفر (مطلوبة) -->
            <div>
                    <label class="block mb-1 text-gray-700">
                        صورة جواز السفر <span class="text-red-500">*</span>
                    </label>
                    <input type="file" name="passport" required
                        class="w-full rounded-xl border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 text-lg p-4">
                </div>

                <!-- 3. شهادة الجامعة (اختياري) -->
                <div>
                    <label class="block mb-1 text-gray-700">شهادة الجامعة <span class="text-red-500">*</span></label>
                    <input type="file" name="university_certificate"
                        class="w-full rounded-xl border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 text-lg p-4">
                </div>

                <!-- 4. شهادة الثانوية (اختياري) -->


                <!-- 5. ملف إضافي (اختياري، يقبل PDF أو صور) -->
                <div>
                    <label class="block mb-1 text-gray-700">ملف إضافي </label>
                    <input type="file" name="extra_file"
                        class="w-full rounded-xl border-gray-300 shadow-sm focus:border-green-500 focus:ring-green-500 text-lg p-4">
                </div>


            <!-- زر الإرسال -->
            <div class="col-span-1 md:col-span-2 text-center mt-4">
                <button type="submit" class="bg-green-600 text-white px-8 py-3 rounded-xl hover:bg-green-700 transition text-lg">
                    إرسال الطلب ✅
                </button>
            </div>
        </form>

        @if(session('success'))
        <div class="mt-6 p-4 bg-green-100 text-green-800 rounded-xl shadow text-center">
            {{ session('success') }}
        </div>
        @endif
    </div>

    <script>
        $(document).ready(function() {
            $('.select2').select2({
                placeholder: "",
                allowClear: true,
                width: '100%',
                dir: "rtl"
            });
        });
    </script>

</body>
</html>
