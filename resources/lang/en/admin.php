<?php

return [
    'admin-user' => [
        'title' => 'Users',

        'actions' => [
            'index' => 'Users',
            'create' => 'New User',
            'edit' => 'Edit :name',
            'edit_profile' => 'Edit Profile',
            'edit_password' => 'Edit Password',
        ],

        'columns' => [
            'id' => 'ID',
            'last_login_at' => 'Last login',
            'first_name' => 'First name',
            'last_name' => 'Last name',
            'email' => 'Email',
            'password' => 'Password',
            'password_repeat' => 'Password Confirmation',
            'activated' => 'Activated',
            'forbidden' => 'Forbidden',
            'language' => 'Language',
                
            //Belongs to many relations
            'roles' => 'Roles',
                
        ],
    ],

    'biodatum' => [
        'title' => 'Biodata',

        'actions' => [
            'index' => 'Biodata',
            'create' => 'New Biodatum',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'nama' => 'Nama',
            'tempat_lahir' => 'Tempat lahir',
            'tgl_lahir' => 'Tgl lahir',
            'alamat' => 'Alamat',
            'keterangan' => 'Keterangan',
            
        ],
    ],

    'biodatum' => [
        'title' => 'Biodata',

        'actions' => [
            'index' => 'Biodata',
            'create' => 'New Biodatum',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'nama' => 'Nama',
            'tempat_lahir' => 'Tempat lahir',
            'tgl_lahir' => 'Tgl lahir',
            'alamat' => 'Alamat',
            'keterangan' => 'Keterangan',
            'no_hp' => 'No hp',
            
        ],
    ],

    'skill' => [
        'title' => 'Skill',

        'actions' => [
            'index' => 'Skill',
            'create' => 'New Skill',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'nama_skill' => 'Nama skill',
            'persentase' => 'Persentase',
            
        ],
    ],

    'project' => [
        'title' => 'Project',

        'actions' => [
            'index' => 'Project',
            'create' => 'New Project',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'judul' => 'Judul',
            'link' => 'Link',
            'keterangan' => 'Keterangan',
            
        ],
    ],

    // Do not delete me :) I'm used for auto-generation
];