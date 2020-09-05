<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('index'))
{
    function index()
    {
        show_404();
    }
}

// new url
if ( ! function_exists('new_url'))
{
    function new_url()
    {
    	return base_url();
    }
}