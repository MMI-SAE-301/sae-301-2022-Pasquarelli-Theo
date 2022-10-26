<template>
  <header class="bg-black grid grid-flow-dense grid-cols-2">
      <RouterLink to="/"><h1 class="text-3xl span-2 font-aboreto text-center text-white">Tik-Tak</h1></RouterLink>
      <div  class="span-3 flex">
      <RouterLink to="/Log"><img src="../public/icon_user.png"/></RouterLink>
      <RouterLink to="/montre/new"><img src="../public/icon_liste.png " class="span-3"/></RouterLink></div>
        </header>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
  <footer class="bg-blue">
    <div class="flex place-content-center">
    <a href="https://twitter.com/home"><img src="../public/twitter.png" class="h-10 w-auto mt-4 mb-3 mr-14"/></a>
    <a href="https://mmi-montbeliard.nathanvanbignootvincler.fr/"><img src="../public/logo-mmi.png" class="h-11 w-auto mt-3 mb-3 mr-14"/></a>
    <a href="https://www.instagram.com/?hl=fr"><img src="../public/insta.png" class="h-11 w-auto mt-3 mb-3"/></a>
    </div>
    <p class="text-xxs font-okine text-white text-center">
      Exercice réalisé dans le cadre d'un exercice pédagogique au département
      MMI de Montbéliard
    </p>
  </footer>
</template>

<script setup lang="ts"></script>
