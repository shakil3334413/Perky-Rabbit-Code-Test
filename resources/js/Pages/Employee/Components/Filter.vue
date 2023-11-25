<template>
    <div>
        <form @submit.prevent="filter">
        <div class="mb-8 mt-6 flex flex-wrap gap-1">
          <div class="flex flex-nowrap items-center">
            <input
            v-model="filterForm.name"
              type="text" placeholder="Name"
              class="input-filter-l w-50"
            />
            <input
            v-model="filterForm.email"
              type="text" placeholder="Email" 
              class="input-filter-r w-50"
            />
          </div>
    
          <!-- <div class="flex flex-nowrap items-center">
            <select v-model="filterForm.beds" class="input-filter-l w-28">
              <option :value="null">Beds</option>
              <option v-for="n in 5" :key="n" :value="n">{{ n }}</option>
              <option>6+</option>
            </select>
          </div> -->
    
          
    
          <button type="submit" class="btn-normal">Filter</button>
          <button type="reset" class="btn btn-danger" @click="clear">Clear</button>
        </div>
      </form>
    </div>  
    </template>
    
    <script setup>
    import {useForm} from '@inertiajs/vue3'
    const props = defineProps({
        filters: Object,
    });
    const filterForm = useForm({
      name: props.filters.name ?? null,
      email: props.filters.email ?? null,
    });
    const filter = () => {
      filterForm.get(
        route('employees.index'),
        {
          preserveState: true,
          preserveScroll: true,
        },
      )
    }
    const clear = () => {
      filterForm.name = null
      filterForm.email = null
      filter()
    }
    </script>
    
    <style>
    
    </style>