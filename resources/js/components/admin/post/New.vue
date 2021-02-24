<template>
    <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <!-- left column -->
                    <div class="col-md-10">
                        <!-- general form elements -->
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Add New Post</h3>
                            </div>

                            <!-- form start -->
                            <form role="form" @submit.prevent="addnewPost()" enctype="multipart/form-data">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="postId">Post Title</label>
                                        <input type="text" class="form-control" id="postId"
                                         placeholder="Enter Post Title" v-model="form.title" name="title"
                                         :class="{ 'is-invalid':form.errors.has('title') }">
                                         <has-error :form="form" field="title"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="descriptionId">Post Description</label>
                                        <!-- <textarea class="form-control" id="descriptionId"
                                         placeholder="Enter Post Description" v-model="form.description" name="description"
                                         :class="{ 'is-invalid':form.errors.has('description') }">
                                        </textarea> -->
                                        <markdown-editor v-model="form.description" 
                                        :class="{ 'is-invalid':form.errors.has('description') }"></markdown-editor>
                                         <has-error :form="form" field="description"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="postId">Select Category</label>
                                        <select class="form-control"  :class="{ 'is-invalid':form.errors.has('cat_id') }"
                                            v-model="form.cat_id">
                                            <option value="" disabled>Select Category</option>
                                            <option :value="category.id" v-for="category in getallCategory">
                                                {{category.cat_name}}
                                            </option>
                                        </select>
                                        <has-error :form="form" field="cat_id"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label for="postId">Photo</label> <br>
                                        <input type="file" :class="{ 'is-invalid':form.errors.has('photo') }"
                                        name="photo" class="form-control" @change="changePhoto($event)">
                                        <img :src="form.photo" alt="image" width="150" height="100">
                                        <has-error :form="form" field="photo"></has-error>
                                    </div>

                                </div>
                                <!-- /.card-body -->

                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Add Post</button>
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
            return{
                form: new Form({
                    title:'',
                    description:'',
                    cat_id:'',
                    photo:'',
                })
            }
        },
        mounted(){
            this.$store.dispatch("allCategory")
        },
        computed:{
            getallCategory(){
                return this.$store.getters.getCategory
            }
        },
        methods:{
           changePhoto(){
                let file = event.target.files[0];
                // console.log(file)
                    if(file.size>2097152){    // if photo is greater than 2mb \ 2097152 then its not count
                        Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Picture size is greater then 2MB!'
                        })
                    }else{
                        let reader = new FileReader();
                        reader.onload = event => {
                            // The file's text will be printed here
                            this.form.photo = event.target.result
                                console.log(event.target.result)
                        };
                        reader.readAsDataURL(file);
                    }
                
           },
           addnewPost(){
               this.form.post('/savepost')
                    .then(()=>{
                        this.$router.push('/post-list')
                        Toast.fire({
                        icon: 'success',
                        title: 'Post Added successfully'
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