<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInstagramResultTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    
    public function up()
    {
        Schema::create('instagram_result', function (Blueprint $table) {
            $table->id();
            $table->integer('instagram_id');
            $table->text('bio')->nullable();
            $table->string('id_ig')->nullable();
            $table->string('business_category_name')->nullable();
            $table->string('username')->nullable();
            $table->text('external_url')->nullable();
            $table->text('external_url_linkshimmed')->nullable();
            $table->string('full_name')->nullable();
            $table->string('email')->nullable();
            $table->string('phone')->nullable();
            $table->text('profile_pic_url')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('instagram_result');
    }
}
