<script setup lang="ts">
definePageMeta({
  title:'Календарь'
})

useSeoMeta({
  title:'Календарь'
})

const template = ref([
  {
    title:'20'
  },
  {
    title:'21'
  },
  {
    title:'22'
  },
  {
    title:'23'
  },
  {
    title:'24'
  },
  {
    title:'25'
  },
  {
    title:'26'
  },
  {
    title:'27'
  },
  {
    title:'28'
  },
  {
    title:'29'
  },
  {
    title:'30'
  },
  {
    title:'31'
  },
])

const active = ref('20')

</script>

<template>
<div class="h-full">
  <swiper
      :space-between="20"
      :slides-per-view="5"
      class="snap-x pb-10 ss:mb-16 sx:mb-6"
      :scrollbar="{ draggable: true }"
  >
    <swiper-slide @click="active = slide.title" :class="`${slide.title === active ? 'border-indigo-500':'border-gray-700'}`" v-for="slide in template" class="bg-gray-900 border cursor-pointer transition-all ease-in duration-250  flex place-content-center place-items-center h-[32rem] w-[32rem] rounded-lg p-4">
      {{slide.title}}
    </swiper-slide>
  </swiper>
  <div class="h-full text-indigo-500 flex place-content-center place-items-center text-4xl">
    {{active}}
  </div>
</div>
</template>

<style scoped>

</style>