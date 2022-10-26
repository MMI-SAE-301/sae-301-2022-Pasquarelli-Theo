<script setup>
import { createClient } from "@supabase/supabase-js";
import { SupabaseAuthClient } from "@supabase/supabase-js/dist/module/lib/SupabaseAuthClient";
</script>

<template>
  <header>


    <h1>{{ msg }}</h1>
    <p>Please login if you have an account or register :</p>
    <button @click="logingoogle()">Authentification avec Google</button><br />
    <button @click="loginfacebook()">Authentification avec Facebook</button><br />
    <button @click="logout()">Deconnexion</button><br />
    <label id="status"></label>
    
  </header>
</template>

<script>
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
</script>