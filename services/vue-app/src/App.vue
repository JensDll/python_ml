<template>
  <div class="lg:container lg:mx-auto min-h-screen m:px-6">
    <router-view></router-view>
    <MobileNavToggle class="z-50 fixed bottom-4 right-4" />
  </div>
</template>

<script setup lang="ts">
import MobileNavToggle from './components/mobile/MobileNavToggle.vue'
import { useNavStore } from './store'

const navStore = useNavStore()
let prevInnerWidth = 0

window.addEventListener('resize', () => {
  if (prevInnerWidth <= 1024 && window.innerWidth >= 1024) {
    navStore.navHidden = false
  }
  prevInnerWidth = window.innerWidth
})

window.addEventListener('load', () => {
  if (window.innerWidth >= 1024) {
    navStore.navHidden = false
  }
})
</script>

<style lang="postcss">
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

#app {
  @apply font-body;
}

@layer base {
  .input-number-reset::-webkit-file-upload-button,
  .input-number-reset::-webkit-inner-spin-button {
    -moz-appearance: textfield;
    -webkit-appearance: none;
  }
}
</style>
