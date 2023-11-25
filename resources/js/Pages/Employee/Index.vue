<template>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <Filter :filters="filters"/>
                <table class="table table-bordered align-middle">
                    <thead>
                        <th>Name</th>
                        <th>Email</th>
                        <th>phone</th>
                        <th>Address</th>
                        <th>Department</th>
                        <th>Achievments</th>
                        <th>Action</th>
                    </thead>
                    <tbody>
                        <tr class="" v-for="employee in employees.data" :key="employee.id">
                            <td>{{ employee.name }}</td>
                            <td>{{ employee.email }}</td>
                            <td>{{ employee.phone }}</td>
                            <td>{{ employee.address }}</td>
                            <td>{{ employee.department.name }}</td>
                            <td>
                                <li v-for="achievment in employee.achievements" :key="achievment.id">{{ achievment.name }}</li>
                            </td>
                            <td class="btn-group" role="group">
                                <Link class="btn btn-info btn-sm" :href="route('employees.edit',{ employee:employee.id })">Edit</Link>
                                <Link
                                    class="btn btn-danger btn-sm" 
                                    :href="route('employees.destroy', { employee: employee.id })" 
                                    as="button" method="delete"
                                >
                                    Delete
                                </Link>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div v-if="employees.data.length" class="w-full flex justify-center mt-8 mb-8">
                    <Pagination :links="employees.links" />
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
import { Link } from '@inertiajs/vue3';
import Pagination from '../../Components/UI/Pagination.vue';
import Filter from './Components/Filter.vue';
    defineProps({
        employees: Object,
        filters: Object
    });
</script>
