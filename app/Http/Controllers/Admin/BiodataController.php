<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Biodatum\BulkDestroyBiodatum;
use App\Http\Requests\Admin\Biodatum\DestroyBiodatum;
use App\Http\Requests\Admin\Biodatum\IndexBiodatum;
use App\Http\Requests\Admin\Biodatum\StoreBiodatum;
use App\Http\Requests\Admin\Biodatum\UpdateBiodatum;
use App\Models\Biodatum;
use Brackets\AdminListing\Facades\AdminListing;
use Exception;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Response;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class BiodataController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexBiodatum $request
     * @return array|Factory|View
     */
    public function index(IndexBiodatum $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(Biodatum::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'nama', 'tempat_lahir', 'tgl_lahir','no_hp','email'],

            // set columns to searchIn
            ['id', 'nama', 'tempat_lahir', 'alamat', 'keterangan','email']
        );

        if ($request->ajax()) {
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            return ['data' => $data];
        }

        return view('admin.biodatum.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function create()
    {
        $this->authorize('admin.biodatum.create');

        return view('admin.biodatum.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreBiodatum $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreBiodatum $request)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Store the Biodatum
        $biodatum = Biodatum::create($sanitized);

        if ($request->ajax()) {
            return ['redirect' => url('admin/biodata'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/biodata');
    }

    /**
     * Display the specified resource.
     *
     * @param Biodatum $biodatum
     * @throws AuthorizationException
     * @return void
     */
    public function show(Biodatum $biodatum)
    {
        $this->authorize('admin.biodatum.show', $biodatum);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Biodatum $biodatum
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(Biodatum $biodatum)
    {
        $this->authorize('admin.biodatum.edit', $biodatum);


        return view('admin.biodatum.edit', [
            'biodatum' => $biodatum,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateBiodatum $request
     * @param Biodatum $biodatum
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateBiodatum $request, Biodatum $biodatum)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Update changed values Biodatum
        $biodatum->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/biodata'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
            ];
        }

        return redirect('admin/biodata');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroyBiodatum $request
     * @param Biodatum $biodatum
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroyBiodatum $request, Biodatum $biodatum)
    {
        $biodatum->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroyBiodatum $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroyBiodatum $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    Biodatum::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
