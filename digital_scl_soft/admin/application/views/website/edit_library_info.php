<?php

error_reporting(0);
	$id=$_GET['id'];
	
	$edit=$this->db->select("*")
					->from("library_info")
					->where("id",$id)
					->get()
					->row();
?>



            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                       Edit Library Information
                         <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="javascript:void(0);"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Edit About</li>
                    </ol>
                </section>
			
                <!-- Main content -->
                <section class="content">
				<form role="form" action="index.php/admin/edit_library_info" method="post">
				<div class="row">
				<div class="col-md-10">
				 
				 

					  <div class="form-group">
						<label for="email">Title</label>
						<input type="text" class="form-control" value="<?php echo 	$edit->title;?>" id="email">
					  </div>
					  
					  <div class="form-group">
						<label for="pwd">Details</label>
						<textarea class="form-control" rows="8">
						<?php echo 	$edit->details;?>
						</textarea>
					  </div>
					  
					  <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-send"></span> Update</button>
				
				</div>
				<div class="col-md-2">
				
				</div>
				
				</div>
				</form>
				</section>
                                                            

                <!-- /.content -->
            </aside><!-- /.right-side -->
			
			

<?php 
if(isset($_POST['data_send'])){
	
$title=$_POST['principle_title'];
$details=$_POST['principal_details'];
$id=$_POST['id'];
$new_image=$_FILES['image']['name'];

if($new_image==""){
	$query=mysql_query("select * from principal_message where id='$id'");
	$fetch=mysql_fetch_array($query);
	$new_image=$fetch['image'];
}
$tmp_name=$_FILES['image']['tmp_name'];

if($_FILES['image']['size']){
	copy($tmp_name,"../school_admin/principalImage/$new_image");
	
}
$update=mysql_query("update principal_message set title='$title',image='$new_image', details='$details' where id='$id'");
if($update){
	redirect('welcome/principal_message','location');
	
}
else{
	
	redirect('welcome/edit_principal_msg','location');
}

}
 ?>
 