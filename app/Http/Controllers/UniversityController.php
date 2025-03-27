<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\University; // استدعاء المودل

class UniversityController extends Controller
{
    public function index()
{
    $universities = University::with('majors')->get(); // جلب الجامعات مع التخصصات الخاصة بها فقط
    return view('universities.index', compact('universities'));
}


}
