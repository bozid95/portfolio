<div class="form-group row align-items-center"
    :class="{'has-danger': errors.has('nama'), 'has-success': fields.nama && fields.nama.valid }">
    <label for="nama" class="col-form-label text-md-right"
        :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.biodatum.columns.nama') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.nama" v-validate="''" @input="validate($event)" class="form-control"
            :class="{'form-control-danger': errors.has('nama'), 'form-control-success': fields.nama && fields.nama.valid}"
            id="nama" name="nama" placeholder="{{ trans('admin.biodatum.columns.nama') }}">
        <div v-if="errors.has('nama')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('nama') }}</div>
    </div>
</div>

<div class="form-group row align-items-center"
    :class="{'has-danger': errors.has('tempat_lahir'), 'has-success': fields.tempat_lahir && fields.tempat_lahir.valid }">
    <label for="tempat_lahir" class="col-form-label text-md-right"
        :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.biodatum.columns.tempat_lahir') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <input type="text" v-model="form.tempat_lahir" v-validate="''" @input="validate($event)" class="form-control"
            :class="{'form-control-danger': errors.has('tempat_lahir'), 'form-control-success': fields.tempat_lahir && fields.tempat_lahir.valid}"
            id="tempat_lahir" name="tempat_lahir" placeholder="{{ trans('admin.biodatum.columns.tempat_lahir') }}">
        <div v-if="errors.has('tempat_lahir')" class="form-control-feedback form-text" v-cloak>
            @{{ errors.first('tempat_lahir') }}</div>
    </div>
</div>

<div class="form-group row align-items-center"
    :class="{'has-danger': errors.has('tgl_lahir'), 'has-success': fields.tgl_lahir && fields.tgl_lahir.valid }">
    <label for="tgl_lahir" class="col-form-label text-md-right"
        :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.biodatum.columns.tgl_lahir') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-sm-8'">
        <div class="input-group input-group--custom">
            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
            <datetime v-model="form.tgl_lahir" :config="datePickerConfig" v-validate="'date_format:yyyy-MM-dd HH:mm:ss'"
                class="flatpickr"
                :class="{'form-control-danger': errors.has('tgl_lahir'), 'form-control-success': fields.tgl_lahir && fields.tgl_lahir.valid}"
                id="tgl_lahir" name="tgl_lahir"
                placeholder="{{ trans('brackets/admin-ui::admin.forms.select_a_date') }}"></datetime>
        </div>
        <div v-if="errors.has('tgl_lahir')" class="form-control-feedback form-text" v-cloak>
            @{{ errors.first('tgl_lahir') }}</div>
    </div>
</div>

<div class="form-group row align-items-center"
    :class="{'has-danger': errors.has('no_hp'), 'has-success': fields.no_hp && fields.no_hp.valid }">
    <label for="no_hp" class="col-form-label text-md-right"
        :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.biodatum.columns.no_hp') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <div>
            <textarea class="form-control" v-model="form.no_hp" v-validate="''" id="no_hp" name="no_hp"></textarea>
        </div>
        <div v-if="errors.has('no_hp')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('no_hp') }}
        </div>
    </div>
</div>

<div class="form-group row align-items-center"
    :class="{'has-danger': errors.has('email'), 'has-success': fields.email && fields.email.valid }">
    <label for="email" class="col-form-label text-md-right"
        :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('email') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <div>
            <textarea class="form-control" v-model="form.email" v-validate="''" id="email" name="email"></textarea>
        </div>
        <div v-if="errors.has('email')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('email') }}
        </div>
    </div>
</div>


<div class="form-group row align-items-center"
    :class="{'has-danger': errors.has('alamat'), 'has-success': fields.alamat && fields.alamat.valid }">
    <label for="alamat" class="col-form-label text-md-right"
        :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.biodatum.columns.alamat') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <div>
            <textarea class="form-control" v-model="form.alamat" v-validate="''" id="alamat" name="alamat"></textarea>
        </div>
        <div v-if="errors.has('alamat')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('alamat') }}
        </div>
    </div>
</div>



<div class="form-group row align-items-center"
    :class="{'has-danger': errors.has('keterangan'), 'has-success': fields.keterangan && fields.keterangan.valid }">
    <label for="keterangan" class="col-form-label text-md-right"
        :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.biodatum.columns.keterangan') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <div>
            <textarea class="form-control" v-model="form.keterangan" v-validate="''" id="keterangan"
                name="keterangan"></textarea>
        </div>
        <div v-if="errors.has('keterangan')" class="form-control-feedback form-text" v-cloak>
            @{{ errors.first('keterangan') }}</div>
    </div>
</div>
