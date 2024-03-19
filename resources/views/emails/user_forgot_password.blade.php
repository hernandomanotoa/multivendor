{{-- This is the User Forgot Password E-mail using Mailtrap --}} {{-- All the variables (like $name, $mobile, $email, $code, ...) used here are passed in from the forgotPassword() method in Front/UserController.php --}}



<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>



        <table>
            <tr><td>{{ __('Dear') }} {{ $name }},</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{ __('You requested to change your password.') }} {{ __('New Password is as below') }}:</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{ __('Email') }} {{ $email }}</td></tr> {{-- $email is passed in from forgotPassword() method in UserController.php --}}
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{ __('Password') }} {{ $password }}</td></tr> {{-- $password is passed in from forgotPassword() method in UserController.php --}}
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{ __('Thanks & Regards') }}</td></tr>
            <tr><td>{{ __('Multi-vendor E-commerce Application') }}</td></tr>
        </table>



    </body>
</html>