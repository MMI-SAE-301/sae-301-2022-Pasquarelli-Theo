<script setup lang="ts">
import Montreprofil from "@/components/Montreprofil.vue";
import Montreface from "@/components/Montreface.vue";
import bouton from "@/components/bouton.vue";
</script>

<template>
  <div class="grid grid-flow-row-dense grid-cols-2">
    <img src="/public/montre_ombre.svg" class="w-421" />
    <div>
      <h2 class="font-aboreto text-2xl">Tik-Tak</h2>
      <p class="font-okine text-sm">
        La marque de montre personnalisable pensée pour vous et fabriquée pour
        vous. Personnalisées différentes parties de votre montre pour avoir la
        combinaison qui vous correspond le mieux.
      </p>
      <RouterLink to="/montre/new"><bouton/></RouterLink>
    </div>
  </div>
  <hr class="h-0.5 w-full bg-black" />
  

  <h2 class="font-aboreto text-2xl">
    Personnalisé différents composants de votre montre Tik-Tak
  </h2>
  <hr class="my-1 h-0.5 w-40 bg-black" />
  <p class="font-aboreto text-xl">Fermoire</p>
  <img src="/public/montre_decompo.svg" class="w-3/6" />
  <p class="font-aboreto text-xl">Bracelet</p>
  <p class="font-aboreto text-xl">Écran</p>
  <p class="font-aboreto text-xl">Cadrant</p>
  <hr class="h-0.5 w-full bg-black" />
  <div class="grid grid-flow-row-dense grid-cols-2">
    <img src="/public/exmontres.png" class="h-5/6" />
    <div>
      <h2 class="font-aboreto text-2xl">L’histoire de Tik-Tak</h2>
      <hr class="my-1 h-0.5 w-40 bg-black" />

      <p class="font-okine text-sm">
        Tik-Tak est une marque française de montre personnalisable conçue par un
        groupe de passionnés pour que vous puissiez créer votre montre idéale.
        Avec de nombreuses couleurs disponibles pour plusieurs composants, vous
        avez à disposition un grand nombre de composition possible pour élaborer
        VOTRE montre parfaite.
      </p>
    </div>
  </div>
</template>
