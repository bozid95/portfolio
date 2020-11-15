<div class="form-group row align-items-center" :class="{'has-danger': errors.has('nama_skill'), 'has-success': fields.nama_skill && fields.nama_skill.valid }">
    <label for="nama_skill" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.skill.columns.nama_skill') }}</label>
        <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.nama_skill" v-validate="''" @input="validate($event)" class="form-control" :class="{'form-control-danger': errors.has('nama_skill'), 'form-control-success': fields.nama_skill && fields.nama_skill.valid}" id="nama_skill" name="nama_skill" placeholder="{{ trans('admin.skill.columns.nama_skill') }}">
        <div v-if="errors.has('nama_skill')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('nama_skill') }}</div>
    </div>
</div>

<div class="form-group row align-items-center" :class="{'has-danger': errors.has('persentase'), 'has-success': fields.persentase && fields.persentase.valid }">
    <label for="persentase" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.skill.columns.persentase') }}</label>
        <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.persentase" v-validate="''" @input="validate($event)" class="form-control" :class="{'form-control-danger': errors.has('persentase'), 'form-control-success': fields.persentase && fields.persentase.valid}" id="persentase" name="persentase" placeholder="{{ trans('admin.skill.columns.persentase') }}">
        <div v-if="errors.has('persentase')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('persentase') }}</div>
    </div>
</div>


