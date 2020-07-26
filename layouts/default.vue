<template>
  <div>
    <nuxt/>
  </div>
</template>

<script>
export default {
  mounted() {
    const hash = this.$route.hash
    if (hash && hash.match(/^#.+$/)) {
      this.$scrollTo(hash)
    }
  }
}
</script>
