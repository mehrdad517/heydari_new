<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Hyperlink;
use Illuminate\Http\Request;

class HyperlinkController extends Controller
{
    public function index(Request $request)
    {

        if ($request->get('flat_mode') == "true") {
            return response(Hyperlink::defaultOrder()->get());
        }

        return response(Hyperlink::get()->toTree());
    }

    public function store(Request $request)
    {

        $validator = \Validator::make($request->all(), [
            'label' => 'required',
        ]);

        if ($validator->fails()) {
            return Response()->json(['status' => false, 'msg' => 'لطفا نام دسته را انتخاب کنید.']);
        }

        $new_node = explode(',', trim($request->get('label'), ','));

        $selected = $request->get('items');

        if (!empty($selected)) {
            foreach ($selected as $item) {
                foreach ($new_node as $new) {
                    $node = new Hyperlink([
                        'label' => trim($new),
                    ]);
                    $node->appendToNode(Hyperlink::find($item));
                    $node->save();
                }
            }
            return response()->json(['status' => true, 'msg' => 'با موفقیت ایجاد شدند.']);
        } else {
            foreach ($new_node as $new) {
                Hyperlink::create([
                    'label' => $new,
                ]);
            }
            return response()->json(['status' => true, 'msg' => 'با موفقیت ایجاد شد.']);
        }
    }

    public function show($id){
        $entity = Hyperlink::find($id);
        $list = [
            'value' => $entity->value,
            'label' => $entity->label,
            'status' => $entity->status,


        ];
        return response($list);
    }


    /**
     * @param null $id
     * @return \Illuminate\Http\Response
     */
    public function update($id, Request $request)
    {
        $validator = \Validator::make($request->all(), [
            'label' => 'required',
        ], [
            'label.required' => 'نام خود را وارد نکرده اید.',
        ]);
        if ($validator->fails()) {
            return Response()->json(['status' => false, 'msg' => $validator->errors()->first()]);
        }


        Hyperlink::where('value', $id)->update($request->all());

        $nodes = Hyperlink::descendantsAndSelf($id);
        foreach ($nodes as $nod) {
            $nod->status = $request->get('status');
            $nod->save();
        }

        return response()->json(['status' => true, 'msg' => 'با موفقیت به روز رسانی گردید']);
    }



}
