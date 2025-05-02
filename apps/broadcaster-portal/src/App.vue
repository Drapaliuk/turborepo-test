<script setup lang="ts">
import { bpTool } from '@repo/bp-tools/bp-tools';
import { add } from '@repo/math/add';
import { capitalize } from '@repo/strings/capitalize';


</script>

<template>
  <h1>{{ capitalize('Broadcaster portal Project') }}</h1>
  <div>Check math 1+1: {{ add(1, 1) }}</div>
  <div>{{ bpTool() }}</div>
  <div>New line</div>
</template>

<style scoped></style>
