<template>
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <!-- left column -->
                    <div class="col-md-6">
                        <!-- general form elements -->
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Category</h3>
                            </div>

                            <!-- form start -->
                            <form role="form" @click.prevent="addCategory()">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="categoryId">Add New Category</label>
                                        <input type="text" class="form-control" id="categoryId"
                                         placeholder="Enter New Category Name" v-model="form.cat_name" name="cat_name"
                                         :class="{ 'is-invalid':form.errors.has('cat_name') }">
                                         <has-error :form="form" field="cat_name"></has-error>
                                    </div>
                                </div>
                                <!-- /.card-body -->

                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Add Category</button>
                                </div>
                            </form>
                        </div>
                        <!-- /.card -->

                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
</template>    

<script>
    export default {
        name: "New",
        data(){
            return {
                form: new Form({
                    cat_name:''
                })
            }
        },
        methods:{
            addCategory() {
                this.form.post('/add-category')
                .then((response)=>{
                    // console.log(response.data)
                    this.$router.push('/category-list')

                    Toast.fire({
                    icon: 'success',
                    title: 'Category Added successfully'
                    })
                })
                .catch(()=>{

                })
            }
        }
    }
</script>

<style scoped>

</style>