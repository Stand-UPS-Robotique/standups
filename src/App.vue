<template>
  <div class="custom-bg grid h-full w-full place-items-center">
    <div class="px-3">
      <h1
        class="mb-8 text-center font-mono text-5xl uppercase backdrop-contrast-100"
      >
        Stand'UPS Robotique
      </h1>

      <div class="flex flex-col gap-3">
        <Social v-for="s in socials" :brand="s.icon" :url="s.url" />
      </div>
    </div>
  </div>

  <Footer></Footer>
</template>

<script setup lang="ts">
import Footer from "@/components/footer.vue";
import socials from "@/data/socials.json";
import Social from "./components/social.vue";
</script>

<style>
html,
body,
#app {
  @apply m-0 h-full;
}

.custom-bg {
  @apply relative bg-white bg-opacity-70;
}

.custom-bg::before {
  @apply absolute inset-0 -z-10;
  content: "";
  background-image: url("@/assets/background.jpg");
  background-size: cover;
}
</style>
