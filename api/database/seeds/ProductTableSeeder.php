<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('fa_IR');

        foreach (range(1,15) as $index) {
            $model = \App\BlogContent::create([
                'title' => $faker->realText(50),
                'meta_title' => $faker->realText(50),
                'meta_description' => $faker->realText(50),
                'slug' => $faker->slug,
                'content' => $faker->text(1000),
                'created_by' => 2
            ]);
            $model->categories()->attach([1,2]);
        }
    }

}
