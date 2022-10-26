<template>
  <header class="bg-black">
    <nav>
      <RouterLink to="/"><h1 class="text-3xl font-aboreto text-center text-white">Tik-Tak</h1></RouterLink>
      <!--<ul>
        <li>
          <router-link class="text-red-600 underline" to="/">
            <code class="font-mono">/src/pages/index.vue</code>
          </router-link>
        </li>
        <br />
        <router-link class="text-red-600 underline" to="/montre">
          lien vers
          <code class="font-mono">Liste des montres</code>
        </router-link>
        <br />
        <router-link class="text-red-600 underline" to="/montre/new">
          lien vers
          <code class="font-mono">New</code>
        </router-link>
        <br />
        <router-link class="text-red-600 underline" to="/Log">
          lien vers
          <code class="font-mono">Log</code>
        </router-link>
        <br />
      </ul>-->
    </nav>
  </header>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
  <footer class="bg-blue">
    <div class="flex place-content-center">
    <a href="https://twitter.com/home"><img src="public/twitter.png" class="h-10 w-auto mt-4 mb-3 mr-14"/></a>
    <a href="https://mmi-montbeliard.nathanvanbignootvincler.fr/"><img src="public/logo-mmi.png" class="h-11 w-auto mt-3 mb-3 mr-14"/></a>
    <a href="https://www.instagram.com/?hl=fr"><img src="public/insta.png" class="h-11 w-auto mt-3 mb-3"/></a>
    </div>
    <p class="text-xxs font-okine text-white text-center">
      Exercice réalisé dans le cadre d'un exercice pédagogique au département
      MMI de Montbéliard
    </p>
  </footer>
</template>

<script setup lang="ts"></script>
