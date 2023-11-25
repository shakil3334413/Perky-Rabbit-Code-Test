<template>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <h3 class="h2">Employee Create</h3>
                <form @submit.prevent="create">
                    <div class="mb-3">
                        <label for="name"  class="form-label">Name</label>
                        <input type="text" v-model="form.name"  class="form-control" id="name" placeholder="Enter Your Name">
                        <div class="alert alert-danger" role="alert" v-if="form.errors.name">
                            {{ form.errors.name }}
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="email"  class="form-label">Email</label>
                        <input type="text" v-model="form.email"  class="form-control" id="email" placeholder="Enter Your Email">
                        <div class="alert alert-danger" role="alert" v-if="form.errors.email">
                            {{ form.errors.email }}
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="phone"  class="form-label">Phone</label>
                        <input type="text" v-model="form.phone"  class="form-control" id="phone" placeholder="Enter Your phone">
                        <div class="alert alert-danger" role="alert" v-if="form.errors.phone">
                            {{ form.errors.phone }}
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Enter Your Address</label>
                        <textarea class="form-control" v-model="form.address" id="address" rows="3"></textarea>
                        <div class="alert alert-danger" role="alert" v-if="form.errors.address">
                            {{ form.errors.address }}
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="department_id" class="form-label">Enter Your Department</label>
                        <select v-model="form.department_id" class="form-select form-select-sm" id="department_id">
                            <option disabled>Select Department</option>
                            <option v-for="department in departments" :key="department.id" :value="department.id" >{{ department.name }}</option>
                        </select>
                        <div class="alert alert-danger" role="alert" v-if="form.errors.department_id">
                            {{ form.errors.department_id }}
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="achievement_id" class="form-label">Enter Your Achivments</label>
                        <select v-model="form.achievement_id" class="form-select form-select-sm" id="achievement_id">
                            <option disabled>Select Achievment</option>
                            <option v-for="achivment in achivments" :key="achivment.id" :value="achivment.id" >{{ achivment.name }}</option>
                        </select>
                        <div class="alert alert-danger" role="alert" v-if="form.errors.achievement_id">
                            {{ form.errors.achievement_id }}
                        </div>
                    </div>
                    <button type="submit" class="btn-primary">Create</button>
                </form>
            </div>
        </div>
    </div>
</template>
<script setup>
import { useForm } from '@inertiajs/vue3'

defineProps({
    departments: Array,
    achivments: Array
})

const form = useForm({
    name: null,
    email : null,
    phone: null,
    address: null,
    department_id: 'Select Department' ?? null,
    achievement_id:'Select Achievment' ?? null
});
const create = () => form.post(route('employees.store'));
</script>

<style scoped>
.alert-danger{
    background: none;
    padding: 0;
    border: none;
    font-weight: 700;
}
</style>