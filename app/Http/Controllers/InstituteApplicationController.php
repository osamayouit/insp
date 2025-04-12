<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Message;

class MessageController extends Controller
{
    public function store(Request $request)
    {
        $data = $request->validate([
            // 'name' => 'required|string',
            // 'university_name' => 'nullable|string',
            // 'major_name' => 'nullable|string',
            // 'father_country' => 'nullable|string',
            // 'target_country' => 'nullable|string',
            // 'father_phone' => 'nullable|string',
            // 'student_phone' => 'nullable|string',
            // 'highschool_certificate' => 'nullable|file',
            // 'university_certificate' => 'nullable|file',
            // 'passport' => 'nullable|file',
            // 'personal_photo' => 'nullable|file',
            // 'extra_file' => 'nullable|file',
        ]);

        // رفع الملفات إذا كانت موجودة
        foreach (['highschool_certificate', 'university_certificate', 'passport', 'personal_photo', 'extra_file'] as $fileField) {
            if ($request->hasFile($fileField)) {
                $data[$fileField] = $request->file($fileField)->store('messages_files', 'public');
            }
        }

        Message::create($data);

        return back()->with('success', 'تم إرسال الرسالة بنجاح.');
    }
}
