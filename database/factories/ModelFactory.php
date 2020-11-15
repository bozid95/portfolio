<?php

/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(Brackets\AdminAuth\Models\AdminUser::class, function (Faker\Generator $faker) {
    return [
        'first_name' => $faker->firstName,
        'last_name' => $faker->lastName,
        'email' => $faker->email,
        'password' => bcrypt($faker->password),
        'remember_token' => null,
        'activated' => true,
        'forbidden' => $faker->boolean(),
        'language' => 'en',
        'deleted_at' => null,
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        'last_login_at' => $faker->dateTime,
        
    ];
});/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Biodatum::class, static function (Faker\Generator $faker) {
    return [
        'nama' => $faker->sentence,
        'tempat_lahir' => $faker->sentence,
        'tgl_lahir' => $faker->date(),
        'alamat' => $faker->text(),
        'keterangan' => $faker->text(),
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Biodatum::class, static function (Faker\Generator $faker) {
    return [
        'nama' => $faker->sentence,
        'tempat_lahir' => $faker->sentence,
        'tgl_lahir' => $faker->date(),
        'alamat' => $faker->text(),
        'keterangan' => $faker->text(),
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        'no_hp' => $faker->sentence,
        
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Skill::class, static function (Faker\Generator $faker) {
    return [
        'nama_skill' => $faker->sentence,
        'persentase' => $faker->sentence,
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Project::class, static function (Faker\Generator $faker) {
    return [
        'judul' => $faker->sentence,
        'link' => $faker->sentence,
        'keterangan' => $faker->text(),
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        
        
    ];
});
