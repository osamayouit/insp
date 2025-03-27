<?php

namespace App\Http\Controllers;

use App\Institute;
use App\Request as UserRequest;
use Illuminate\Http\Request;

class InstituteController extends Controller
{
    // عرض قائمة المعاهد والكورسات
    public function index()
    {
        // استرجاع المعاهد مع الكورسات المرتبطة بها
        $institutes = Institute::with('courses')->get();
        return view('institutes.index', compact('institutes'));
    }

    // عرض صفحة إرسال الطلب
    public function showRequestForm($institute_id, $course_id)
{
    // الحصول على المعهد
    $institute = Institute::findOrFail($institute_id);

    // البحث عن الكورس المرتبط بالمعهد باستخدام العلاقة
    $course = $institute->courses()->where('id', $course_id)->firstOrFail();

    // تخزين اسم المعهد واسم الكورس في الجلسة
    session([
        'institute_name' => $institute->name,
        'course_name' => $course->name,
    ]);

    // عرض صفحة الطلب
    return view('request', compact('institute', 'course'));
}
    // حفظ الطلب في قاعدة البيانات
    public function submitRequest(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'nullable|email|max:255',
            'country_of_residence' => 'nullable|string|max:255',
            'contact_number' => 'nullable|numeric',
            'city_of_residence' => 'nullable|string|max:255',
            'preferred_programme' => 'nullable|string|max:255',
        ]);

        // تخزين بيانات الطلب
        UserRequest::create(array_merge($validatedData, [
            'institute_name' => session('institute_name'),
            'course_name' => session('course_name'),
        ]));

        // تفريغ الجلسة
        session()->forget(['institute_name', 'course_name']);

        return redirect()->route('institutes.index')->with('success', 'تم إرسال الطلب بنجاح!');
    }
}
