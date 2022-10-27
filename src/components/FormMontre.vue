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

let scroll = ref(true);
const router = useRouter();
const montreperso = ref({});
const props = defineProps(["id"]);
if (props.id) {
  // On charge les données de la maison
  let { data, error } = await supabase
    .from("montre")
    .select("*")
    .eq("montreco", props.id);
  if (error || !data)
    console.log("n'a pas pu charger le table Montre :", error);
  else montreperso.value = data[0];
}

async function upsertMontre(dataForm, node) {
  const { data, error } = await supabase.from("montre").upsert(dataForm);
  if (error) node.setErrors([error.message]);
  else {
    node.setErrors([]);
    router.push({ name: "montreperso-edit-id", params: { id: data[0].id } });
  }
}

const montreco = ref<Montre>(props.data ?? {});
</script>

<template>
  <h2 class="text-center font-aboreto text-xl">Montre connecté Tik-Tak</h2>
  <p class="text-center font-okine text-xs">249.99€</p>
  <div>
    <div class="ml-48 flex">
      <div class="-mt-16">
        <Montreface
          v-if="!scroll"
          v-on:click="scroll = !scroll"
          :class="{ hidden: scroll }"
          class="ml-24 mr-32 w-1/3"
          v-bind="montreco"
          id="dessus"
        /><Montreprofil
          v-if="scroll"
          v-on:click="scroll = !scroll"
          class="ml-24 w-1/3"
          v-bind="montreco"
          id="profil"
        />
        <p class="text ml-20 -mt-12 mb-24 font-okine">
          Cliquer pour changer de vue
        </p>
      </div>
      <div class="ml-20 mt-20 h-80 rounded-md w-96 bg-light_grey">
        <div class="ml-20 w-56">
          <FormKit
            submit-class="bg-white"
            submit-label="Commander"
            type="form"
            v-model="montreco"
            @submit="upsertMontre"
            :config="{
                    classes: {
                        input: '',
                        label: '',
                    },
                }"
                    :submit-attrs="{ classes: { input: 'bg-white font-athena border-2 text-black rounded-xs hover:bg-black hover:text-white p-2' } }">
          
            <FormKit
              id="ecran"
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
                  class="h-6 w-6 rounded-full border-2 border-white peer-checked:border-black"
                  :style="{ backgroundColor: context.option.value }"
                ></div>
                <span class="sr-only">{{
                  context.option.label
                }}</span></template
              >
            </FormKit>
            <FormKit
              id="cadrant"
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
                  class="h-6 w-6 rounded-full border-2 border-white peer-checked:border-black"
                  :style="{ backgroundColor: context.option.value }"
                ></div>
                <span class="sr-only">{{ context.option.label }}</span>
              </template>
            </FormKit>
            <FormKit
              id="bracelet"
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
                  class="h-6 w-6 rounded-full border-2 border-white peer-checked:border-black"
                  :style="{ backgroundColor: context.option.value }"
                ></div>
                <span class="sr-only">{{
                  context.option.label
                }}</span></template
              >
            </FormKit>
            <br />
            <FormKit
              name="id_materiaux"
              label="materiau du bracelet"
              value="ece9b013-f979-49a9-ae29-9a16491a9891"
              type="radio"
              :options="materiaux"
              :sections-schema="{
                inner: { $el: null },
                decorator: { $el: null },
              }"
              legend-class="sr-only"
              input-class="peer sr-only"
              options-class="flex w-full justify-between gap-5"
              wrapper-class="flex flex-col items-center"
            >
              <template #label="context">
                <img
                  class="h-10 w-10 rounded-full border-2 border-white peer-checked:border-black"
                  :src="context.option.img"
                  :alt="context.option.label"
                />

                <span>{{ context.option.label }}</span>
              </template>
            </FormKit>
          </FormKit>
        </div>
      </div>
    </div>
  </div>
</template>
