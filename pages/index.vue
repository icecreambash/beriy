<script setup lang="ts">

definePageMeta({
  title:'Новости'
})

useSeoMeta({
  title:'Новости'
})

const pregnancyArticles = ref([
  {
    title: "Первые шаги к материнству",
    description: "Узнайте, что ожидать на ранних этапах беременности и как подготовиться к этим изменениям.",
    image: "https://dnk174.ru/upload/medialibrary/1c5/qt9bcnthumb_1465_article_big.jpeg"
  },
  {
    title: "Здоровое питание для будущих мам",
    description: "Советы по правильному питанию и необходимые витамины для здоровья мамы и малыша.",
    image: "https://dnk174.ru/upload/medialibrary/1c5/qt9bcnthumb_1465_article_big.jpeg"
  },
  {
    title: "Изменения тела во время беременности",
    description: "Как ваше тело меняется на каждом этапе и что делать, чтобы чувствовать себя комфортно.",
    image: "https://dnk174.ru/upload/medialibrary/1c5/qt9bcnthumb_1465_article_big.jpeg"
  },
  {
    title: "Психологическая поддержка во время беременности",
    description: "Почему важно заботиться о психологическом здоровье и как справляться с эмоциями.",
    image: "https://dnk174.ru/upload/medialibrary/1c5/qt9bcnthumb_1465_article_big.jpeg"
  },
  {
    title: "Подготовка к родам",
    description: "Что нужно знать перед родами и как подготовиться к этому важному событию.",
    image: "https://dnk174.ru/upload/medialibrary/1c5/qt9bcnthumb_1465_article_big.jpeg"
  },
  {
    title: "Уход за собой: советы для будущих мам",
    description: "Советы по уходу за кожей, телом и здоровьем во время беременности.",
    image: "https://dnk174.ru/upload/medialibrary/1c5/qt9bcnthumb_1465_article_big.jpeg"
  },
  {
    title: "Образ жизни во время беременности",
    description: "Как правильно организовать режим дня и активность для будущих мам.",
    image: "https://dnk174.ru/upload/medialibrary/1c5/qt9bcnthumb_1465_article_big.jpeg"
  },
  {
    title: "Поддержка семьи и близких",
    description: "Как наладить поддержку со стороны близких и подготовить их к изменению в семье.",
    image: "https://dnk174.ru/upload/medialibrary/1c5/qt9bcnthumb_1465_article_big.jpeg"
  },
  {
    title: "Первый визит к врачу",
    description: "Что ожидать на первом приеме и как подготовиться к визитам к врачу.",
    image: "https://dnk174.ru/upload/medialibrary/1c5/qt9bcnthumb_1465_article_big.jpeg"
  },
  {
    title: "Режим сна и отдыха для беременных",
    description: "Почему сон важен и как улучшить качество сна на каждом этапе беременности.",
    image: "https://dnk174.ru/upload/medialibrary/1c5/qt9bcnthumb_1465_article_big.jpeg"
  }
]);


</script>

<template>
  <div class="space-y-6">
    <div v-for="(article, index) in pregnancyArticles" :key="index" class="bg-gray-900 p-4 rounded-lg">
      <img :src="article.image" alt="Изображение" class="w-full h-48 object-cover rounded-md mb-2">
      <h2 class="text-xl font-semibold text-pink-600">{{ article.title }}</h2>
      <p class="text-gray-300">{{ article.description }}</p>
    </div>
  </div>
</template>

<style scoped>

</style>