<template>
  <div class="flex flex-col items-center gap-5 text-center">
    <VueFeather type="box" size="128" />
    <h1 class="font-mono text-5xl font-bold uppercase">Vue Template</h1>
    <p>The start of a new project !</p>

    <hr class="border-1 w-full border-gray-300" />

    <div class="flex flex-col gap-2">
      <p>
        Current configuration: <b>Vite</b> + <b>Vue3</b> + <b>Typescript</b>
      </p>
      <p>
        Additionnal plugins: <b>Tailwind-CSS</b> + <b>Feather-Icons</b> +
        <b>Pinia</b>
      </p>
    </div>
  </div>
</template>

<script setup lang="ts"></script>

<style>
html,
body,
#app {
  @apply m-0 h-full;
}

#app {
  @apply grid place-items-center;
}

b {
  @apply font-mono text-blue-500;
}
</style>
