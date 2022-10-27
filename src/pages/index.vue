<script setup lang="ts">
import Montreprofil from "@/components/Montreprofil.vue";
import Montreface from "@/components/Montreface.vue";
import bouton from "@/components/bouton.vue";
</script>

<template>
  <div class="grid grid-flow-row-dense grid-cols-2">
    <img src="../assets/montre_ombre.svg" class="ml-64 mt-10 w-2/4" alt="photo de la montre personnalisable Tik-Tak"/>
    <div class="mt-24 ml-24">
      <img src="../assets/CoinH.png" class="-ml-12" />
      <h2 class="font-aboreto text-xl">Tik-Tak</h2>
      <p class="w-3/4 font-okine text-base">
        La marque de montre personnalisable pensée pour vous et fabriquée pour
        vous. Personnalisées différentes parties de votre montre pour avoir la
        combinaison qui vous correspond le mieux.
      </p>
      <img src="../assets/CoinB.png" class="ml-96" />
      <RouterLink to="/montre/new"><bouton libelle="Personnalisation" /></RouterLink>
    </div>
  </div>
  <hr class="h-0.5 w-full bg-black" />

  <h2 class="mt-16 ml-28 w-1/2 font-aboreto text-xl">
    Personnalisé différents composants de votre montre Tik-Tak
  </h2>
  <hr class="ml-36 mt-4 mb-8 h-0.5 w-96 bg-black" />
  <img src="../assets/montre_decompo.png" class="mx-auto mb-16 block w-3/5" alt="image de la montre Tik-Tak décomposé en différent composants"/>
  <hr class="h-0.5 w-full bg-black" />

  <div class="grid grid-flow-row-dense grid-cols-2 ">
    <img src="../assets/exmontres.png" class="m-16 h-3/5" alt="exemple de 3 montres différentes"/>
    <div class="mt-24 ml-12">
      <img src="../assets/CoinH.png" class="-ml-12" />

      <h2 class="font-aboreto text-xl">L’histoire de Tik-Tak</h2>
      <hr class="my-1 h-0.5 w-40 bg-black" />
      <p class="w-5/6 font-okine text-sm">
        Tik-Tak est une marque française de montre personnalisable conçue par un
        groupe de passionnés pour que vous puissiez créer votre montre idéale.
        Avec de nombreuses couleurs disponibles pour plusieurs composants, vous
        avez à disposition un grand nombre de composition possible pour élaborer
        VOTRE montre parfaite.
      </p>
      <img src="../assets/CoinB.png" class="ml-96" />
    </div>
  </div>
</template>
