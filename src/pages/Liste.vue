<script setup lang="ts">
import { supabase } from "@/supabase";
import Montreprofil from "@/components/Montreprofil.vue";

let user = supabase.auth.user();

const { data: montres, error } = await supabase.from("montre").select("*");
if (error) {
  console.log("n'a pas pu récupérer les montres", { error });
}
</script>

<template>
  <ul class="flex flex-wrap gap-10">
    <h1>spofvhenzc</h1>
    <li v-for="montre in montres" :key="montre.id">
      <router-link :to="`/montre/edit/${montre.id_montre}`">
        <Montreprofil class="w-36 md:w-64" v-bind="montre" />
      </router-link>
    </li>
  </ul>
</template>
