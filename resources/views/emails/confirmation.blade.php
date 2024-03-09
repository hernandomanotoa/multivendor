{{-- This is the User Confirmation E-mail after Registration (which contains the 'Activation Link') file using Mailtrap --}} {{-- All the variables (like $name, $mobile, $email, $code, ...) used here are passed in from the userRegister() method in Front/UserController.php --}}



<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>



        <table>
            <tr><td>{{  __('Dear') }} {{ $name }},</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{  __('Please click on below link to activate your Multi-vendor E-commerce Application account') }}:-</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td><a href="{{ secure_url('/user/confirm/' . $code) }}">{{ __('Confirm Account') }}</a></td></tr> {{-- $code is passed in from userRegister() method in UserController.php --}}
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{  __('Thanks & Regards') }},</td></tr>
            <tr><td>{{  __('Multi-vendor E-commerce Application') }}</td></tr>
        </table>



    </body>
</html>