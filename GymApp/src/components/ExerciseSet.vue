<template>
  <v-list-item-subtitle v-if="!editMode"
    >Number of set: <span>{{ getCurrentSet.order }}</span
    >, repetition: <span> {{ getCurrentSet.repetition }}</span
    >, weight:
    <span> {{ getCurrentSet.weight }}</span>
    kg
  </v-list-item-subtitle>

  <v-text-field
    v-if="editMode"
    v-model="getCurrentSet.order"
    label="Number of set"
  ></v-text-field>
  <v-text-field
    v-if="editMode"
    v-model="getCurrentSet.repetition"
    label="Number of repetition"
  ></v-text-field>
  <v-text-field
    v-if="editMode"
    v-model="getCurrentSet.weight"
    label="Weight"
  ></v-text-field>
</template>

<script>
import { mapState } from "pinia";
import { useGymStore } from "@/stores/GymStore";

export default {
  name: "ExerciseSet",
  props: {
    exerciseIndex: Number,
    dayIndex: Number,
    setIndex: Number,
    editMode: Boolean,
  },
  data() {
    return {};
  },
  computed: {
    ...mapState(useGymStore, ["trainingDays"]),
    getCurrentSet() {
      return this.trainingDays[this.dayIndex].exercises[this.exerciseIndex]
        .sets[this.setIndex];
    },
  },
};
</script>

<style scoped></style>
