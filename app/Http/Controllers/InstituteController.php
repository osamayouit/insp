<?php

namespace App\Http\Controllers;

use App\Institute;
use App\Request as UserRequest;
use Illuminate\Http\Request;
use App\Country; // إضافة الـ Country model

class instituteController extends Controller
{
    // عرض قائمة الجامعات فقط
    public function index()
    {
        $institutes = institute::all(); // بدون التخصصات
        return view('institutes.index', compact('institutes'));
    }

    // عرض صفحة التفاصيل لجامعة معينة مع التخصصات داخل الفورم
    public function show($id)
    {
        // جلب الجامعة مع التخصصات
        $institute = institute::with('courses')->findOrFail($id);

        // جلب قائمة الدول
        $countries = Country::all(); // استرجاع جميع الدول من قاعدة البيانات

        return view('institutes.show', compact('institute', 'countries')); // تمرير البيانات للـ view
    }

    // عرض التخصص بشكل منفصل (يمكن حذفه إذا ما عاد يستخدم)
    public function showcourse($id)
    {
        $institute = institute::whereHas('courses', function ($query) use ($id) {
            $query->where('courses.id', $id);
        })->with(['courses' => function ($query) use ($id) {
            $query->where('courses.id', $id);
        }])->firstOrFail();

        $course = $institute->courses->first();

        return view('institutes.show', compact('institute', 'course'));
    }
}
