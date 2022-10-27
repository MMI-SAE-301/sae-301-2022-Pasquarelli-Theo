<script setup lang="ts">
// import { createClient } from "@supabase/supabase-js";
// import { SupabaseAuthClient } from "@supabase/supabase-js/dist/module/lib/SupabaseAuthClient";
import bouton from "@/components/bouton.vue";
import {supabase, user} from '../supabase'

</script>

<template class="">
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

<!-- <script>
const SUPABASE_URL = "https://vflbstvxrtkxbbdrbewe.supabase.co";
const SUPABASE_KEY =
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZmbGJzdHZ4cnRreGJiZHJiZXdlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjY3NjcxODAsImV4cCI6MTk4MjM0MzE4MH0.3g0-xEZ72u_aE7dUYA6t9XGagYHUYrWMh6q49dQ-KDk";
const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

supabase.auth.onAuthStateChange((event, session) => {
  if (session == null) {
    document.getElementById("status").innerHTML = "You are not logged !!!";
  } else {
    // alert('session value: ' + JSON.stringify(session))
    document.getElementById("status").innerHTML =
      "You are logged with the email: " + session.user.email;
  }
});

export default {
  methods: {
    // this method allows to release the connexion with the Google account
    async register() {
      try {
        const { user, session, error } = await supabase.auth.signUp({
          email: this.email,
          password: this.passwd,
        });
        if (error) throw error;
        document.getElementById("status").innerHTML =
          "Please validate the received email !";
      } catch (error) {
        alert(error.error_description || error.message);
      }
    },
    async logout() {
      try {
        const { user, session, error } = await supabase.auth.signOut();
        if (error) throw error;
        document.getElementById("status").innerHTML = "You are disconnected !";
      } catch (error) {
        alert(error.error_description || error.message);
      }
    },
    // this method allows to log in the system using Google provider
    async logingoogle() {
      try {
        const { user, session, error } = await supabase.auth.signIn({
          provider: "google",
        });
        if (error) throw error;
      } catch (error) {
        alert(error.error_description || error.message);
      }
    },

    async loginfacebook() {
      try {
        const { user, session, error } = await supabase.auth.signIn({
          provider: "facebook",
        });
        if (error) throw error;
      } catch (error) {
        alert(error.error_description || error.message);
      }
    },
  },

  mounted() {
    supabase.auth.onAuthStateChange(async (event, session) => {
      if (event == "PASSWORD_RECOVERY") {
        const newPassword = prompt(
          "What would you like your new password to be?"
        );
        const { data, error } = await supabase.auth.update({
          password: newPassword,
        });
        if (data) alert("Password updated successfully!");
        if (error) alert("There was an error updating your password.");
      }
    });
  },
};
</script> -->