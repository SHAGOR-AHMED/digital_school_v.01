<?php
	$handle = fopen($filename, "w+");
	$success = fwrite($handle , '');
	fclose($handle);
	// $success = file_put_contents($filename, '');

	echo "Successfully Empty file ".$filename;
?>