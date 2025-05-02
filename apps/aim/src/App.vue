<script setup lang="ts">
import { add } from '@repo/math/add';
import { capitalize } from '@repo/strings/capitalize';
import { aimTool } from '@repo/aim-tools/aim-tools';


</script>

<template>
  <h1>{{ capitalize('AIM Project') }}</h1>
  <div>Check math 1+1: {{ add(1, 1) }}</div>
  <div>{{ aimTool() }}</div>
  
</template>

<style scoped></style>
