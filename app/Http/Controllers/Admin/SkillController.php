<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Skill\BulkDestroySkill;
use App\Http\Requests\Admin\Skill\DestroySkill;
use App\Http\Requests\Admin\Skill\IndexSkill;
use App\Http\Requests\Admin\Skill\StoreSkill;
use App\Http\Requests\Admin\Skill\UpdateSkill;
use App\Models\Skill;
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

class SkillController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexSkill $request
     * @return array|Factory|View
     */
    public function index(IndexSkill $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(Skill::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'nama_skill', 'persentase'],

            // set columns to searchIn
            ['id', 'nama_skill', 'persentase']
        );

        if ($request->ajax()) {
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            return ['data' => $data];
        }

        return view('admin.skill.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function create()
    {
        $this->authorize('admin.skill.create');

        return view('admin.skill.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreSkill $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreSkill $request)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Store the Skill
        $skill = Skill::create($sanitized);

        if ($request->ajax()) {
            return ['redirect' => url('admin/skills'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/skills');
    }

    /**
     * Display the specified resource.
     *
     * @param Skill $skill
     * @throws AuthorizationException
     * @return void
     */
    public function show(Skill $skill)
    {
        $this->authorize('admin.skill.show', $skill);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Skill $skill
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(Skill $skill)
    {
        $this->authorize('admin.skill.edit', $skill);


        return view('admin.skill.edit', [
            'skill' => $skill,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateSkill $request
     * @param Skill $skill
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateSkill $request, Skill $skill)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Update changed values Skill
        $skill->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/skills'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
            ];
        }

        return redirect('admin/skills');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroySkill $request
     * @param Skill $skill
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroySkill $request, Skill $skill)
    {
        $skill->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroySkill $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroySkill $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    Skill::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
