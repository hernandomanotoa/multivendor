{{-- This is the front/pages/contact.blade.php HTML Form, i.e. the user's inquiry to the 'admin' sent to the 'admin' as an email using Mailtrap --}} {{-- All the variables (like $name, $mobile, $email, ...) used here are passed in from the contact() method in Front/CmsController.php --}}



<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <table>
            <tr><td>{{ __('Dear Admin!')}}</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{ __("User's Inquiry on Multi-vendor E-commerce Application Website, Contact Us page. The details are as below")}}:</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{ __('Name')}}: {{ $name }}</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{ __('Email')}}: {{ $email }}</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{ __('Subject')}}: {{ $subject }}</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{ __('Message')}}: {{ $comment }}</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>{{ __('Thanks & Regards')}},</td></tr>
            <tr><td>{{ __('Multi-vendor E-commerce Application')}}</td></tr>
        </table>
    </body>
</html>