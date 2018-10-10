<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePersonagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('personage', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',255)->index();
            $table->integer('height')->comment('身高');
            $table->integer('weight')->comment('体重(千克)');
            $table->integer('type')->comment('职位，成就');
            $table->text('introduction');
            $table->integer('cid')->comment('国家id');
            $table->integer('rid')->comment('宗教id');
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
        Schema::dropIfExists('personage');
    }
}
