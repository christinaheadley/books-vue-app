<template>
  <div class="books-index">
    <h1>{{ books }}</h1>
  </div>
</template>

<style></style>

<script>
import axios from "axios";
export default {
  data: function() {
    return {
      books: [],
    };
  },
  created: function() {
    axios.get("/api/books").then(response => {
      this.books = response.data;
    });
  },
  methods: {},
};
</script>
