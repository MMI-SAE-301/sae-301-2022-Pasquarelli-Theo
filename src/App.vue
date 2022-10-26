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
    <p>
      Exercice réalisé dans le cadre d'un exercice pédagogique au département
      MMI de Montbéliard
    </p>
  </footer>
</template>

<script setup lang="ts"></script>
