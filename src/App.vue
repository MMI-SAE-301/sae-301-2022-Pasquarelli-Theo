<template>
  <header class="bg-black flex justify-between items-center ">
    <div class=" w-2 bg-black h-2"></div>
      <RouterLink to="/"><h1 class="text-3xl  font-aboreto text-center text-white">Tik-Tak</h1></RouterLink>
      <div  class="flex items-end mx-6">
      <RouterLink to="/Log"><img src="../src/assets/icon_user.png" alt="icon utilisateur"/></RouterLink>
      <RouterLink to="/Liste"><img src="../src/assets/icon_liste.png " alt="icon liste" class="mx-8"/></RouterLink>
    </div>
  </header>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2  p-2" />
  </Suspense>
  <footer class="bg-blue">
    <div class="flex place-content-center">
    <a href="https://twitter.com/home"><img src="../src/assets/twitter.png" class="h-10 w-auto mt-4 mb-3 mr-14" alt="logo Twitter"/></a>
    <a href="https://mmi-montbeliard.nathanvanbignootvincler.fr/"><img src="../src/assets/logo-mmi.png" class="h-11 w-auto mt-3 mb-3 mr-14" alt="logo du departement MMi Montbéliard"/></a>
    <a href="https://www.instagram.com/?hl=fr"><img src="../src/assets/insta.png" class="h-11 w-auto mt-3 mb-3" alt="logo Instagram"/></a>
    </div>
    <p class="text-xxs font-okine text-white text-center">
      Exercice réalisé dans le cadre d'un exercice pédagogique au département
      MMI de Montbéliard
    </p>
  </footer>
</template>

<script setup lang="ts"></script>
