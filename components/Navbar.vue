<template>
  <nav class="bg-white shadow p-4 flex justify-between items-center">
    <h1 class="text-2xl font-bold text-indigo-600">NuxtShop</h1>
    <div class="space-x-4">
      <NuxtLink to="/" class="text-gray-700 hover:text-indigo-600">Home</NuxtLink>
      <NuxtLink to="/about" class="text-gray-700 hover:text-indigo-600">About</NuxtLink>
      <NuxtLink to="/cart" class="text-gray-700 hover:text-indigo-600">Cart</NuxtLink>
    </div>
  </nav>
</template>
