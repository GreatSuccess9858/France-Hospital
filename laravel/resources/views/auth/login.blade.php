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
                                        {{-- <h3 class="text-dark mt-3">Login to Your Account</h3> --}}
                                    </div>
                                    <form method="POST" action="{{ route('login') }}">
                                        @csrf
                                        <div class="p-2 mt-3">
                                            <div class="mb-3">
                                                <label for="username" class="form-label">Email</label>

                                                <input id="email" type="email" placeholder="Enter the Email"
                                                        class="form-control @error('email') is-invalid @enderror" name="email"
                                                        value="{{ old('email') }}" required autocomplete="email" autofocus>
                                            </div>

                                            <div class="mb-3">
                                                <label class="form-label" for="password-input">Password</label>
                                                <div class="position-relative auth-pass-inputgroup mb-3">

                                                    <button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted password-addon" type="button" id="password-addon"><i class="ri-eye-fill align-middle"></i></button>
                                                    <input id="password" type="password"
                                                        class="form-control pe-5 password-input @error('password') is-invalid @enderror" name="password"
                                                        required autocomplete="current-password">
                                                        @error('password')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror

                                                </div>
                                            </div>

                                            <div class="form-check">
                                                {{-- <input class="form-check-input" type="checkbox" value="" id="auth-remember-check" /> --}}
                                                <input class="form-check-input" type="checkbox"  name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                                <label class="form-check-label" for="auth-remember-check">Remember me</label>
                                                {{-- <a href="#" class="text-muted float-end">Forgot password?</a> --}}
                                            </div>

                                            <div class="mt-4">
                                                {{-- <input type="submit" name="btnlogin" value="Login" id="btnlogin" class="btn btn-primary w-100" /> --}}
                                                <input type="submit" value="Login" class="btn btn-primary w-100">
                                            </div>
                                            <div class="mt-4">
                                                <a href="{{ route('register') }}">
                                                    <input type="button" value="Register" class="btn btn-primary w-100">
                                                </a>
                                            </div>
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
    @endsection
 
