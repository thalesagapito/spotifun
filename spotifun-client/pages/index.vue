<template>
  <div class="container">
    <h1 class="title">
      Home
    </h1>
    <button>
      <a :href="spotifyLoginUrl">
        Click here to login
      </a>
    </button>
  </div>
</template>

<script>
export default {
  computed: {
    spotifyLoginUrl() {
      return "https://accounts.spotify.com/authorize?client_id=015ad50b6e3c4ca9b6a4cdfa862aa24b&redirect_uri=http://localhost:4001/callback&scope=user-read-private%20user-read-email&response_type=token&state=123";
    },
  },
  mounted() {
    this.$axios.get("/abcdef");
  },
};
</script>

<style></style>
