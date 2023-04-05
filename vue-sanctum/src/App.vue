<template>
  <div id="app">
    <div class="nav_top">
      <div class="container  ">
        <nav class="navbar navbar-expand-sm mb-3 py-0 px-0 d-flex mt-3 justify-content-between">
          <div style="padding: 0 0 10px 0">
            <img src="./assets/image/odon150_0.svg">
          </div>
          <div class="d-flex flex-column">
            <span class="hospital_title">Odontalia dental center</span>
            <span class="hospital_info">Dentists in Montrouge (92120)</span>
          </div>
        </nav>
      </div>
    </div>
    <div class="body_section">
      <div class="container">
        <div v-bind:key="item.id" v-for="item in todoEntries" :name="name">
          <div class="hello" key="i">
            <!-- <h1>{{ msg }}</h1> -->
            <div class="doctor_avatar ">
              <div class="position-relative doctor_avatar_image">
                <img :src="item.thumbnail" style="z-index: 100;" />
                <!-- <img src="/img/Dr-Yousra-El-Ouafi-centre-montrouge.jpeg"> -->
                <div class="doctor_detail position-absolute d-flex justify-content-between">
                  <div class="doctor_detail_text d-flex flex-column">
                    <span><b>{{ item.name }}</b></span>
                    <span class="doctor_details">{{ item.detail }}</span>
                  </div>
                  <div v-if="item.online_status" class="doctor_select d-flex align-items-center">
                    <button type="submit" class="request_btn" @click="sendRequest(item.id)">Request</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container d-flex justify-content-center bottom_section">
        <div class="container bottom_input">
          <input class="input_name text-align-center" v-model="name" type="text" @change="sendRequest()"
            placeholder="Enter the name">
        </div>
      </div>
  </div>
</template>

<script>
import Echo from "laravel-echo";
// eslint-disable-next-line no-unused-vars
import Pusher from "pusher-js";
import axios from "axios";
// import HelloWorld from "./components/HelloWorld.vue";
let baseHostUrl = "http://10.10.11.77:8000/api";
let wshost = "10.10.11.77";



export default {
  // flag:false,
  data() {
    return {
      name: null,
      todoEntries: null,
      // isActive:false,
      host: baseHostUrl
    }
  },
  methods: {
    sendRequest(id) {
      (this.name && id) && axios({
        method: "POST",
        url: this.host + "/receive",
        headers: {
          Authorization: `Bearer ${localStorage.getItem('token')}`,
        },
        data: {
          name: this.name || '',
          doctor_id: id
        },
      })
        .then((response) => {
          response.data.status && (this.name = null);
          // flag = true;

        })
        .catch((error) => {
          console.log(error)
        });
    },

  },
  beforeMount() {
    axios.post(`${this.host}/get/doctors`)
      .then((response) => {
        this.todoEntries = response.data;
      })
      .catch((error) => {
        console.log(error);
      })
  },
  mounted() {
    axios
      .post(baseHostUrl + "/sanctum/token", {
        email: "client@example.com",
        password: "$2y$10$4zh11gCMzWgy/L1dAzTxE.iMR4Kvf67yXDh4WDbp3vV2crX10h/bC",
      })
      .then(({ data }) => {
        let token = data;
        localStorage.setItem('token', token);
        //
        axios({
          method: "GET",
          url: baseHostUrl + "/user",
          headers: {
            Authorization: `Bearer ${token}`,
          },
        }).then(({ data }) => {
          console.log('data---', data);
          let echo = new Echo({
            broadcaster: "pusher",
            key: "s3cr3t",
            wsHost: wshost,
            wsPort: 6001,
            forceTLS: false,
            cluster: "mt1",
            disableStats: true,
            // eslint-disable-next-line no-unused-vars
            authorizer: (channel, options) => {
              return {
                authorize: (socketId, callback) => {
                  axios({
                    method: "POST",
                    url: baseHostUrl + "/broadcasting/auth",
                    headers: {
                      Authorization: `Bearer ${token}`,
                    },
                    data: {
                      socket_id: socketId,
                      channel_name: channel.name,
                    },
                  })
                    .then((response) => {
                      callback(false, response.data);
                    })
                    .catch((error) => {
                      callback(true, error);
                    });
                    // this.isActive = true
                    
                },
              };
            },
          });

          echo
            .private(`App.Models.User.1`)
            .listen(".new-message-event", (message) => {
              console.log('mesasges---->', message);
              let index = this.todoEntries.findIndex((e) => e.id == message.user.id);
              this.todoEntries[index].online_status = 1;
            });
        });
      });

  }
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
 

  /* margin-top: 60px; */
 
}
.body_section {
  background: url('./assets/image/back.jpeg');
  background-repeat: no-repeat;
  /* height: 100vh; */
  background-size: cover;
  overflow: auto;
  z-index: 0;
  /* width: 100vw;
  height: 90vh; */
  /* overflow-y: visible; */
  /* overflow-x: hidden; */
  height: 80vh;
}

.bottom_input {
  text-align: center;
  height: 100px;
  background-color: white;
  /* position: absolute; */
  bottom: 0;
  width: 100%;
  height: 10vh;
  border-top-left-radius: 20px;
  border-top-right-radius: 20px;
  z-index: 2;
}
.request_btn {
  background-color: #02b4ce!important;
  border-radius: 20px!important;
  color: white;
}
.request_btn:active {
  background-color: #0272ce!important;
  color: white;
}

.hello {
  margin-top: 10px;
}
.Success_modal{
  background-color: white;
  padding: 30px;
}

.bottom_input input {
  border: solid 1px #02b4ce;
  margin-top: 20px
}

@import './assets/css/index.css';
@import './assets/css/bootstrap.css';
@import './assets/css/bootstrap.min.css';
</style>
