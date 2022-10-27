<template>
  <button
    class="rounded-xs border-2 bg-white p-2 font-athena text-black hover:bg-black hover:text-white"
  >
    {{ libelle }}
  </button>
</template>

<script setup lang="ts">
defineProps({
  libelle: String,
});
</script>
