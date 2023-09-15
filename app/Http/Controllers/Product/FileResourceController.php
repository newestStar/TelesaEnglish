<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Models\FileResources;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use File;
use Redirect;
use Illuminate\Support\Facades\Session;

class FileResourceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $type_file = isset($_GET['type_file'])? $_GET['type_file'] : null;
        $type_file_sesssion = Session::get('type_file_sesssion');
        if($type_file!=null){
            Session::put('type_file_sesssion', $type_file);
            $type_file_sesssion = Session::get('type_file_sesssion');
            if ($type_file == "all") {
                Session::forget('type_file_sesssion');
                $type_file_sesssion = Session::get('type_file_sesssion');
                
            }
        }

        if ( $type_file_sesssion != null) {
            $collection = FileResources::where('status',1)->orderBy('id', 'DESC')->where('type_file',$type_file_sesssion)->latest()->paginate(10);
        }else{
            $collection = FileResources::where('status',1)->orderBy('id', 'DESC')->latest()->paginate(10);
        }

        
        
        $collectionMp4 = FileResources::where('status',1)->where('type_file','mp4')->count();
        $collectionMp3 = FileResources::where('status',1)->where('type_file','mp3')->count();
        $collectionPdf = FileResources::where('status',1)->where('type_file','pdf')->count();
        return view('admin.product.file.index',compact('collection','collectionMp4','collectionMp3','collectionPdf'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.product.file.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => ['required'],
            'description' => ['required']
        ]);

        
        //$path = public_path().'/uploads/file/mp4';
        
        //File::makeDirectory($path, $mode = 0777, true, true);

        $pathUpload = 'uploads/file';

        $fileResource = FileResources::create($request->except('pathfile'));
        

        if($request->hasFile('pathfile')){
            $fileResource->pathfile = Storage::put($pathUpload,$request->file('pathfile'));
            $extension = $request->pathfile->getClientOriginalExtension();
            $fileResource->type_file = $extension;
        }
        
        $fileResource->status = 1;
        $fileResource->save();
        

        return response()->json([
            'html' => "<option value='".$fileResource->id."'>".$fileResource->name."</option>",
            'value' => $fileResource->id,
        ]);
        // return 'success';
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(FileResources $fileResource)
    {
        return view('admin.product.file.edit',compact('fileResource'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, FileResources $fileResource)
    {
        $this->validate($request,[
            'name' => ['required'],
            'description' => ['required']
        ]);

        $pathUpload = 'uploads/file';

        $fileResource->update($request->except('pathfile'));
        

        if($request->hasFile('pathfile')){
            // xóa file cũ
            $pathDelete = public_path().'/'.$fileResource->pathfile;
            File::delete($pathDelete);

            // tạo file mới
            $fileResource->pathfile = Storage::put($pathUpload,$request->file('pathfile'));
            $extension = $request->pathfile->getClientOriginalExtension();
            $fileResource->type_file = $extension;
        }


        $fileResource->save();

        return 'success';
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(FileResources $fileResource)
    {
        $pathDelete = public_path().'/'.$fileResource->pathfile;
        File::delete($pathDelete);

        $fileResource->delete();

        return 'success';
    }


    public function store_vendor_user(Request $request){

        $user_id = Auth::user()->id;
        $lesson_id = $request->valueLesson;

        $lessonUser = VendorUser::where('user_id',$user_id)->where('lesson_id',$lesson_id)->first();
        if ($request->has('checkDone')) {
            // Đã học xong
            if ($lessonUser==null) {
                $lessonUser = new VendorUser();
                $lessonUser->user_id = $user_id;
                $lessonUser->lesson_id=$request->checkDone;
                $lessonUser->save();
            }
        }else{
            // Chưa học xong
            if ($lessonUser!=null) {
                $lessonUser->delete();
            }
        }
        
        
        return Redirect::back();
    }
}
