<template>
  <div class="container">
    <div class="outer-box">
      <div class="content">
        <h2 style="text-align: center">Resultado da pesquisa</h2>
        <br>
        <h3>Total de respostas: {{ this.result_json.entry_total }}</h3>
        <br>
        <h4>(Respostas no gráfico em %)</h4>
        <hr>

        <div v-for="result of result_json" :key="result.id">

            <h3 style="text-align: center">{{ result.question_text }}</h3>
            <pie-chart :chartdata="result.chartdata"></pie-chart>
            <hr>
        </div>
        
        <hr>
      </div>
    </div>
  </div>
</template>

<script>
import PieChart from './Chart';
const axios = require('axios');
export default {
  name: 'Resultado',
  components: { PieChart
   },
  methods: {
    getResults: function() {
        axios.get(this.$parent.API_URL + 'api/result')
        .then(res => {
            let temp_array = res.data;
            for (let i = 0; i < temp_array.question_count; i++) {
              temp_array[i].chartdata = {
                labels: [],
                datasets: [
                  {
                    label: temp_array[i].question_text,
                    backgroundColor: [],
                    data: []
                  }
                ]
              }
              for (let answer of temp_array[i].answers) {
                temp_array[i].chartdata.labels.push(answer.text);
                temp_array[i].chartdata.datasets[0].data.push(answer.percentage);
                temp_array[i].chartdata.datasets[0].backgroundColor.push('#' + Math.floor(Math.random()*16777215).toString(16));
              }
            }
            this.result_json = temp_array;
        });
    }
  },
  data() {
    return {
      result_json: '',
    }
  },
  created() {
    this.getResults();

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
