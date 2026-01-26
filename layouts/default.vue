<template>
  <div>
    <slot />
  </div>
</template>

<script setup lang="ts">
const route = useRoute()

onMounted(() => {
  const hash = route.hash
  if (hash && hash.match(/^#.+$/)) {
    const el = document.querySelector(hash)
    if (el) {
      el.scrollIntoView({ behavior: 'smooth' })
    }
  }
})
</script>
