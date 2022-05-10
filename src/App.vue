<template>
  <div class="custom-grid">
    <div class="content p-6 lg:p-24">
      <div>
        <h1 class="my-6 font-mono text-2xl lg:mt-40 lg:mb-12 lg:text-5xl">
          {{ title }} Stand’<span class="text-primary">UPS</span> Robotics
        </h1>
        <p class="desc lg:w-10/12">{{ desc }}</p>
      </div>

      <div class="flex items-center gap-6 lg:gap-10">
        <Social v-for="s in socials" :brand="s.icon" :url="s.url" />
      </div>
    </div>
    <div class="custom-bg"></div>
  </div>
</template>

<script setup lang="ts">
import { title, desc } from "@/assets/text/fr.json";

import socials from "@/data/socials.json";
import Social from "@/components/social.vue";
</script>

<style>
html,
body,
#app {
  @apply m-0 h-full overflow-hidden;
}

.custom-grid {
  @apply flex h-full w-full flex-col-reverse lg:flex-row;
}

.content {
  @apply grid h-full lg:w-7/12;
  grid-template-rows: 1fr auto;
}

.desc {
  @apply text-base opacity-60 lg:text-xl;
  line-height: 2;
}

.custom-bg {
  @apply h-1/2 w-full bg-fixed lg:h-full lg:w-5/12;
  background-image: url("@/assets/robot.jpg");
  background-size: cover;

  background-position: 800px top;
}
</style>
