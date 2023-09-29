$CONFIG = '{"lang":"en","error_reporting":false,"show_hidden":true,"hide_Cols":false,"theme":"dark"}';
define('APP_TITLE', '');
$use_auth = ture;
$auth_users = array(
    '1337' => '$2y$10$Z/kCkWw1nBwe9yZe66Vbcuid9gGu.06YzClnZ6P1teQe5jZlYK7Qu',
);
$readonly_users = array(
    ''
);
$global_readonly = false;
$directories_users = array();
$use_highlightjs = true;
$highlightjs_style = 'ir-black';
$edit_files = true;
$default_timezone = 'Etc/UTC'; // UTC
$root_path = $_SERVER['DOCUMENT_ROOT'];
$root_url = '';
$http_host = $_SERVER['HTTP_HOST'];
$iconv_input_encoding = 'UTF-8';
$datetime_format = 'm/d/Y g:i A';
$allowed_file_extensions = '';
$allowed_upload_extensions = '';
$favicon_path = '';
$exclude_items = array();
$online_viewer = 'google';
$sticky_navbar = true;
$max_upload_size_bytes = 5000000000;

// Possible rules are 'OFF', 'AND' or 'OR'
// OFF => Don't check connection IP, defaults to OFF
// AND => Connection must be on the whitelist, and not on the blacklist
// OR => Connection must be on the whitelist, or not on the blacklist
$ip_ruleset = 'OFF';

// Should users be notified of their block?
$ip_silent = true;

// IP-addresses, both ipv4 and ipv6
$ip_whitelist = array(
    '127.0.0.1',    // local ipv4
    '::1'           // local ipv6
);

// IP-addresses, both ipv4 and ipv6
$ip_blacklist = array(
    '0.0.0.0',      // non-routable meta ipv4
    '::'            // non-routable meta ipv6
);
