<script type="text/javascript">
	// get class by shift id for report
function getClassAss( shift ){
	$.ajax({
		url:"account_billgenerate/getClass",
		type:"POST",
		data:{shf:shift},
		success:function( data ){
			var cls = data.split("+");
			if((cls[0].length > 0) && (cls[1].length > 0)){
				var className = cls[0].split(",");
				var classId = cls[1].split(",");

				// reset class
				document.getElementById("classnameAss").innerHTML = '';
				document.getElementById("classnameAss").innerHTML = '<option value="">Select</option>';

				// reset section
				document.getElementById("sectionsAss").innerHTML = '';
				document.getElementById("sectionsAss").innerHTML = '<option value="">Select</option>';				

				// set new class
				for(var j = 0;j < className.length;j++){
					document.getElementById("classnameAss").innerHTML += '<option value="'+classId[j]+'">'+className[j]+'</option>';
				}

			}else{
				// reset class
				document.getElementById("classnameAss").innerHTML = '';
				document.getElementById("classnameAss").innerHTML = '<option value="">Select</option>';
				
				// reset section
				document.getElementById("sectionsAss").innerHTML = '';
				document.getElementById("sectionsAss").innerHTML = '<option value="">Select</option>';
			}
		}
	});
}


// get class section name
function ClassSectionAss(cls){
    document.getElementById("sectionsAss").innerHTML="<option value=''>Select</option>";
        // document.getElementById("sub").innerHTML="<option value=''>Select</option>";
        $.ajax({
            url:"index.php/account/changeClassSection",
            data:{clsid:cls},
            type:"POST",
            success:function(str){
                //alert(str);
                
                var secValue = str.split("+");
                
                var secName = secValue[0];
                var secId = secValue[1];

                var secNm = secName.split(",");  // section value split 
                var secD = secId.split(",");  // section value split 

                for(var i = 0;i < secNm.length;i++){
                document.getElementById("sectionsAss").innerHTML+="<option value='"+secD[i]+"'>"+secNm[i]+"</option>";
                }
            }
        });
    }

function vanEnableDisable( vassid,status,id ){
	var mStatus,msg,innerText,statusClass,actionBtnText,actionBtnClass,actionBtnFunction;
	if( parseInt(status) == 0 ){
		mStatus = 1;
		msg = "Van service for this student activated.";
		innerText = "Active";
		statusClass = "label label-success";
		actionBtnText = "Disable";
		actionBtnClass = "btn btn-sm btn-danger";
		actionBtnFunction = "vanEnableDisable("+vassid+","+mStatus+","+id+")";
	}else if( parseInt(status) == 1 ){
		mStatus = 0;
		msg = "Van service for this student deactivated.";
		innerText = "Deactive";
		statusClass = "label label-danger";
		actionBtnText = "Enable";
		actionBtnClass = "btn btn-sm btn-success";
		actionBtnFunction = "vanEnableDisable("+vassid+","+mStatus+","+id+")";
	}

	$.ajax({
		type:"POST",
		url:"index.php/accountReport/EnableDisableVan/"+vassid+"/"+mStatus,
		data:{},
		success:function( data ){
			if(parseInt(data) == 1 ){
				alert(msg);
				document.getElementById("status"+id).innerText = innerText;
				document.getElementById("status"+id).setAttribute("class",statusClass);
				document.getElementById("actionBtn"+id).innerHTML = actionBtnText;
				document.getElementById("actionBtn"+id).setAttribute("class",actionBtnClass);
				document.getElementById("actionBtn"+id).setAttribute("onclick",actionBtnFunction);
			}else{
				alert("Data can't modify.");
			}
		}
	});

}

</script>

<?php
	error_reporting(1);
	if(isset($_POST['AssignReport'])):
		extract($_POST);
	endif;
?>

