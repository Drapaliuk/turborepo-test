<script setup lang="ts">
import { add } from '@repo/math/add';
import { aimTool } from '@repo/aim-tools';

import { capitalize } from '@repo/strings/capitalize';

</script>

<template>
  <h1>{{ capitalize('AIM Project') }}</h1>
  <div>Check math 1+1: {{ add(1, 1) }}</div>
</template>

<style scoped></style>
