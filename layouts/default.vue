<script setup>
import Navbar from '~/components/Navbar.vue'
</script>

<template>
  <div>
    <Navbar />
    <main class="p-6">
      <slot />
    </main>
    <footer class="text-center py-4 bg-gray-100 mt-10">
      © 2025 NuxtShop. All rights reserved.
    </footer>
  </div>
</template>
