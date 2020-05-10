<template>
  <div class="home-wrapper">
    <h1 class="title">
      Spotifun
    </h1>
    <h2 class="subtitle">
      Teste sua compatibilidades musical com seus amigos, escrever um texto maior aqui pra não ficar tão feio
    </h2>
    <div id="code-input-wrapper">
      <input id="friend-code-input" type="text" placeholder="CÓDIGO DO SEU AMIGO" />
      <button type="submit">IR</button>
    </div>
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

<style lang="postcss">
.home-wrapper {
  @apply flex flex-col items-center justify-center p-4 min-h-screen;
}
.title {
  @apply text-white text-6xl font-extrabold capitalize;
}
.subtitle {
  @apply text-blue-900 my-3 text-lg font-medium max-w-sm text-center;
}

#code-input-wrapper {
  @apply flex w-full max-w-sm my-6;
}
#code-input-wrapper input,
#code-input-wrapper button {
  @apply text-white text-center text-xl uppercase px-3
  bg-transparent border-white border-opacity-50 border-2
  transition-all duration-200 ease-in-out;
}
#code-input-wrapper input {
  @apply h-16 flex-1 rounded-l-full;
  &:focus {
    @apply outline-none border-white border-opacity-100;
  }
  &::placeholder {
    @apply text-white text-opacity-50 text-center;
  }
}
#code-input-wrapper button {
  @apply h-16 border-l-0 rounded-r-full pl-4 pr-5;
  &:hover {
    @apply opacity-100 bg-white text-gray-800;
  }
}
</style>
