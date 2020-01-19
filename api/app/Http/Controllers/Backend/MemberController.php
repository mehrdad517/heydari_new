<?php

namespace App\Http\Controllers\Backend;

use App\Member;
use App\File;
use App\Http\Controllers\Controller;
use App\Role;
use App\Tag;
use Faker\Provider\Image;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class MemberController extends Controller
{
    public function index(Request $request)
    {

        $entities = Member::with(['region', 'createdBy'])->where(function ($q) use ($request) {
            if ($request->has('filter')) {

                $filter = json_decode($request->get('filter'), true);

                if (@$filter['created_by'] != -1) {
                    $q->where('user_id', '=', $filter['created_by']);
                } elseif (! in_array(Auth::user()->role_key, Role::where('crud', 1)->pluck('key')->toArray())) {
                    $q->where('user_id', '=', Auth::id());
                }

            }
        })->orderBy($request->get('sort_field') ?? 'id', $request->get('sort_type') ?? 'desc')
            ->paginate($request->get('limit') ?? 10);

        return response($entities);

    }


    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        try {
            $validator = \Validator::make($request->all(), [
                'name' => 'required',
                'family' => 'required',
                'mobile' => 'required',
                'code' => 'required',
                'address' => 'required',
                'gender' => 'required',
                'region_id' => 'required'
            ]);

            if ($validator->fails()) {
                return response()->json(['status' => false, 'msg' => $validator->errors()->first()]);
            }

            $result = Member::firstOrCreate([
                'name' => $request->get('name'),
                'family' => $request->get('family'),
                'mobile' => $request->get('mobile'),
                'code' => $request->get('code'),
                'address' => $request->get('address'),
                'gender' => $request->get('gender'),
                'region_id' => $request->get('region_id'),
                'user_id' => Auth::id()
            ]);

            if ($result) {
                return response()->json(['status' => true, 'msg' => 'با موفقیت انجام شد.'], 200);
            }

            return response()->json(['status' => false, 'msg' => 'un success'], 200);
        } catch (\Exception $exception) {
            return response()->json(['status' => false, 'msg' => $exception->getMessage()]);
        }

    }

    /**
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function show($id)
    {
        $result = Member::find($id);

        if ($result) {
            return response([
                'name' => $result->name,
                'family' => $result->family,
                'mobile' => $result->mobile,
                'code' => $result->code,
                'address' => $result->address,
                'gender' => $result->gender,
                'region_id' => $result->region_id,

            ]);
        }

        return response()->json(['status' => false, 'msg' => 'request is invalid'], 200);
    }


    /**
     * @param $id
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update($id, Request $request)
    {

        $validator = \Validator::make($request->all(), [
            'name' => 'required',
            'family' => 'required',
            'mobile' => 'required',
            'code' => 'required',
            'address' => 'required',
            'gender' => 'required',
            'region_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => false, 'msg' => $validator->errors()->first()]);
        }

        $result = Member::updateOrCreate(['id' => $id], [
            'name' => $request->get('name'),
            'family' => $request->get('family'),
            'mobile' => $request->get('mobile'),
            'code' => $request->get('code'),
            'address' => $request->get('address'),
            'gender' => $request->get('gender'),
            'region_id' => $request->get('region_id'),
        ]);

        if ($result) {
            return response()->json(['status' => true, 'msg' => 'عملیات موفقیت امیز بود.'], 200);
        }

        return response()->json(['status' => false, 'msg' => 'un success'], 200);

    }

}
