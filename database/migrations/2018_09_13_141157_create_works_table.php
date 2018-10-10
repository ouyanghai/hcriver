<?php

use Ouyang\Mysqlsupport\Schema;
use Ouyang\Mysqlsupport\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWorksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    public function up()
    {
        Schema::create('works', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('uid')->index()->comment('作者id');
            $table->string('name',255)->index();
            $table->integer('type')->comment('作者类型');
            $table->text('introduction');
            $table->text('content');
            $table->string('stime',16);
            $table->string('etime',16);
            $table->timestamps();
            $table->fulltext(['name', 'content']);
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('works');
    }
}
