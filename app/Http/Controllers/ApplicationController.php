<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Application;

class ApplicationController extends Controller
{
    public function store(Request $request)
{
    $request->validate([
        'name' => 'required|string|max:222',
        'university_name' => 'required|string|max:222',
        'major_name' => 'required|string|max:222',
        'father_country' => 'required|string|max:222',
        'target_country' => 'required|string|max:222',
        'student_phone' => 'required|digits_between:6,17',
        'father_phone' => 'required|digits_between:6,17',
        //  'highschool_certificate' => 'required|image|mimes:png|max:1536',
        // 'university_certificate' => 'required|image|mimes:png|max:1536',
        // 'passport' => 'required|image|mimes:png|max:1536',
        // 'personal_photo' => 'required|image|mimes:png|max:1536',
        //  'extra_file' => 'mimes:pdf|max:4096',


    ]);

    Application::create([
        'name' => $request->name,
        'university_name' => $request->university_name,
        'major_name' => $request->major_name,
        'father_country' => $request->father_country,
        'target_country' => $request->target_country,
        'father_phone' =>  $request->father_phone,
        'student_phone' => $request->student_phone,
        'highschool_certificate' => $request->highschool_certificate,
        // 'university_certificate' => $request->university_certificate,
        // 'passport' => $request->passport,
        // 'personal_photo' => $request->personal_photo,
        // 'extra_file' => $request->extra_file,

    ]);

    return redirect()->back()->with('success', 'تم إرسال الطلب بنجاح ✅');
}


}
