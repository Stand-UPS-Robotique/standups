<template>
  <a :href="url" target="_blank" class="social" :style="colorStyle">
    <svg class="h-6 w-6">
      <path :d="svg"></path>
    </svg>
    <p>{{ name }}</p>
  </a>
</template>

<script lang="ts" setup>
import simpleIcons from "simple-icons";

const props = defineProps<{ url: string; brand: string }>();
const { path: svg, title: name, hex } = simpleIcons.Get(props.brand);
const colorStyle = `--color: #${hex}`;
</script>

<style scoped>
.social {
  @apply flex items-center gap-3 rounded-md bg-white p-6 shadow-md transition-all;
}

.social:hover {
  @apply shadow-lg;
  fill: var(--color);
  color: var(--color);
}
</style>
