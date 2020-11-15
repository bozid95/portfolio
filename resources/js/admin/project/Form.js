import AppForm from '../app-components/Form/AppForm';

Vue.component('project-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                judul:  '' ,
                link:  '' ,
                keterangan:  '' ,
                
            }
        }
    }

});