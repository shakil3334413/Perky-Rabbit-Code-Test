<template>
    <header class="border-b border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800 w-full">
        <div class="container mx-auto">
            <nav class="p-4 flex items-center justify-between">
                <div class="text-lg font-medium">
                    <Link :href="route('home')">Home</Link>
                </div>
                <div class="text-xl text-indigo-600 dark:text-indigo-300 font-bold text-center">
                    <Link :href="route('employees.index')">Employee List</Link>
                </div>
                <div v-if="user" class="flex items-center gap-4">
                    <Link :href="route('employees.create')" class="bg-indigo-600 hover:bg-indigo-500 text-white font-medium p-2 rounded-md">+ Create Employee</Link>
                    <div>
                        <Link :href="route('logout')" method="delete" as="button" class="btn btn-sm btn-danger">Logout</Link>
                    </div>
                </div>
                <div v-else>
                    <!-- <Link :href="route('user-account.create')" class="btn btn-sm btn-primary">Register</Link>&nbsp; -->
                    <Link :href="route('login')" class="btn btn-sm btn-primary">Sign-In</Link>
                </div>
            </nav>
        </div>
    </header>
    <main class="container mx-auto p-4 w-full">
        <div v-if="flashSuccess" class="mb-4 border rounded-md shadow-sm border-green-200 dark:border-green-800 bg-green-50 dark:bg-green-900 p-2">
            {{ flashSuccess }}
        </div>
        <slot>Default</slot>
    </main>

</template>
<script setup>
    import { Link,usePage } from '@inertiajs/vue3';
    import { computed } from 'vue';

    // page.props.flash.syccess  
    const page = usePage();
    const flashSuccess = computed(
        () => page.props.flash.success,
    )
    const user = computed(
        () => page.props.user,
    )
</script>
