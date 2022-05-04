<template>
  <div class="grid h-full w-full place-items-center bg-gray-100">
    <div class="px-3">
      <h1 class="mb-8 text-center font-mono text-5xl uppercase">
        Stand'UPS Robotique
      </h1>

      <div class="flex flex-col gap-3">
        <a
          v-for="social in socials"
          :href="social.url"
          target="_blank"
          class="flex items-center gap-3 rounded-md bg-white p-6 shadow-md"
        >
          <img :src="icon(social.icon)" class="w-6" />
          <p>{{ social.name }}</p>
        </a>
      </div>
    </div>
  </div>

  <Footer></Footer>
</template>

<script setup lang="ts">
import Footer from "@/components/footer.vue";
import socials from "@/data/socials.json";

const icon = (brand: string) =>
  `https://unpkg.com/simple-icons@6.20.0/icons/${brand}.svg`;
</script>

<style>
html,
body,
#app {
  @apply m-0 h-full;
}
</style>
