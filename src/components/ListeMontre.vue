<script setup lang="ts">
import { supabase } from "@/supabase";
import Montreprofil from "./Montreprofil.vue";
const props = defineProps<{
  max?: number;
}>();
let { data: Montre, error } = await supabase
  .from("montre")
  .select("*")
  .limit(props.max ?? 100);
if (error) {
  console.log("n'a pas pu récupérer les montres", { error });
}
</script>

<template class="dark:bg-slate-700 dark:text-light_grey">
  <ul>
    <li v-for="montreperso in Montre" :key="montreperso.id_montreperso">
      <router-link
        :to="{ name: 'montreperso-edit-id', params: { id: montreperso.id_montreco } }"
      >
        <Montreprofil class="w-64" v-bind="montreperso" />
      </router-link>
    </li>
  </ul>
</template>
