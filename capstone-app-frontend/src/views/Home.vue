<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <div>
      <button v-on:click="showCard()">Show fortune</button>
    </div>
    <br> </br>
    <img class=".card-image" v-bind:src="card.image_url" v-bind:alt="card.name" />
    <br> </br>
    <h1>{{ card.definition }}</h1>
  </div>
</template>

<style></style>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      message: "Welcome to Tarot",
      cards: [],
      card: [],
    };
  },
  created: function () {},
  methods: {
    showCard: function () {
      console.log("Showing a Card");
      axios.get("http://localhost:3000/cards/random").then((response) => {
        this.card = response.data;
        console.log("showing card", this.card);
      });
      //this.card = "https://upload.wikimedia.org/wikipedia/en/9/90/RWS_Tarot_00_Fool.jpg";
    },
  },
};
</script>
