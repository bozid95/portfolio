import AppForm from '../app-components/Form/AppForm';

Vue.component('biodatum-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                nama:  '' ,
                tempat_lahir:  '' ,
                tgl_lahir:  '' ,
                alamat:  '' ,
                keterangan:  '' ,
                
            }
        }
    }

});