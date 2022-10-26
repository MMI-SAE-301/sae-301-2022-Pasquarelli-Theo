<template>
    <button class="bg-white font-athena border-2 text-black rounded-xs hover:bg-black hover:text-white p-2">{{libelle}}</button>
</template>

<script>
export default {
  props: {
    libelle: String,
  },
  components: {},
};
</script>