<template>
  <div>
    <particle-bg />
    <div id="content-wrapper">
      <nuxt />
    </div>
  </div>
</template>

<script>
import ParticleBg from "~/components/particle-bg";
export default {
  components: {
    ParticleBg,
  },
};
</script>

<style lang="postcss" scoped>
#content-wrapper {
  @apply relative;
}
</style>
