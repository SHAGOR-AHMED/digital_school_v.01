<script type="text/javascript">
	$(document).ready(function(){
	$('#formid5').submit(function() {
  		$.post(
            "index.php/account/vahicleSetting",
            $("#formid5").serialize(),
            function(data){
              if(data==1)
			  {
				  //$("#hidemessage").show(); 
				  $('#hidemessage').fadeIn('slow').delay(2000).fadeOut('slow');
					setTimeout(function(){						
					window.location="accountReport/vahicleStdAssign";
					},3000)
			  }			  
			  else{
				  alert(data);
			  }
     	});
 		return false;
 	});
});

function tedittitle(tvalue,rowid,nr){	
    $.ajax({
        url:"index.php/account_edit/edit_billpay_catg",				
        data:{tvalue:tvalue.trim(),feectgid:rowid,uniqid:'id',tabname:'expance_catg',cloname:'expance_type'},
        type:"POST",
        success:function(data){
			if(data==1){
				document.getElementById("tcatgtyp"+nr).style.display="block";
				document.getElementById("tcatgtyp"+nr).innerHTML=tvalue.trim();
				document.getElementById("tcatgtype"+nr).value=tvalue.trim();
				document.getElementById("tcatgtype"+nr).type="hidden";
			}
			else{
				alert(data);
			}
        }
    });
}

// editing function
function tedit(sid){
    document.getElementById("tcatgtyp"+sid).style.display="none";
    document.getElementById("tcatgtype"+sid).type="text";
    document.getElementById("tcatgtype"+sid).focus();
}

	
	var rowNum=0;
function addRow(frm) {
	
	var serial = $('#serial').val();
	var name = $('#vname').val();
	var route = $('#vroute').val();
	var capacity = $('#vcapacity').val();
	var rent = $('#vrent').val();
		

	if(serial == "" || serial == null) {
		alert("Serial Number is empty");
		$('#serial').addClass('error');
		$('#serial').focus();
	}

	else if(name == "" || name == null) {
		alert("Name is empty");
		$('#serial').removeClass('error');
		$('#vname').addClass('error');
		$('#vname').focus();
		
	}

	else if(route == "" || route == null) {
		alert("Route is empty");
		$('#vname').removeClass('error');
		$('#vroute').addClass('error');
		$('#vroute').focus();
		
	}

	else if(capacity == "" || capacity == null) {
		alert("Capacity is empty");
		$('#vroute').removeClass('error');
		$('#vcapacity').addClass('error');
		$('#vcapacity').focus();
		
	}

	else if(rent == "" || rent == null) {
		alert("Rent(TK) is empty");
		$('#vcapacity').removeClass('error');
		$('#vrent').addClass('error');
		$('#vrent').focus();
		
	}
		
	else{
		
		rowNum++;

		$('#vrent').removeClass('error');

		var row = '<div id="rowNum'+rowNum+'" class="form-group" style="margin-top:5px;" ><div class="col-sm-2"><input type="text" name="serial[]" value="'+frm.serial.value+'" class="form-control" readonly style="width: 150px;" /></div><div class="col-sm-2"><input type="text" name="name[]" value="'+frm.vname.value+'" class="form-control" readonly style="margin-left: 7px;width: 150px;" /></div><div class="col-sm-2"><input type="text" name="route[]" value="'+frm.vroute.value+'" class="form-control" readonly style="width: 149px;margin-left: 12px;" /></div><div class="col-sm-2"><input type="text" name="capacity[]" value="'+frm.vcapacity.value+'" class="form-control" readonly style="width: 150px;margin-left: 17px;" /></div><div class="col-sm-2"><input type="text" name="rent[]" value="'+frm.vrent.value+'" class="form-control" readonly style="width: 150px;margin-left: 21px;" /></div><div class="col-sm-2"><button type="button" class="btn btn-danger" onClick="removeRow('+rowNum+');" style="margin-left: 24px;" ><span class="glyphicon glyphicon-minus"></span></button></div></div>';
			
		$("#vitemRows").after(row);
		document.getElementById("submitBtn").style.display = "block";

		frm.serial.value	= '';
		frm.vname.value		= '';
		frm.vroute.value	= '';
		frm.vcapacity.value = '';
		frm.vrent.value		= '';
	
	}
}
		
