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
      <h2 class="mt-16 ml-28 w-1/2 font-aboreto text-xl">
Vos montres  </h2>
  <hr class="ml-32 mt-4 mb-8 h-0.5 w-64 bg-black" />
  <ul class="flex flex-wrap gap-10 ml-5">
    
    <li v-for="montre in montres" :key="montre.id">
      <router-link :to="`/montre/edit/${montre.id_montre}`">
        <Montreprofil class="w-36 md:w-64" v-bind="montre" />
      </router-link>
    </li>
  </ul>
</template>
