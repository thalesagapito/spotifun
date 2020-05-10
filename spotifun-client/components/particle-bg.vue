<template>
  <div id="particles-js" />
</template>

<script>
export default {
  name: "ParticlesJS",
  mounted() {
    require("particles.js");
    this.$nextTick(this.initParticlesJS);
  },
  methods: {
    initParticlesJS() {
      /* eslint-disable */
      particlesJS('particles-js', {
  "particles": {
    "number": {
      "value": 160,
      "density": {
        "enable": true,
        "value_area": 800
      }
    },
    "color": {
      "value": "#e8198b"
    },
    "shape": {
      "type": "circle",
      "stroke": {
        "width": 0,
        "color": "#000000"
      },
      "polygon": {
        "nb_sides": 5
      },
      "image": {
        "src": "img/github.svg",
        "width": 100,
        "height": 100
      }
    },
    "opacity": {
      "value": 1,
      "random": true,
      "anim": {
        "enable": true,
        "speed": 1,
        "opacity_min": 0,
        "sync": false
      }
    },
    "size": {
      "value": 3,
      "random": true,
      "anim": {
        "enable": false,
        "speed": 4,
        "size_min": 0.3,
        "sync": false
      }
    },
    "line_linked": {
      "enable": false,
      "distance": 150,
      "color": "#ffffff",
      "opacity": 0.4,
      "width": 1
    },
    "move": {
      "enable": true,
      "speed": 1,
      "direction": "none",
      "random": true,
      "straight": false,
      "out_mode": "out",
      "bounce": false,
      "attract": {
        "enable": false,
        "rotateX": 600,
        "rotateY": 600
      }
    }
  },
  "interactivity": {},
  "retina_detect": true
})
    }
  }
}
</script>

<style lang="postcss" scoped>
#particles-js {
  @apply fixed top-0 left-0 w-screen h-screen;
  background-image: linear-gradient(-30deg, #ff738a 30%, #ffb78a 100%);
  z-index: 0;
}
</style>
