<script setup lang="ts">
import Montreprofil from "@/components/Montreprofil.vue";
import Montreface from "@/components/Montreface.vue";
</script>

<template>
  <section>
    <div class="grid grid-flow-row-dense grid-cols-2">
      <img src="/public/montre_ombre.svg" class="w-421" />
      <div>
        <h2 class="text-2xl">Tik-Tak</h2>
        <p class="font-okine text-sm">
          La marque de montre personnalisable pensée pour vous et fabriquée pour
          vous. Personnalisées différentes parties de votre montre pour avoir la
          combinaison qui vous correspond le mieux.
        </p>
      </div>
    </div>
    <h2 class="text-2xl">Personnalisé différents composants de votre montre Tik-Tak</h2>
    <p class="text-xl">Fermoire</p>
    <img src="/public/montre_decompo.svg" class="w-3/6" />
    <p class="text-xl">Bracelet</p>
    <p class="text-xl">Écran</p>
    <p class="text-xl">Cadrant</p>
    <div class="grid grid-flow-row-dense grid-cols-2">
      <img src="/public/exmontres.png" class="h-5/6" />
      <div>
        <h2 class="text-2xl">L’histoire de Tik-Tak</h2>
        <p class="font-okine text-sm">
          Tik-Tak est une marque française de montre personnalisable conçue par
          un groupe de passionnés pour que vous puissiez créer votre montre
          idéale. Avec de nombreuses couleurs disponibles pour plusieurs
          composants, vous avez à disposition un grand nombre de composition
          possible pour élaborer VOTRE montre parfaite.
        </p>
      </div>
    </div>
  </section>
</template>
