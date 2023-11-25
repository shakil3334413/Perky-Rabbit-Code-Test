<template>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <h3 class="h2">User Register</h3>
                <hr>
                <form @submit.prevent="register">
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
                        <label for="password"  class="form-label">Password</label>
                        <input type="password" v-model="form.password"  class="form-control" id="password" placeholder="Enter Your password">
                        <div class="alert alert-danger" role="alert" v-if="form.errors.password">
                            {{ form.errors.password }}
                        </div>
                    </div>
                    <button type="submit" class="btn-primary">Register</button>
                    <div class="mt-2 text-center">
                        <Link :href="route('login')" class="text-sm text-gray-500">
                           Already have account
                        </Link>
                    </div>
                </form>
            </div>
        </div>
    </div>
</template>
<script setup>
    import { useForm,Link  } from '@inertiajs/vue3';
    const form = useForm({
        email: null,
        password: null,
        name: null
    });
    const register = () => form.post(route('register.store'))
</script>
<style scoped>
.alert-danger{
    background: none;
    padding: 0;
    border: none;
    font-weight: 700;
}
</style>