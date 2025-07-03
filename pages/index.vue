<template>
  <div class="px-4 py-10 max-w-7xl mx-auto">
    <!-- Heading -->
    <section class="text-center mb-10">
      <h2 class="text-3xl md:text-4xl font-bold text-gray-800">
        Discover Our <span class="text-indigo-600">Top Picks</span>
      </h2>
      <p class="text-gray-500 mt-2">Browse our latest collection</p>
    </section>

    <!-- Product Grid -->
    <section class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-5">
      <article
        v-for="product in products"
        :key="product.id"
        class="bg-white rounded-lg border shadow-sm hover:shadow-md transition hover:-translate-y-1"
      >
        <div class="aspect-[4/5] overflow-hidden rounded-t-lg">
          <img
            :src="product.image"
            :alt="product.name"
            class="w-full h-full object-cover"
          />
        </div>
        <div class="p-3">
          <h3 class="text-sm font-semibold text-gray-800 truncate">{{ product.name }}</h3>
          <p class="text-xs text-gray-500">{{ product.description }}</p>
          <p class="mt-1 text-sm font-bold text-indigo-600">${{ product.price }}</p>
          <button
            class="mt-2 w-full text-sm bg-indigo-600 text-white py-1.5 rounded hover:bg-indigo-700 transition"
          >
            Add to Cart
          </button>
        </div>
      </article>
    </section>
  </div>
</template>

<script setup>
const products = [
  {
    id: 1,
    name: 'Classic T-Shirt',
    description: 'Cotton, breathable fabric',
    price: 19.99,
    image: 'https://source.unsplash.com/400x500/?tshirt'
  },
  {
    id: 2,
    name: 'Running Sneakers',
    description: 'Lightweight and stylish',
    price: 59.99,
    image: 'https://source.unsplash.com/400x500/?sneakers'
  },
  {
    id: 3,
    name: 'Leather Backpack',
    description: 'Premium quality, spacious',
    price: 79.99,
    image: 'https://source.unsplash.com/400x500/?backpack'
  },
  {
    id: 4,
    name: 'Smart Watch',
    description: 'Track fitness and time',
    price: 129.99,
    image: 'https://source.unsplash.com/400x500/?smartwatch'
  },
  {
    id: 5,
    name: 'Wireless Headphones',
    description: 'Noise cancelling',
    price: 89.99,
    image: 'https://source.unsplash.com/400x500/?headphones'
  },
  {
    id: 6,
    name: 'Denim Jacket',
    description: 'Stylish and rugged',
    price: 49.99,
    image: 'https://source.unsplash.com/400x500/?jacket'
  },
  {
    id: 7,
    name: 'Sunglasses',
    description: 'UV protection',
    price: 24.99,
    image: 'https://source.unsplash.com/400x500/?sunglasses'
  },
  {
    id: 8,
    name: 'Leather Wallet',
    description: 'Compact and elegant',
    price: 29.99,
    image: 'https://source.unsplash.com/400x500/?wallet'
  }
]
</script>
