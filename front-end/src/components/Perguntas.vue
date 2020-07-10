<template>
  <div class="container">
    <div class="outer-box">
      <div class="content">
        <div v-if="completed">
          <h1><a class="btn btn-primary"><i class="icon icon-check"></i></a> Tudo pronto. Obrigado pela sua participação!</h1>
        </div>
        <div v-if="!completed">
        <h2 style="text-align: center">Olá! A Bem Promotora está realizando uma pesquisa. Sua participação é <strong>anônima</strong> e é muito importante para nós!</h2>
        <hr>
        <h3 align=center v-if="questions_json == ''">Carregando...</h3>

        <div v-for="question in questions_json" :key="question.id">
          <h4>{{ question.text }}?</h4>
          <select class="form-select" :id="'question_'+question.id">
            <option v-for="answer in question.answers" :key="answer.id" :value="answer.id">{{ answer.text }}</option>
          </select>
          <br>
          <br>
        </div>
        <button v-on:click="sendEntry()" style="width: 100%" class="btn btn-primary">ENVIAR RESPOSTAS</button>
      </div></div>
      </div>
  </div>
</template>

<script>
const axios = require('axios');
export default {
  name: 'Login',
  methods: {
    sendEntry: function() {
      let selects = document.getElementsByTagName('select');
      for (let select of selects) {
        let question_id = select.id.split('_')[1];
        let answer_id = select.options[select.selectedIndex].value;
        axios.post(this.$parent.API_URL + 'api/result', {question_id: question_id, answer_id: answer_id})
        this.completed = true;
      }
    },
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
  },
  data() {
    return {
      questions_json: '',
      completed: false
    }
  },
  created() {
    this.getAllQuestions();
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
button {
  width: 100%;
}
.content {
  margin-top: 5%;
}
</style>
