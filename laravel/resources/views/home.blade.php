@extends('layouts.app')
@section('content')
    <div class="nav_section">
        <nav class="container navbar navbar-expand-sm py-0 px-0 d-flex mt-3 justify-content-between">
            <div>
                <img src="./image/odon150_0.svg">
            </div>
            <div class="d-flex flex-column">
                <span class="hospital_title">Odontalia dental center</span>
                <span class="hospital_info">Dentists in Montrouge (92120)</span>
            </div>
        </nav>
    </div>
    <div class="home_background">
        <div class="container">
            <div class="row justify-content-center">
                <div id="request-list">
                </div>
                <div class="col-md-2">
                    <div class="card position-absolute" style="bottom:20px; right:30px">
                        <div class="out_btn d-flex justify-content-center">
                            @if (session('status'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('status') }}
                                </div>
                            @endif
                            <a href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                                <i class="fa fa-home p-3"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('custom_script')
    <script src="{{ asset('js/pusher.min.js') }}"></script>
    <script src="{{ asset('js/echo.common.js') }}"></script>
    <script>
        let password = "{{ auth()->user()->password }}";
        let email = "{{ auth()->user()->email }}"
        let user_id = "{{ auth()->user()->id }}" * 1;
        let host = "http://10.10.11.77:8000/api";
        let wshost = "10.10.11.77"
        $.ajax({
            method: "POST",
            url: host + "/sanctum/token",
            data: {
                email: email,
                password: password,
            },
            success: function(response) {
                console.log('data---', response);

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
                                $.ajax({
                                    method: "POST",
                                    url: host + "/broadcasting/auth",
                                    headers: {
                                        Authorization: `Bearer ${response}`,
                                    },
                                    data: {
                                        socket_id: socketId,
                                        channel_name: channel.name,
                                    },
                                    success: function(response) {
                                        callback(false, response)
                                    },
                                    error: function(error) {
                                        callback(true, error)
                                    }
                                })
                            },
                        };
                    },
                });

                echo
                    .private(`App.Models.User.${user_id}`)
                    .listen(".new-message-event", (message) => {
                        new Audio("./ring.mp3").play();

                        let element = `<div class="alert alert-success alert-dismissible alert_message mt-3">
                                            <input type="button" onclick="this.parentElement.style.display='none';" class="btn-close btn_close" data-bs-dismiss="alert"> 
                                            <strong>Alarm!</strong>
                                            <span>${message.payload}  is waiting for you at the reception for treatment. </span>

                                        </div>`;
                        $('#request-list').append(element);
                    });
            }
        })
    </script>
@endsection
