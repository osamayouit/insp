<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\University;
use App\Country; // إضافة الـ Country model

class UniversityController extends Controller
{
    // عرض قائمة الجامعات فقط
    public function index()
    {
        $universities = University::all(); // بدون التخصصات
        return view('universities.index', compact('universities'));
    }

    // عرض صفحة التفاصيل لجامعة معينة مع التخصصات داخل الفورم
    public function show($id)
    {
        // جلب الجامعة مع التخصصات
        $university = University::with('majors')->findOrFail($id);

        // جلب قائمة الدول
        $countries = Country::all(); // استرجاع جميع الدول من قاعدة البيانات

        return view('universities.show', compact('university', 'countries')); // تمرير البيانات للـ view
    }

    // عرض التخصص بشكل منفصل (يمكن حذفه إذا ما عاد يستخدم)
    public function showMajor($id)
    {
        $university = University::whereHas('majors', function ($query) use ($id) {
            $query->where('majors.id', $id);
        })->with(['majors' => function ($query) use ($id) {
            $query->where('majors.id', $id);
        }])->firstOrFail();

        $major = $university->majors->first();

        return view('universities.show', compact('university', 'major'));
    }
}
