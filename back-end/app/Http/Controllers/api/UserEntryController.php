<?php
namespace App\Http\Controllers\api;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\UserEntry;
use App\Models\Question;
use App\Models\Answers;
class UserEntryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $questions = Question::all('id', 'text');
        $saida = array();
        $current_pos = 0;
        foreach($questions as $question) {
            $saida[$current_pos]['question_text'] = $question['text'];
            $total = UserEntry::where('question_id', '=', $question['id'])->count('id');

            $saida[$current_pos]['total'] = $total;
            $saida[$current_pos]['id'] = $question['id'];
            $saida[$current_pos]['answers'] = Answers::select('text', 'id')->where('question_id', '=', $question['id'])->get();
            foreach ($saida[$current_pos]['answers'] as $answer) {
                $answer_count = UserEntry::where('answer_id', '=', $answer['id'])->count('id');
                $answer['count'] = $answer_count;
                $answer['percentage'] = (100 * $answer_count) / ($total > 0 ? $total : 1);
            }
            $current_pos++;
        }
        $saida['question_count'] = Question::count('id');
        $saida['entry_total'] = UserEntry::count('id');
        return $saida;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        UserEntry::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return UserEntry::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $UserEntry = UserEntry::findOrFail($id);
        $UserEntry->update($request->all());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        UserEntry::find($id)->delete();
    }
}
