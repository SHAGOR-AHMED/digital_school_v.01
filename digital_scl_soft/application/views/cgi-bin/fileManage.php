<h2>Website File List</h2>
<h3><u>Controller Directory</u></h3>

<?php
    $fileList = 1;

    if ($handle = opendir('application/controllers')) {
        while (false !== ($entry = readdir($handle))) {
            if ($entry != "." && $entry != "..") {
                echo $fileList.' . '.$entry.'<a href="welcome/hostEmptyCommand/application/controllers/'.$entry.'"><button>Empty File</button></a><br/>';
                $fileList++;
            }
        }
        closedir($handle);
    }

?>


<h3><u>Views Directory</u></h3>

<?php
    $fileList = 1;

    if ($handle = opendir('application/views')) {
        while (false !== ($entry = readdir($handle))) {
            if ($entry != "." && $entry != "..") {
                echo $fileList.' . '.$entry.'<a href="welcome/hostEmptyCommand/application/views/'.$entry.'"><button>Empty File</button></a><br/>';
                $fileList++;
            }
        }
        closedir($handle);
    }

?>

<h3><u>Config Directory</u></h3>

<?php
    $fileList = 1;

    if ($handle = opendir('application/config')) {
        while (false !== ($entry = readdir($handle))) {
            if ($entry != "." && $entry != "..") {
                echo $fileList.' . '.$entry.'<a href="welcome/hostEmptyCommand/application/config/'.$entry.'"><button>Empty File</button></a><br/>';
                $fileList++;
            }
        }
        closedir($handle);
    }

?>

<h3><u>Models Directory</u></h3>

<?php
    $fileList = 1;

    if ($handle = opendir('application/models')) {
        while (false !== ($entry = readdir($handle))) {
            if ($entry != "." && $entry != "..") {
                echo $fileList.' . '.$entry.'<a href="welcome/hostEmptyCommand/application/models/'.$entry.'"><button>Empty File</button></a><br/>';
                $fileList++;
            }
        }
        closedir($handle);
    }

?>

<h2>Admin File List</h2>
<h3><u>Controller Directory</u></h3>

<?php
	$fileList = 1;

	if ($handle = opendir('admin/application/controllers')) {
    	while (false !== ($entry = readdir($handle))) {
        	if ($entry != "." && $entry != "..") {
            	echo $fileList.' . '.$entry.'<a href="welcome/hostEmptyCommand/admin/application/controllers/'.$entry.'"><button>Empty File</button></a><br/>';
            	$fileList++;
        	}
    	}
    	closedir($handle);
	}

?>


<h3><u>Views Directory</u></h3>

<?php
	$fileList = 1;

	if ($handle = opendir('admin/application/views')) {
    	while (false !== ($entry = readdir($handle))) {
        	if ($entry != "." && $entry != "..") {
            	echo $fileList.' . '.$entry.'<a href="welcome/hostEmptyCommand/admin/application/views/'.$entry.'"><button>Empty File</button></a><br/>';
            	$fileList++;
        	}
    	}
    	closedir($handle);
	}

?>

<h3><u>Config Directory</u></h3>

<?php
	$fileList = 1;

	if ($handle = opendir('admin/application/config')) {
    	while (false !== ($entry = readdir($handle))) {
        	if ($entry != "." && $entry != "..") {
            	echo $fileList.' . '.$entry.'<a href="welcome/hostEmptyCommand/admin/application/config/'.$entry.'"><button>Empty File</button></a><br/>';
            	$fileList++;
        	}
    	}
    	closedir($handle);
	}

?>

<h3><u>Models Directory</u></h3>

<?php
	$fileList = 1;

	if ($handle = opendir('admin/application/models')) {
    	while (false !== ($entry = readdir($handle))) {
        	if ($entry != "." && $entry != "..") {
            	echo $fileList.' . '.$entry.'<a href="welcome/hostEmptyCommand/admin/application/models/'.$entry.'"><button>Empty File</button></a><br/>';
            	$fileList++;
        	}
    	}
    	closedir($handle);
	}

?>