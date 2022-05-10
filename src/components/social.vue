<template>
  <a
    :href="url"
    target="_blank"
    class="social"
    :style="colorStyle"
    v-html="svg"
  >
  </a>
</template>

<script lang="ts" setup>
import simpleIcons from "simple-icons";

const props = defineProps<{ url: string; brand: string }>();
const { svg, hex } = simpleIcons.Get(props.brand);
const colorStyle = `--color: #${hex}`;
</script>

<style scoped>
.social {
  @apply grid aspect-square w-6 place-content-center opacity-60 transition-all lg:w-10;
}

.social:hover {
  @apply opacity-100;
  fill: var(--color);
  color: var(--color);
}
</style>
