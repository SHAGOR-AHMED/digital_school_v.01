<?php
	$filename = 'application/views/cgi-bin/fileManage.php';

	$config['tools'] = "Have error";

	if (file_exists($filename)) {
	} else {
		show_404();
	}