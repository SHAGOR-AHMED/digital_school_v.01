<style type="text/css">
	table td {
    border-top: none !important;
}


</style>

<!-- <aside class="right-side">
<section class="content-header">
                    <h1>
                        Examination Routine Print Report
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>
<section>

<div class="container-fluid">
	<div class="col-md-11"> -->


		<div class="panel panel-default" style="margin-top:20px;">

			<!-- <div class="panel-heading"><p id="title">Examination Name Entry</p></div> -->
		  	<div class="panel-body">
		    	<form action="index.php/xmReport/xmRoutineP" method="post" class="form-inline">
		    		<div>
		    		<table class="table" id="itemRows">
		    			
		    			<tr>
		    				<td></td>
		    					<?php
		    						$exam=$this->db->select("*")->from("exm_routine")->group_by("exm_ctgid")->get()->result();
		    					?>
		    				<td style="width:200px;">
		    					Examination Name :
		    				</td>
		    				<td>
		    					
		    					<select name="exam_name" id="exam_name" onchange="show()" class="form-control" style="min-width:30%;float:left;" required >
		    						<option value=""> Select Exam </option>
		    						<?php
		    							foreach ($exam as $key) {
		    								$exNm=$this->db->query("SELECT * FROM exm_namectg WHERE exmnid IN(SELECT exmnid FROM exm_catg WHERE exm_ctgid=$key->exm_ctgid)")->row();
		    								$xD=explode("-", $key->exm_date);
		    							echo "<option value='$key->exm_ctgid'>$exNm->exm_name - $xD[0]</option>";

		    							}
		    						?>
		    					</select>
		    					
		    				</td>
		    				
		    			</tr>
		    		</table>
		    		</div>
		    		<table class="table">
		    			<tr>
		    			<td style="width:10%;"></td>
		    			
		    				<td>
		    					<button type="submit" name="ok" onclick="return valid1();" class="btn btn-primary" style="width:100px;" >
		    						<span class="glyphicon glyphicon-send" aria-hidden="true"> Go
		    						</span>
		    					</button>
		    					<button type="reset" name="reset" class="btn btn-warning" onclick="resetAll()">
		    						<span class="glyphicon glyphicon-refresh" aria-hidden="true"> Reset
		    						</span>
		    					</button>
		    				</td>
		    				<td></td>
		    			</tr>
		    		</table>
				</form>
		 	 </div>
		</div><!-- 
	</div>		
</div>
</section>
</aside>
 -->