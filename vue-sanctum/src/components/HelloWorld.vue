<template>
  <div class="hello" key="i">
    <!-- <h1>{{ msg }}</h1> -->

    <div class="doctor_avatar ">
       <div class="position-relative doctor_avatar_image">
            <img src="../assets/image/doctors/Dr-Yousra-El-Ouafi-centre-montrouge.jpeg" />
            <!-- <img src="../assets/logo.png"> -->
            <div class="doctor_detail position-absolute d-flex justify-content-between">
                <div class="doctor_detail_text d-flex flex-column">
                    <span><b>{{todoItem.doctorname}}</b></span>
                    <span class="doctor_details">{{ todoItem.detail }}</span>
                </div>
                <div class="doctor_select d-flex align-items-center">
                    <button type="submit" class="request_btn" @click="sendRequest(todoItem.id)">Request</button>
                </div>
            </div>
       </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: [
      "todoItem", "name"
  ],
  // methods: {
  //   sendRequest (id) {
  //     console.log(id)
  //     // console.log(this.name);
  //   }
  // }
  
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->

<style>
@import '../assets/css/index.css';
@import '../assets/css/bootstrap.css';
 
 .request_btn {
   border-radius: 20px;
 }
</style>