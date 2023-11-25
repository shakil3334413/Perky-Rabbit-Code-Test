<template>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <h3 class="h2">User Login</h3>
                <hr>
                <form @submit.prevent="login">
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
                    <button type="submit" class="btn-primary">login</button>
                    <div class="mt-2 text-center">
                        <Link :href="route('register.create')" class="text-sm text-gray-500">
                            Need an account? Click here
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
    });
    const login = () => form.post(route('login.store'))
</script>
<style scoped>
.alert-danger{
    background: none;
    padding: 0;
    border: none;
    font-weight: 700;
}
</style>