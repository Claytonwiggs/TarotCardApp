<template>
  <div class="user">
    <div>
      <h1>User</h1>
      <img v-bind:src="cards[1].image_url" width="100px" alt="card.name" />
      <h1>Telulah</h1>
      <h1>Last Weeks Cards</h1>
      <div>
        <img v-bind:src="cards[1].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[36].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[22].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[5].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[62].image_url" width="100px" alt="card.name" />
      </div>
      <h1>Friends</h1>
      <h1>Tabitha</h1>
      <div>
        <img v-bind:src="cards[8].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[12].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[20].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[6].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[22].image_url" width="100px" alt="card.name" />
      </div>
      <h1>Theresa</h1>
      <div>
        <img v-bind:src="cards[1].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[37].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[16].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[42].image_url" width="100px" alt="card.name" />
        <img v-bind:src="cards[45].image_url" width="100px" alt="card.name" />
      </div>
    </div>
  </div>
</template>

<style></style>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      message: "Cards",
      cards: [],
      currentCard: {},
    };
  },
  created: function () {
    this.indexCards();
  },
  methods: {
    indexCards: function () {
      axios.get("http://localhost:3000/cards").then((response) => {
        this.cards = response.data;
        console.log("indexing cards", this.cards);
      });
    },
    showCard: function (card) {
      console.log("hello", card);
      this.currentCard = card;
      document.querySelector("#card-details").showModal();
    },
  },
};
</script>
