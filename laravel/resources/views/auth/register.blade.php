@extends('layouts.app')
@section('content')
<body>
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
    <div class="auth-page-wrapper pt-5">
        <!-- page content -->
        <div class="auth-page-content">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="card mt-5 login-bg">
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <div class="d-inline-block auth-logo">
                                        <img src="./image/odon150_0.svg" alt="JSLPS image" height="80" />
                                    </div>
                                    <h3 class="text-dark mt-3">Regist to Your Account</h3>
                                </div>
                                <form method="POST" action="{{ route('register') }}">
                                    @csrf
                                    <div class="p-2 mt-3">
                                        <div class="mb-3">
                                            <div class="col-md-12">
                                                <label class="form-label" for="password-input">Name</label>
                                                <input id="name" type="text" placeholder="name" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                                                @error('name')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <div class="col-md-12">
                                                <label class="form-label" for="password-input">Email</label>
                                                <input id="email" type="email" placeholder="Enter the Email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                                                @error('email')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label" for="password-input">Password</label>
                                            <div class="position-relative auth-pass-inputgroup mb-3">
                                                <button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted password-addon" type="button" id="password-addon"><i class="ri-eye-fill align-middle"></i></button>
                                                <input id="password" type="password" placeholder="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                                                @error('password')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="password-input">Password-confirm</label>
                                            <div class="col-md-12">
                                                <input id="password-confirm" type="password" placeholder="password-confirm" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                            </div>
                                        </div>
                                        <div class="mt-4">
                                            <input type="file" name="file" class="filepond" required/>
                                        </div>
                                        <div class="mt-4">
                                            <input type="submit" class="btn btn-primary w-100" value="{{ __('Register') }}">
                                        </div>
                                        <div class="mt-4">
                                            <a href="{{ route('login') }}">
                                                <input type="button" value="Login" class="btn btn-primary w-100">
                                            </a>
                                        </div>
                                        <input type="hidden" name="serverID"/>
                                    </div>
                                </form>
                            </div>
                            <!-- card body -->
                        </div>
                        <!-- card -->
                    </div>
                </div>
                <!-- row -->
            </div>
            <!-- container -->
        </div>
    </div>
</body>
@endsection
@section('custom_script')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <!-- include FilePond library -->
<script src="https://unpkg.com/filepond/dist/filepond.js"></script>

<script>
    const inputElement = document.querySelector('input[type="file"]');
    const pond = FilePond.create(inputElement);
    const serverID = document.querySelector('input[name="serverID"]');
    pond.setOptions({
        server: {
            url: '/filepond/api',
            process: {
                url: '/process',
                onload: (res)=> {
                    serverID.value = res;
                },
                onerror: null,
                ondata: null,
            },
            revert: '/process',
            patch: "?patch=",            
            headers: {
                'X-CSRF-TOKEN': '{{ csrf_token() }}'
            },            
        },            
        
    });       

</script>

@endsection