<div class="panel panel-default" style="margin-top:20px;">
        <div class="panel-body">
			<div class="col-md-12">
			<form action="" method="post" class="form">
               <div class="form-group" id="vAssignResult">
					<div class="col-sm-2">
			  			<label class="control-label">Shift:</label>         
						<select class="form-control" name="shiftid" id="shiftidAss" onchange="getClassAss(this.value)">
							<option value="">Select</option>
						<?php 
							$sqlaccs=$this->db->select('*')->from('shift_catg')->get()->result();										
							foreach($sqlaccs as $accidshows){
						?>
							<option value="<?php echo $accidshows->shiftid ?>" <?php if(isset($shiftid)):if($shiftid == $accidshows->shiftid):echo "Selected";endif;endif; ?> ><?php echo $accidshows->shift_N?></option>
						
						<?php }?>
						
						</select>
			  		</div>

	  			
	  			<div class="col-sm-3">
	  				<label class="control-label" >Class Name:</label>          
					<select class="form-control" name="classname" id="classnameAss" onchange="ClassSectionAss(this.value);">
						<option value="">Select</option>
					<?php
						if(isset($shiftid)):
							$shiftData = array( "shiftid" => $shiftid );
							$getClass = $this->db->get_where("class_catg",$shiftData)->result();
							foreach($getClass as $gc):
					?>
						<option value="<?php echo $gc->classid ?>" <?php if(isset($classname)):if($classname == $gc->classid):echo "selected";endif;endif; ?> ><?php echo $gc->class_name ?></option>
					<?php
						endforeach;
						endif;
					?>
					</select>
	  			</div>

	   			
	  			
	  			<div class="col-sm-3">
	  				<label class="control-label" >Section:</label>          
					<select class="form-control" name="sections" id="sectionsAss" >
						<option value="">Select</option>
					<?php
						if(isset($classname)):
							$secData = array( "classid" => $classname );
							$getSection = $this->db->order_by("section_name","ASC")->get_where("section_tbl",$secData)->result();
							foreach( $getSection as $gs ):
					?>
						<option value="<?php echo $gs->sectionid ?>" <?php if(isset($sections)):if($sections == $gs->sectionid):echo "selected";endif;endif; ?> ><?php echo $gs->section_name ?></option>
					<?php
						endforeach;
						endif;
					?>
					</select>
	  			</div>

	   			
				  
				  <div class="col-sm-2">
				  	<label class="control-label">Roll No:</label>        
					<input type="text" name="stuclroll"  class="form-control" id="rollidAss" placeholder="Roll No" value="<?php if(isset($stuclroll)):echo $stuclroll;endif; ?>" onkeypress="return isNumber(event)" />
				  </div>

				  <br/>
				  <div class="col-sm-2" style="margin-top: 7px;">
				  	<button class="btn btn-primary" name="AssignReport" id="AssignReport" type="submit" ><span class="glyphicon glyphicon-search"> Search</span></button>
				  </div>
			</div>
    	</form>
    </div>

<?php
	if(isset($_POST['AssignReport'])):
		$data = array();

		// make data
		if($shiftid):
			$data['v.shiftid'] 	 = $shiftid;
		endif;

		if($classname):
			$data['v.classid'] 	 = $classname;
		endif;

		if($sections):
			$data['v.sectionid'] = $sections;
		endif;

		if($stuclroll):
			$data['v.roll'] 	 = $stuclroll;
		endif;

	else:
		$data = array(
				"v.year" => date("Y")
			);
	endif;

	// query
	$reportInfo = $this->accmodone->vanAssignReport($data);

?>

  	<!-- report section start -->
  		<div class="col-md-12" style="margin-top: 40px;">
  			<table class="table table-striped" id="example1">
  				<thead>
  					<tr>
  						<th>SI</th>
  						<th>Shift</th>
  						<th>Class</th>
  						<th>Section</th>
  						<th>Roll</th>
  						<th>Start Date</th>
  						<th>End Date</th>
  						<th>Status</th>
  						<th>Action</th>
  					</tr>
  				</thead>
  				<tbody>

  				<?php
  					$si = 0;
  					foreach($reportInfo as $repo):
  						$si++;
  				?>

  					<tr>
  						<td><?php echo $si ?></td>
  						<td>
  							<?php echo $repo->shift_N ?>
  						</td>
  						<td><?php echo $repo->class_name ?></td>
  						<td><?php echo $repo->section_name ?></td>
  						<td><?php echo $repo->roll ?></td>
  						<td><?php echo $repo->edate ?></td>
  						<td><?php if(date($repo->udate)):echo $repo->udate;endif; ?></td>
  						<td>
  						<?php
  							if($repo->status):
  								$class = "class = 'label label-success'";
  								$innerText = "Active";
  								$linkButtonText = "Disable";
  								$linkButtonClass = "btn btn-sm btn-danger";
  								$linkFunction = "onclick='vanEnableDisable(".$repo->assid.",".$repo->status.",".$si.")'";
  							else:
  								$class = "class = 'label label-danger'";
  								$innerText = "Deactived";
  								$linkButtonText = "Enable";
  								$linkButtonClass = "btn btn-sm btn-success";
  								$linkFunction = "onclick='vanEnableDisable(".$repo->assid.",".$repo->status.",".$si.")'";
  							endif;
  						?>

  							<label <?php echo $class ?> id="status<?php echo $si ?>" > <?php echo $innerText ?> </label>
  						</td>
  						<td>
  							<button class="<?php echo $linkButtonClass ?>" <?php echo $linkFunction ?> id="actionBtn<?php echo $si ?>" ><?php echo $linkButtonText ?></button>
  						</td>
  					</tr>
  					<?php
  						endforeach;
  					?>
  				</tbody>
  			</table>
  		</div>
  	</div>
</div>
  	<!-- report section end -->
