<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDynastiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dynasty', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('fid')->index()->comment('父id');
            $table->string('name',255)->index();
            $table->text('introduction')->comment('简介');
            $table->string('stime',16);
            $table->string('etime',16);
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
        Schema::dropIfExists('dynasty');
    }
}
