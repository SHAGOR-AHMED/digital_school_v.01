					<div class="row">
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-aqua">
							
                                <div class="inner">
                                    <h3>
                                       Account
                                    </h3>
									<?php 
										
										$studentid=$this->session->userdata('lidcheck');
										
										//$totalbill=$this->db->select("sum(amount) as amount")->from("stu_bill")->where('stu_id',$studentid)->get()->row();		
										//$paybill=$this->db->select("sum(amount) as amount")->from('stu_pay')->where('stu_id',$studentid)->get()->row();
									?>
                                    <p>Total Bill : <?php //echo number_format($totalbill->amount,2).'  Taka.';?></p>
									<p>Total Payment : <?php //echo number_format($paybill->amount,2).'  Taka.';?></p>
									<p>Total Due : <?php //echo $totalbill->amount-$paybill->amount.'  Taka.';?></p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="javascript:void(0);" class="small-box-footer">
                                    More info <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
					</div>
					<style>
						.border_css { border:1px solid lightgray;width:100%; }
					</style>
					
					<?php 
					$sinfo=$this->stu_parensts->student_info($studentid); 
					$group=$this->stu_parensts->section_info($sinfo->section)->groupid;
					$where1=array('year'=>$sinfo->syear,'shiftid'=>$sinfo->shiftid,'classid'=>$sinfo->classid,'section'=>$sinfo->section,'day'=>1);
					$time_shidule=$this->stu_parensts->class_routine($where1);
					$days=array('1'=>'Satarday','2'=>'Sunday','3'=>'Monday','4'=>'Tuesday','5'=>'Wednsday','6'=>'Thusday','7'=>'Friday');
					
					if(count($time_shidule)>6)
					{
						$css_class='border_css';
						$tname="nickN";
						$sname="short_name";
					}
					else 
					{
						$css_class='table table-condensed table-bordered table-responsive';
						$tname="name";
						$sname="sub_name";
					}
					?>
					
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
							    <div class="panel-heading"><center style="font-size:25px;">Your Class Routine</center></div>
								<div class="panel-body">
									<div class="table-responsive">
									<?php 
									
									if($group=='') 
									{
									?>
									<table class="<?php echo $css_class; ?>" border="1" nowrap="0">
										<tr>
											<td style="text-align:center;font-weight:bold;">Day</td>
											<?php 
											foreach($time_shidule as $value) { 
											$w=array('shidule_id'=>$value->shidule_id);
											$shidule_info=$this->stu_parensts->shidule_info($w);
											?>
											<td style="text-align:center;font-weight:bold;">
												<?php echo date("g:i:A",strtotime($shidule_info->stime)).'<b>-</b>'.date("g:i:A",strtotime($shidule_info->etime));?> 
											</td>
											<?php } ?>
										</tr>
										<?php 
										foreach($days as $dkey=>$dvalue)
										{
										?>	
									    <tr>
									    <td style="text-align:center;font-weight:bold;"><?php echo $dvalue; ?></td>
										
										<?php 	
											$where=array('year'=>$sinfo->syear,'shiftid'=>$sinfo->shiftid,'classid'=>$sinfo->classid,'section'=>$sinfo->section,'day'=>$dkey);
											$routine=$this->stu_parensts->class_routine($where);
											
											foreach($routine as $rvalue)
											{
											$w=array('shidule_id'=>$rvalue->shidule_id);	
											$teacher=$this->stu_parensts->teacher_info($rvalue->teacherid);	
											$subject=$this->stu_parensts->subject_info($rvalue->subjid);	
											$break=$this->stu_parensts->shidule_info($w)->period_title;	
											?>
											<td <?php if($break==0) { echo ""; }  ?> style="text-align:center;">
											
											  <?php 
											  
											  if($break>0) 
											  {
												if($subject->$sname=='' ||  $teacher->$tname=='')
												{
												echo "<span class='glyphicon glyphicon-minus'></span>";
												}
												else 
												{
												echo $subject->$sname."</br>".$teacher->$tname;
												}
											  } 
											  else 
											  {
												echo "<span class=''><b>Break</b></span>";	  
											  }
												?>
											
											</td>
											<?php 
											}
											?>
										</tr>
										<?php
										}
										?>
									</table>
									<?php
									}
									
									else 
									{
										
									?>
									
									<table class="<?php echo $css_class; ?>" border="1" nowrap="0">
										<tr>
											<td style="text-align:center;font-weight:bold;">Day</td>
											<?php 
											foreach($time_shidule as $value) { 
											$w=array('shidule_id'=>$value->shidule_id);
											$shidule_info=$this->stu_parensts->shidule_info($w);
											?>
											<td style="text-align:center;font-weight:bold;">
												<?php echo date("g:i:A",strtotime($shidule_info->stime)).'<b>-</b>'.date("g:i:A",strtotime($shidule_info->etime));?> 
											</td>
											<?php } ?>
										</tr>
										<?php 
										foreach($days as $dkey=>$dvalue)
										{
										?>	
									    <tr>
									    <td style="text-align:center;font-weight:bold;"><?php echo $dvalue; ?></td>
										
										<?php 	
											$where=array('year'=>$sinfo->syear,'shiftid'=>$sinfo->shiftid,'classid'=>$sinfo->classid,'section'=>$sinfo->section,'day'=>$dkey);
											$routine=$this->stu_parensts->class_routine($where);
											
											if(count($routine)==0)
											{
												foreach($time_shidule as $value) { echo "<td><span glyphicon glyphicon-minus></span></td>"; }
											}
											
											foreach($routine as $rvalue)
											{	
											$w=array('shidule_id'=>$rvalue->shidule_id);
											
											if($rvalue->groupid=='') {
											$teacher=$this->stu_parensts->teacher_info($rvalue->teacherid);	
											$subject=$this->stu_parensts->subject_info($rvalue->subjid);
											}
											else {
											$ex_grp=explode(",",$rvalue->groupid);
											$ex_tech=explode(",",$rvalue->teacherid);
											$ex_sub=explode(",",$rvalue->subjid);
											$index=array_search($sinfo->groupid,$ex_grp);
											$teacher=$this->stu_parensts->teacher_info($ex_tech[$index]);	
											$subject=$this->stu_parensts->subject_info($ex_sub[$index]);
											}
											$break=$this->stu_parensts->shidule_info($w)->period_title;	
											?>
											<td <?php if($break==0) { echo ""; }  ?> style="text-align:center;">
											
											  <?php 
											  if($break>0) 
											  {
												if($subject->$sname=='' ||  $teacher->$tname=='')
												{
												echo "<span class='glyphicon glyphicon-minus'></span>";
												}
												else 
												{
												echo $subject->$sname."</br>".$teacher->$tname;
												}
											  } 
											  else 
											  {
												echo "<span class=''><b>Break</b></span>";	  
											  }
												?>
											
											</td>
											<?php 
											}
											?>
										</tr>
										<?php
										}
										?>
									</table>
									
									<?php 
									}
									?>
								</div>
								</div>
							</div>
						</div>
					</div>