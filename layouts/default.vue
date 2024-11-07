<script setup lang="ts">
const route = useRoute()


const isOpen = ref(false)

const links = ref([
  {
    title:'Новости',
    link:'/',
    icon:'i-heroicons-newspaper',
  },
  {
    title:'Календарь',
    link:'/calendar',
    icon:'i-heroicons-calendar',
  },
  {
    title:'О нас',
    link:'/about',
    icon:'i-heroicons-paper-airplane',
  }
])


</script>

<template>
  <USlideover v-model="isOpen" prevent-close>
    <UCard class="flex flex-col flex-1" :ui="{ body: { base: 'flex-1' }, ring: '', divide: 'divide-y divide-gray-100 dark:divide-gray-800' }">
      <template #header>
        <div class="flex items-center justify-between">
          <h3 class="text-xl font-semibold leading-6 text-gray-900 dark:text-white">
            Меню
          </h3>
          <UButton color="gray" variant="ghost" icon="i-heroicons-x-mark-20-solid" class="-my-1" @click="isOpen = false" />
        </div>
      </template>
      <template #default>
        <div class="flex flex-col gap-4">
          <NuxtLink class="flex text-xl gap-2 place-items-center"  @click="isOpen = false" :to="link.link" v-for="link in links">
            <UIcon :name="link.icon" class="w-5 h-5" />
            <div>
              {{link.title}}
            </div>
          </NuxtLink>
        </div>
      </template>
    </UCard>
  </USlideover>
<div class="h-screen w-full flex flex-col">
  <div class="p-4 sticky top-0 w-full bg-gray-900 flex justify-between place-items-center">
    <div class="text-xl">Здесь&Вместе</div>
    <UIcon @click="isOpen = !isOpen" name="i-heroicons-arrow-left-circle-16-solid" class="w-6 h-6 cursor-pointer" />
  </div>
  <div class="p-4 text-2xl">
    {{route.meta.title}}
  </div>
  <div class="grow p-4">
    <slot/>
  </div>
</div>
</template>

<style scoped>
.router-link-active, .router-link-exact-active {
  @apply text-indigo-500;
}
</style>