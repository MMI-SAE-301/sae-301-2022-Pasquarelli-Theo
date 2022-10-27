<script setup lang="ts">
import bouton from "@/components/bouton.vue";
import {supabase, user} from '../supabase'

</script>

<template class="dark:bg-slate-700 dark:text-light_grey">
  <div class="ml-56 border-0 w-2/3">
<div class="bg-light_grey">
    <h2 class=" ml-28 w-1/2 font-aboreto text-xl">Compte</h2>
      <hr class="ml-32 mt-4 mb-8 h-0.5 w-32 bg-black" />

    <div class="text-center">
    <bouton libelle="Authentification avec Google" class="border-2 mb-3 mt-28 rounded-sm w-96 h-14" @pointerdown="supabase.auth.signIn({ provider: 'google'})" /><br />
    <bouton libelle="Authentification avec Facebook" class="border-2 m-3 rounded-sm w-96 h-14" @pointerdown="supabase.auth.signIn({ provider: 'facebook'})"  /><br />
    <bouton libelle="Deconnexion" class="border-2 mt-3 mb-28 rounded-sm w-96 h-14" @pointerdown="supabase.auth.signOut()" /><br />
    <label id="status"></label>
    </div>
    
  </div>
  </div>

</template>
