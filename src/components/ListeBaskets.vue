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

<template>
  <ul>
    <li v-for="montre in Montre" :key="montre.montre">
      <router-link
        :to="{ name: 'montre-edit-id', params: { id: montre.id_montre } }"
      >
        <Montreprofil class="w-64" v-bind="montre" />
      </router-link>
    </li>
  </ul>
</template>
