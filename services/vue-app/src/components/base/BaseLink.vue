<template>
  <a class="cursor-pointer" :class="[type]">
    <slot></slot>
  </a>
</template>

<script lang="ts" setup>
import { PropType } from 'vue'

defineProps({
  type: {
    type: String as PropType<'basic' | 'primary' | 'danger'>,
    default: 'basic'
  }
})
</script>

<style lang="postcss" scoped>
.basic {
  @apply text-blue-500;

  &:hover {
    @apply text-blue-700;
  }
}

.primary {
  @apply text-emerald-500;

  &:hover {
    @apply text-emerald-700;
  }
}

.danger {
  @apply text-red-500;

  &:hover {
    @apply text-red-700;
  }
}
</style>
