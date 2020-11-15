<div class="form-group row align-items-center"
    :class="{'has-danger': errors.has('judul'), 'has-success': fields.judul && fields.judul.valid }">
    <label for="judul" class="col-form-label text-md-right"
        :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.project.columns.judul') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.judul" v-validate="''" @input="validate($event)" class="form-control"
            :class="{'form-control-danger': errors.has('judul'), 'form-control-success': fields.judul && fields.judul.valid}"
            id="judul" name="judul" placeholder="{{ trans('admin.project.columns.judul') }}">
        <div v-if="errors.has('judul')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('judul') }}
        </div>
    </div>
</div>

<div class="form-group row align-items-center"
    :class="{'has-danger': errors.has('link'), 'has-success': fields.link && fields.link.valid }">
    <label for="link" class="col-form-label text-md-right"
        :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.project.columns.link') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.link" v-validate="''" @input="validate($event)" class="form-control"
            :class="{'form-control-danger': errors.has('link'), 'form-control-success': fields.link && fields.link.valid}"
            id="link" name="link" placeholder="{{ trans('admin.project.columns.link') }}">
        <div v-if="errors.has('link')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('link') }}</div>
    </div>
</div>

<div class="form-group row align-items-center"
    :class="{'has-danger': errors.has('keterangan'), 'has-success': fields.keterangan && fields.keterangan.valid }">
    <label for="keterangan" class="col-form-label text-md-right"
        :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.project.columns.keterangan') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <div>
            <wysiwyg class="form-control" v-model="form.keterangan" v-validate="''" id="keterangan" name="keterangan">
            </wysiwyg>
        </div>
        <div v-if="errors.has('keterangan')" class="form-control-feedback form-text" v-cloak>
            @{{ errors.first('keterangan') }}</div>
    </div>
</div>
