<template>
  <div class="inner">
    <div>
      <div class="box alt">
        <div class="row gtr-50 gtr-uniform">
          <div class="col-4" v-for="card in cards" v-bind:key="card.id">
            <img v-bind:src="card.image_url" width="300px" alt="card.name" />
            <h1>{{ card.name }}</h1>
            <button v-on:click="showCard(card)">More</button>
          </div>
        </div>
      </div>
    </div>

    <dialog id="card-details">
      <form method="dialog">
        <p>{{ currentCard.definition }}</p>
        <button>Close</button>
      </form>
    </dialog>
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
