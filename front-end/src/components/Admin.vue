<template>
  <div class="container">
    <div class="outer-box">
      <div class="content">
        <h1>Cadastrar pergunta</h1>
        <hr>
        <label>Pergunta</label>
        <input type="text" class="form-input" placeholder="Quantos anos?" id="question">
        <label>Alternativa A</label>
        <input type="text" class="form-input" placeholder="10 anos" id="answer1">
        <label>Alternativa B</label>
        <input type="text" class="form-input" placeholder="20 anos" id="answer2">
        <label>Alternativa C</label>
        <input type="text" class="form-input" placeholder="30 anos" id="answer3">
        <label>Alternativa D</label>
        <input type="text" class="form-input" placeholder="40 anos" id="answer4">
        <button v-on:click="addQuestion()" class="btn btn-primary" style="width: 100%">Cadastrar</button>
        <h1>Perguntas cadastradas</h1>
        <hr>
          <table class="table">
            <tr>
              <th>Pergunta</th>
              <th>A</th>
              <th>B</th>
              <th>C</th>
              <th>D</th>
              <th>#</th>
            </tr>
            <tr v-for="question in questions_json" :key="question.id">
              <td><input type="text" :value="question.text" :id="'question' + question.id" @change="updateQuestion(question.id, question)"></td>
              <td v-if="typeof question.answers[0] != 'undefined'"><input type="text" :id="'answer'+question.answers[0].id" :value="question.answers[0].text" @change="updateAnswer(question.answers[0].id, question.answers[0], $event.target.value)"></td>
              <td v-if="typeof question.answers[1] != 'undefined'"><input type="text" :id="'answer'+question.answers[1].id" :value="question.answers[1].text" @change="updateAnswer(question.answers[1].id, question.answers[1], $event.target.value)"></td>
              <td v-if="typeof question.answers[2] != 'undefined'"><input type="text" :id="'answer'+question.answers[2].id" :value="question.answers[2].text" @change="updateAnswer(question.answers[2].id, question.answers[2], $event.target.value)"></td>
              <td v-if="typeof question.answers[3] != 'undefined'"><input type="text" :id="'answer'+question.answers[3].id" :value="question.answers[3].text" @change="updateAnswer(question.answers[3].id, question.answers[3], $event.target.value)"></td>
              <td><button class="btn btn-primary" v-on:click="deleteQuestion(question.id)">EXCLUIR</button></td>
            </tr>
          </table>
      </div>
    </div>
  </div>
</template>

<script>
const axios = require('axios');
export default {
  name: 'Admin',
  methods: {
    getAllQuestions: function() {
      axios.get(this.$parent.API_URL + 'api/questions')
      .then(res => {
        let temp_questions = res.data;
        let number_of = 0;
        for (let question of temp_questions) {
          axios.get(`${this.$parent.API_URL}api/answers/${question.id}`)
          .then(res => {
            question.answers = res.data;
            number_of++;
            if (number_of >= temp_questions.length) {
              this.questions_json = temp_questions;
            }
          })
        }
      })
    },
    updateQuestion: function(id, question) {
      let new_question = document.getElementById(`question${id}`).value;
      question.text = new_question;
      console.log(new_question);
      axios.put(`${this.$parent.API_URL}api/questions/${id}`, {text: new_question});

    },
    updateAnswer: function(id, answer, new_answer) {
      answer.text = new_answer;
      axios.put(`${this.$parent.API_URL}api/answers/${id}`, {text: new_answer});
    },
    addQuestion: function() {
      alert('Inserindo. Aperte OK e aguarde.')
      let text = document.getElementById('question').value;
      let answers = [];
      for (let i = 1; i <= 4; i++) {
        answers.push(document.getElementById(`answer${i}`).value);
      }
      console.log(answers);
      axios.post(this.$parent.API_URL + 'api/questions/', {text: text})
      .then((res) => {
        let id = res.data.id;
        let number_of = 0;
        answers.forEach(answer => {
          axios.post(this.$parent.API_URL + 'api/answers', {text: answer, question_id: id})
          .then(() => {
            number_of++;
            if (number_of >= 4) {
              this.getAllQuestions();
            }
          })
        })
      })
    },
    deleteQuestion: function(id) {
      alert("Removendo. Aperte OK e aguarde.")
      axios.delete(`${this.$parent.API_URL}api/questions/${id}`)
      .then(() => {
        this.getAllQuestions();
      })
    }
  },
  data() {
    return {
      questions_json: '',
    }
  },
  created() {
    this.getAllQuestions();
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.container {
  margin-top: 5%;
}
</style>