function removeRow(rnum){
	$('#rowNum'+rnum).remove();
	rowNum--;

	if(rowNum <= 0){
		document.getElementById("submitBtn").style.display = "none";
	}

}
		
	

</script>


<form class="form-inline" role="form" action="" method="post" id="formid5">
	<div class="form-group" id="vitemRows">
	  
	  <div class="col-sm-2" id="shak_id">
	  	<label class="control-label" for="serial">Serial Number</label>
		<input type="text" name="serial"  class="form-control" id="serial" placeholder="Vahicles Serial No" />
	  </div>

	  <div class="col-sm-2" id="shak_id">
	  	<label class="control-label" for="pwd">Name</label>         
		<input type="text" name="vname"  class="form-control" id="vname" placeholder="Vahicles Name" />
	  </div>

	  <div class="col-sm-2" id="shak_id">
	  	<label class="control-label" for="route">Route</label>         
		<input type="text" name="route"  class="form-control" id="vroute" placeholder="Vahicles Route" />
	  </div>

	  <div class="col-sm-2" id="shak_id">
	  	<label class="control-label" for="capacity">Capacity</label>
		<input type="text" name="capacity"  class="form-control" id="vcapacity" placeholder="Vahicles Capacity" />
	  </div>

	  <div class="col-sm-2" id="shak_id">
	  	<label class="control-label" for="rent">Rent (TK)</label>
		<input type="text" name="rent"  class="form-control" id="vrent" placeholder="Rent" onkeypress="return isNumber(event)" />
	  </div>
<!-- 
	  <div class="col-sm-2" id="shak_id">
	  	<label class="control-label" for="driver">Driver</label>
		<input type="text" name="driver"  class="form-control" id="vdriver" placeholder="Vahicles Driver" />
	  </div> -->


	  <div class="col-sm-2">          
		<button type="button" name="submit" onclick="addRow(this.form)" class="btn btn-primary" style="position: relative;top: 25px;"><span class="glyphicon glyphicon-plus"></span></button>
	  </div>

	</div>
	
	<div id="submitBtn" class="col-md-offset-8 col-md-2" style="margin-top: 10px;display: none;" >
		<button type="submit" name="submitBtn" id="submitBt" class="btn btn-primary" >Submit</button>
	</div>												

</form><br/><br/>

<!-- getting the report value start-->
<?php
	$reportInfo = $this->db->get("vahicles")->result();
?>
<!-- getting the report value end -->

<label class="control-label col-sm-12" style="text-align:center;font-size:20px;background:#F3F4F5;height:35px;">List of Vahicles</label>
	<table id="example5" class="table table-bordered table-striped">
		<thead>
		
			<tr>
				<th>SI</th>
				<th>Vehicles No</th>					
				<th>Name</th>				
				<th>Route</th>				
				<th>Capacity</th>				
				<th>Rent (TK)</th>				
				<th>Action</th>
			</tr>
		</thead>
			<tbody>
			<?php
				$si = 0;
				foreach( $reportInfo as $repo ):
					$si++;
			?>
				<tr>
					<td><?php echo $si ?></td>	
					<td>
						<?php echo $repo->vnumber ?>
					</td>
					<td>
						<?php echo $repo->name ?>
					</td>
					<td>
						<?php echo $repo->route ?>
					</td>									
					<td>
						<?php echo $repo->capacity ?>
					</td>									
					<td>
						<?php echo $repo->rent ?>
					</td>
					<td>
						<button class="btn btn-sm-2 btn-primary" name="edit" id="edit<?php echo $si ?>"><span class="glyphicon glyphicon-edit"></span></button>
					</td>	
				</tr>

			<?php endforeach; ?>

			</tbody>
		</table>