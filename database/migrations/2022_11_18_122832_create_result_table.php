<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResultTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('result', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->integer('crap_id');
            $table->text('url_profile')->nullable();
            $table->string('html')->nullable();
            $table->string('url_overlay')->nullable();
            $table->string('html_profile')->nullable();
            $table->string('folder')->nullable();
            $table->string('nama')->nullable();
            $table->string('jabatan')->nullable();
            $table->string('tentang')->nullable();
            $table->string('hp')->nullable();
            $table->string('email')->nullable();
            $table->string('link')->nullable();
            $table->string('web')->nullable();
            $table->string('pengalaman')->nullable();
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
        Schema::dropIfExists('result');
    }
}
