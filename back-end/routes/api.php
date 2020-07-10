<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::apiResource('answers', 'api\AnswerController');
Route::apiResource('questions', 'api\QuestionController');
Route::apiResource('result', 'api\UserEntryController');
