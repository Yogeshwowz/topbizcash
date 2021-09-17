<?php defined('BASEPATH') OR exit('No direct script access allowed');

$config = array(
    'protocol' => 'mail', // 'mail', 'sendmail', or 'smtp'
    'smtp_host' => 'mail.topbizcash.com', 
    'smtp_port' => 587,
    'smtp_user' => 'support@topbizcash.com',
    'smtp_pass' => 'admin@567',
    'smtp_crypto' => 'ssl', //can be 'ssl' or 'tls' for example
    'mailtype' => 'html', //plaintext 'text' mails or 'html'
    'smtp_timeout' => '4', //in seconds
    'charset' => 'iso-8859-1',
    'wordwrap' => TRUE
);



