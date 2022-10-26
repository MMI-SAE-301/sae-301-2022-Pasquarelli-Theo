<script setup lang="ts">
import type { Montre } from "@/types";
import { supabase } from "@/supabase";
import { colors } from "@/types";
import { materiaux } from "@/types";
import { ref } from "vue";
import { useRouter } from "vue-router";
import Montreprofil from "./Montreprofil.vue";
import Montreface from "./Montreface.vue";
// import FormKitListColors from "./FormKitListColors.vue";

const router = useRouter();
const montre = ref({});
const props = defineProps(["id"]);
if (props.id) {
  // On charge les données de la maison
  let { data, error } = await supabase
    .from("montre")
    .select("*")
    .eq("montre", props.id);
  if (error || !data)
    console.log("n'a pas pu charger le table Montre :", error);
  else montre.value = data[0];
}

async function upsertMontre(dataForm, node) {
  const { data, error } = await supabase.from("montre").upsert(dataForm);
  if (error) node.setErrors([error.message]);
  else {
    node.setErrors([]);
    router.push({ name: "montre-edit-id", params: { id: data[0].id } });
  }
}

const montre = ref<Montre>(props.data ?? {});
</script>

<template>
  <div>
    <div class="flex content-center p-4">
      <div class="flex content-center">
        <ul class="flex gap-5">
          <li><a href="#profil">Profil</a></li>
          <li><a href="#dessus">Dessus</a></li>
        </ul>
        <div class="carousel w-60">
          <Montreprofil
            class="carousel-item w-60"
            v-bind="montre"
            id="profil"
          />
          <Montreface
            class="carousel-item w-60"
            v-bind="montre"
            id="dessus"
          />
        </div>
      </div>
      <div>
        <FormKit type="form" v-model="montre" @submit="upsertMontre">
          <FormKit
            name="ecran"
            label="ecran"
            value="#FFFFFF"
            type="radio"
            :options="colors"
            :sections-schema="{
              inner: { $el: null },
              decorator: { $el: null },
            }"
            input-class="peer sr-only"
            options-class="flex gap-1"
          >
            <template #label="context">
              <div
                class="h-6 w-6 rounded-full border-2 peer-checked:border-red-600"
                :style="{ backgroundColor: context.option.value }"
              ></div>
              <span class="sr-only">{{ context.option.label }}</span></template
            >
          </FormKit> 
          <FormKit
            name="cadrant"
            label="cadrant"
            value="#FFFFFF"
            type="radio"
            :options="colors"
            :sections-schema="{
              inner: { $el: null },
              decorator: { $el: null },
            }"
            input-class="peer sr-only"
            options-class="flex gap-1"
          >
            <template #label="context">
              <div
                class="h-6 w-6 rounded-full border-2 peer-checked:border-red-600"
                :style="{ backgroundColor: context.option.value }"
              ></div>
              <span class="sr-only">{{ context.option.label }}</span></template
            >
          </FormKit> 
          <FormKit
            name="bracelet"
            label="bracelet"
            value="#FFFFFF"
            type="radio"
            :options="colors"
            :sections-schema="{
              inner: { $el: null },
              decorator: { $el: null },
            }"
            input-class="peer sr-only"
            options-class="flex gap-1"
          >
            <template #label="context">
              <div
                class="h-6 w-6 rounded-full border-2 peer-checked:border-red-600"
                :style="{ backgroundColor: context.option.value }"
              ></div>
              <span class="sr-only">{{ context.option.label }}</span></template
            >
          </FormKit>       
        </FormKit>
      </div>
    </div>
  </div>
</template>


