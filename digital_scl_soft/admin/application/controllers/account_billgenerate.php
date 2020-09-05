<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class account_billgenerate extends CI_Controller {
	public function __construct(){
		parent::__construct();
			 $stid=$this->session->userdata('userid');
		$ststatus=$this->session->userdata('status');
		$stsid=$this->session->userdata('sId');
		$ses_sql=$this->db->select('userid,status,sId')->from('user_reg')->where('userid',$stid)->get()->row();
		if($this->db->affected_rows()<1)
		{
			redirect('login?error=3','location');
		}
		if($stid==$ses_sql->userid && $ststatus==$ses_sql->status && $stsid==$ses_sql->sId){
			$this->load->model('account_model','accmodone');
			$this->load->model('account_model_edit','accmodtwo');
			$this->load->model('numbertobangla','numbershow');
		}
		else{
			redirect('login?error=2','location');
		}
		
	}

// bill generate form start
	public function billpages(){
		$this->load->view('header');
		$this->load->view('leftbar');
		$this->load->view('account/bill_generate/bill_gefpage');
		$this->load->view('footer');
	}

// bill generate end

	public function monthcheck(){
		$this->load->view('account/bill_generate/search_month');
	}


	public function feetitle(){
		$this->load->view('account/bill_generate/search_feetitle');
	}

// student bill section start

public function studentbill(){
	if(isset($_POST['submit'])):
		extract($_POST);
		$year = date("Y");

		// echo "<pre>";
		// print_r($_POST);

		// get incomplete bill student
		$inCompBill = $this->accmodone->inCompleteBillStd( $classid,$year,$monthfdate,$monthedate );

		// get user id
		$user = $this->session->userdata("userid");

		// calculate student bill
		foreach( $inCompBill as $billInfo ):
			$discount = $this->accmodone->getDiscount( $billInfo->shiftid,$billInfo->classid,$billInfo->roll_no,$year );

			// check student vahicales
			$vahicales = $this->accmodone->vahicalesCheckingRent( $billInfo->shiftid,$billInfo->classid,$billInfo->section,$billInfo->roll_no,$year );

			$vahicalRent = $vahicales->amount?$vahicales->amount:0;

			// add vahicales id
			$vid = 0;
			if($vahicalRent):
				$vid = $vahicales->assid;
			endif;

			$fees = implode(",", $feeidck);

// advanced payment section
			$advancePayAmount = 0;

			for($i = 0;$i < count($feeidck);$i++):

				// advanced payment checking
				$advanceInfo = $this->accmodone->advancedInfoThisYear( $billInfo->stu_id,$monthfdate,$monthedate,$feeidck[$i],$year );
				
				if($advanceInfo):
					$removeGlue = $feeidck[$i].',';
					$fees = str_replace($removeGlue, '', $fees);
				endif;

				$advancePayAmount += $advanceInfo;
			endfor;
// end advance section
			$BillAmount = $totalAmount;

			if( $advancePayAmount > 0):
				$totalAmount = $totalAmount - $advancePayAmount;
			endif;

			$totalBill = $totalAmount;

			// calculate total bill
			if($discount > 0):
				$totalBill = $totalAmount - ($totalAmount*($discount/100));
				$BillAmount = $BillAmount - ($BillAmount*($discount/100));
			endif;

			if($vahicalRent > 0):
				$totalBill += $vahicalRent;
				$BillAmount += $vahicalRent;
			endif;

			$status = 0;
			if($totalBill <= 0):
				$status = 1;
			endif;

			// get invoice id
			$invoiceId = $this->accmodone->incInvoiceId();

			// make student bill information
			$stuBill = array(
					"id" 	 	 => '',
					"stu_id" 	 => $billInfo->stu_id,
					"classid" 	 => $billInfo->classid,
					"invoice_no" => $invoiceId,
					"fee_catg"   => $fees,
					"vahicles"	 => $vid,
					"total_bill" => $BillAmount,
					"from_month" => $monthfdate,
					"to_month"   => $monthedate,
					"years"  	 => $year,
					"status"	 => $status,
					"e_user"     => $user
				);

			// print_r($stuBill);exit;

				// insert this data into student bill
				$ins = $this->db->insert("stu_bill",$stuBill);

			// get student account
			$stuAccount = $this->accmodone->studentAccount( $billInfo->stu_id );

			// student balance
			$balance = $stuAccount - $BillAmount;

			// make student account data
			$stuAccData = array(
					"balance" => $balance
				);

			// update student table
			$stuAcc = $this->db->where("stu_id",$billInfo->stu_id)->update("student_account",$stuAccData);

		endforeach;
		// redirect to previous page
		redirect("account_billgenerate/billpages","location");

	endif;
}

// multiple student bill section end
	
// single student bill generation section
public function singleStdBillGen(){
	if(isset($_POST['singleStudentBill'])):
		extract($_POST);
		// print_r($_POST);
		$year = date("Y");


		// get user id
		$user = $this->session->userdata("userid");

		// calculate student bill
			$discount = $this->accmodone->getDiscount( $shift,$classid,$stuclroll,$year );

			// check student vahicales
			$vahicales = $this->accmodone->vahicalesCheckingRent( $shift,$classid,$sections,$stuclroll,$year );

			
			$vahicalRent = $vahicales->amount?$vahicales->amount:0;

			// add vahicales id
			$vid = 0;
			if($vahicalRent):
				$vid = $vahicales->assid;
			endif;

			$fees = implode(",", $feeidck);

// advanced payment section
			$advancePayAmount = 0;

			for($i = 0;$i < count($feeidck);$i++):

				// advanced payment checking
				$advanceInfo = $this->accmodone->advancedInfoThisYear( $proStu,$month,$month,$feeidck[$i],$year );
				
				if($advanceInfo):
					$removeGlue = $feeidck[$i].',';
					$fees = str_replace($removeGlue, '', $fees);
				endif;

				$advancePayAmount += $advanceInfo;
			endfor;

			$BillAmount = $totalAmount;
// end advance section
			if($advancePayAmount > 0):
				$totalAmount = $totalAmount - $advancePayAmount;
			endif;

			$totalBill = $totalAmount;

			// calculate total bill
			if($discount > 0):
				$totalBill = $totalAmount - ($totalAmount*($discount/100));
				$BillAmount = $BillAmount - ($BillAmount*($discount/100));
			endif;

			if($vahicalRent > 0):
				$totalBill += $vahicalRent;
				$BillAmount += $vahicalRent;
			endif;

			$status = 0;
			if($totalBill <= 0):
				$status = 1;
			endif;


			// get invoice id
			$invoiceId = $this->accmodone->incInvoiceId();

			// make student bill information
			$stuBill = array(
					"id" 	 	 => '',
					"stu_id" 	 => $proStu,
					"classid" 	 => $classid,
					"invoice_no" => $invoiceId,
					"fee_catg"   => $fees,
					"vahicles"	 => $vid,
					"total_bill" => $BillAmount,
					"from_month" => $month,
					"to_month"   => $month,
					"years"  	 => $year,
					"status"	 => $status,
					"e_user"     => $user
				);

				// insert this data into student bill
				$ins = $this->db->insert("stu_bill",$stuBill);
				//print_r($stuBill);exit;

			// get student account
			$stuAccount = $this->accmodone->studentAccount( $proStu );

			// student balance
			// echo $totalBill;
			$balance = $stuAccount - $BillAmount;

			// make student account data
			$stuAccData = array(
					"balance" => $balance
				);

			// update student table
			$stuAcc = $this->db->where("stu_id",$proStu)->update("student_account",$stuAccData);

		// redirect to previous page
		redirect("account_billgenerate/billpages","location");

	endif;
}
// single student bill generation section end


	public function search_student_ledger(){
		$data=array();
		$today=date('Y-m-d');
		$stuid=$this->input->post('stuid');			
		$bilpay=$this->input->post('bilpay');			
		$sdate=$this->input->post('sdate');
		$edate=$this->input->post('edate');
		if($sdate!=''){
				$ssdate=date('Y-m-d',strtotime($sdate));
		}
		if($edate!=''){
			$eedate=date('Y-m-d',strtotime($edate));
		}
		if($sdate!='' && $edate!='' && $stuid=='' && $bilpay==''){
		$sql=$this->db->query("SELECT * FROM stu_ledger WHERE date(e_date) between '$ssdate' AND '$eedate' order by id ASC");
		$sql_sum=$this->db->query("SELECT SUM(credit) AS credit ,SUM(debit) as debit FROM stu_ledger WHERE date(e_date) between '$ssdate' AND '$eedate'")->row();
		$sql_todaysum=$this->db->query("SELECT SUM(credit) AS credit ,SUM(debit) as debit FROM stu_ledger WHERE date(e_date) between '$today' AND '$today'")->row();
		$data['credit_t']=$sql_sum->credit;
		$data['debit_t']=$sql_sum->debit;
		$data['today_credit']=$sql_todaysum->credit;
		$data['today_debit']=$sql_todaysum->debit;			
		$data['query']=$sql->result();
		$data['stuids']=$stuid;
		$data['bilpay']=$bilpay;
		$data['start_date']=$sdate;
		$data['end_date']=$edate;	
		$this->load->view('account/viewlist/listof_student_ledger',$data);
		
		}
		elseif($sdate!='' && $edate!='' && $stuid!='' && $bilpay==''){
		$sql=$this->db->query("SELECT * FROM stu_ledger WHERE stu_id='$stuid' AND date(e_date) between '$ssdate' AND '$eedate' order by id ASC");
		$sql_sum=$this->db->query("SELECT SUM(credit) AS credit ,SUM(debit) as debit FROM stu_ledger WHERE stu_id='$stuid' AND date(e_date) between '$ssdate' AND '$eedate'")->row();
		$sql_todaysum=$this->db->query("SELECT SUM(credit) AS credit ,SUM(debit) as debit FROM stu_ledger WHERE stu_id='$stuid' AND date(e_date) between '$today' AND '$today'")->row();
		$data['credit_t']=$sql_sum->credit;
		$data['debit_t']=$sql_sum->debit;
		$data['today_credit']=$sql_todaysum->credit;
		$data['today_debit']=$sql_todaysum->debit;
		$data['query']=$sql->result();
		$data['stuids']=$stuid;
		$data['bilpay']=$bilpay;
		$data['start_date']=$sdate;
		$data['end_date']=$edate;	
		$this->load->view('account/viewlist/listof_student_ledger',$data);
		
		}
		elseif($sdate=='' && $edate=='' && $stuid!='' && $bilpay==''){
		$sql=$this->db->query("SELECT * FROM stu_ledger WHERE stu_id='$stuid' order by id ASC");
		$sql_sum=$this->db->query("SELECT SUM(credit) AS credit ,SUM(debit) as debit FROM stu_ledger WHERE stu_id='$stuid'")->row();
		$sql_todaysum=$this->db->query("SELECT SUM(credit) AS credit ,SUM(debit) as debit FROM stu_ledger WHERE stu_id='$stuid' AND date(e_date) between '$today' AND '$today'")->row();
		$data['credit_t']=$sql_sum->credit;
		$data['debit_t']=$sql_sum->debit;
		$data['today_credit']=$sql_todaysum->credit;
		$data['today_debit']=$sql_todaysum->debit;		
		$data['query']=$sql->result();
		$data['stuids']=$stuid;
		$data['bilpay']=$bilpay;
		$data['start_date']=$sdate;
		$data['end_date']=$edate;	
		$this->load->view('account/viewlist/listof_student_ledger',$data);
		
		}
		elseif($sdate=='' && $edate=='' && $stuid!='' && $bilpay!=''){
			if($bilpay==1){$generate='amount';$tabl='stu_bill';}
			if($bilpay==2){$generate='amount';$tabl='stu_pay';}
		$sql=$this->db->query("SELECT * FROM $tabl WHERE stu_id='$stuid' order by id ASC");
		$sql_sum=$this->db->query("SELECT SUM($generate) AS $generate  FROM $tabl WHERE stu_id='$stuid'")->row();
		$data['total_amount']=$sql_sum->$generate;	
		$data['query']=$sql->result();
		$data['stuids']=$stuid;
		$data['bilpay']=$bilpay;
		$data['start_date']=$sdate;
		$data['end_date']=$edate;	
		$data['checks']='2';	
		$this->load->view('account/viewlist/listof_student_ledger',$data);
		
		}
		elseif($sdate=='' && $edate=='' && $stuid=='' && $bilpay!=''){
			if($bilpay==1){$generate='amount';$tabl='stu_bill';}
			if($bilpay==2){$generate='amount';$tabl='stu_pay';}
		$sql=$this->db->query("SELECT * FROM $tabl order by id ASC");
		$sql_sum=$this->db->query("SELECT SUM($generate) AS $generate  FROM $tabl")->row();
		$data['total_amount']=$sql_sum->$generate;	
		$data['query']=$sql->result();
		$data['stuids']=$stuid;
		$data['bilpay']=$bilpay;
		$data['start_date']=$sdate;
		$data['end_date']=$edate;	
		$data['checks']='2';	
		$this->load->view('account/viewlist/listof_student_ledger',$data);
		}
		elseif($sdate!='' && $edate!='' && $stuid=='' && $bilpay!=''){
			if($bilpay==1){$generate='amount';$tabl='stu_bill';}
			if($bilpay==2){$generate='amount';$tabl='stu_pay';}
		$sql=$this->db->query("SELECT * FROM $tabl WHERE  date(e_date) between '$ssdate' AND '$eedate' order by id ASC");
		$sql_sum=$this->db->query("SELECT SUM($generate) AS $generate  FROM $tabl WHERE date(e_date) between '$ssdate' AND '$eedate'")->row();
		$data['total_amount']=$sql_sum->$generate;	
		$data['query']=$sql->result();
		$data['stuids']=$stuid;
		$data['bilpay']=$bilpay;
		$data['start_date']=$sdate;
		$data['end_date']=$edate;	
		$data['checks']='2';	
		$this->load->view('account/viewlist/listof_student_ledger',$data);
		}
		elseif($sdate!='' && $edate!='' && $stuid!='' && $bilpay!=''){
			if($bilpay==1){$generate='amount';$tabl='stu_bill';}
			if($bilpay==2){$generate='amount';$tabl='stu_pay';}
		$sql=$this->db->query("SELECT * FROM $tabl WHERE stu_id='$stuid' AND date(e_date) between '$ssdate' AND '$eedate' order by id ASC");
		$sql_sum=$this->db->query("SELECT SUM($generate) AS $generate  FROM $tabl WHERE stu_id='$stuid' AND date(e_date) between '$ssdate' AND '$eedate'")->row();
		$data['total_amount']=$sql_sum->$generate;	
		$data['query']=$sql->result();
		$data['stuids']=$stuid;
		$data['bilpay']=$bilpay;
		$data['start_date']=$sdate;
		$data['end_date']=$edate;	
		$data['checks']='2';	
		$this->load->view('account/viewlist/listof_student_ledger',$data);
		
		}
		else{			
		$sql=$this->db->query("SELECT * FROM stu_ledger WHERE date(e_date) between '$today' AND '$today' order by id ASC");
		$sql_sum=$this->db->query("SELECT SUM(credit) AS credit ,SUM(debit) as debit FROM stu_ledger WHERE date(e_date) between '$today' AND '$today'")->row();
		$sql_todaysum=$this->db->query("SELECT SUM(credit) AS credit ,SUM(debit) as debit FROM stu_ledger WHERE date(e_date) between '$today' AND '$today'")->row();
		$data['credit_t']=$sql_sum->credit;
		$data['debit_t']=$sql_sum->debit;
		$data['today_credit']=$sql_todaysum->credit;
		$data['today_debit']=$sql_todaysum->debit;		
		$data['query']=$sql->result();
		$data['stuids']='';
		$data['bilpay']='';
		$data['start_date']=date('d-m-Y');
		$data['end_date']=date('d-m-Y');
		$this->load->view('account/viewlist/listof_student_ledger',$data);
		
	}
}

// bill description section start
	public function bill_description( $id ){
		$invoiceInfo = $this->accmodone->invoiceInfo( $id );
		
		$months = array(
			'1'  => 'January',
			'2'  => 'February',
			'3'  => 'March',
			'4'  => 'April',
			'5'  => 'May',
			'6'  => 'June',
			'7'  => 'July',
			'8'  => 'August',
			'9'  => 'September',
			'10' => 'October',
			'11' => 'November',
			'12' => 'December'
		);

		// echo "<pre>";
		// print_r($invoiceInfo);

		// get student name
		$studentName = $this->accmodone->studentname( $invoiceInfo->stu_id );
		// print_r($studentName);

		$dueAmount = $this->accmodone->dueAmountOfStudent( $invoiceInfo->stu_id );

		// get student information
		$studentInfo = $this->accmodone->studentInformation( $invoiceInfo->stu_id,$invoiceInfo->years );
		// print_r($studentInfo);

		// get fees category name
		$feesCategory = $this->accmodone->feesCategory( $invoiceInfo->fee_catg );
		// print_r($feesCategory);

		// divide two part
		$feesPart = explode("+", $feesCategory);
		// explode fees name
		$feesName = explode(",", $feesPart[0]);
		// explode fees id
		$feesId = explode(",", $feesPart[1]);

		// total month
		$tmonth = $invoiceInfo->to_month - $invoiceInfo->from_month + 1;

		// get waver information
		$waver = $this->accmodone->waverInformation( $studentInfo->shiftid,$studentInfo->classid,$studentInfo->section_name,$studentInfo->roll_no,$studentInfo->syear );
		
		// make table body
		$body = '';
		$tbill = 0;
		
		for($i = 0;$i < count($feesName);$i++):
			
			$tbill += $feesId[$i];
			
			$body .= '
					<tr>
						<td>'.$feesName[$i].' * '.$tmonth.'</td>
						<td>'.$feesId[$i].'</td>
					</tr>
				';
		endfor;
		// vahicales section
		
		$vahicles = $this->accmodone->vahicalesCheckingRent( $studentInfo->shiftid,$studentInfo->classid,$studentInfo->section,$studentInfo->roll_no,$studentInfo->syear );

		if($vahicles->amount):
			$body .= '
				<tr>
					<td>Vahicales Rent * '. $tmonth.'</td>
					<td>'.$vahicles->amount*$tmonth.'</td>
				</tr>
			';
		endif;
		// end

		// if waver is setup for student
		if( $waver->discount ):
			$body .= '
					<tr>
						<td>Waver ( '.$waver->discount.' % )</td>
						<td> -'.(($tbill * $waver->discount)/100).'</td>
					</tr>
				';
		endif;
		
		// waver section part
		
		$body .= '
				
				<tr>
					<td></td>
					<td>Total : '.$invoiceInfo->total_bill.'</td>
				</tr>
			';

		if($dueAmount < 0):
			$body .= '
				<tr>
					<td></td>
					<td>
						Present Due : &nbsp; '.$dueAmount.'
					</td>
				</tr>
				';
		else:
			$body .= '
				<tr>
					<td></td>
					<td>
						Present Due : &nbsp; '.$dueAmount.'
					</td>
				</tr>
				';
		endif;

			if($invoiceInfo->status):
				$style = "<style>#paymentBtn{display:none !important;}</style>";
			else:
				$style = "<style>#paymentBtn{display:inline !important;}</style>";
			endif;

		// view bill description
		echo $style.'
			<table style="width:100%;" id="heading_table">
				<tbody>
					<tr>
						<td>
							<b>Invoice No :</b> <i>'.$id.'</i>
							<input type="hidden" name="invoId" value="'.$id.'" />
						</td>
						<td style="float:right;"><b>Generate Date : </b><i>'.$invoiceInfo->e_date.'</i></td>
					</tr>
					<tr style="margin-top:20px;padding-top:20px;height:50px;">
						<td colspan="2" style="text-align:center;">
							<label class="label label-primary">'.$months[$invoiceInfo->from_month].'</label> <span class="glyphicon glyphicon-minus"></span> <label class="label label-primary">'.$months[$invoiceInfo->to_month].'</label>
						</td>
					</tr>
					<tr>
						<td><b>Student Name : </b><span style="border-bottom:1px dotted green;display: block;float: right;clear:right;position:relative;right:10%;width:150px;" id="stuName" ><i>'.$studentName->name.'</i></span></td>
						<td><b>Student ID :</b> <span style="border-bottom:1px dotted green;display: block;float: right;clear:right;position:relative;right:10%;width:150px;">'.$invoiceInfo->stu_id.'</span> </td>
					</tr>
					<tr>
						<td><b>Shift : </b><span style="border-bottom:1px dotted green;width: 120px;display: block;float: right;clear: right;padding-left:20px;position:relative;right:30%;" id="shiftName" ><i>'.$studentInfo->shift_N.'</i></span></td>
						
						<td><b>Class : </b><span style="border-bottom:1px dotted green;width: 120px;display: block;float: right;clear: right;padding-left:20px;position:relative;right:35%;"><i>'.$studentInfo->class_name.'</i></span></td>
					</tr>
					<tr>
						<td><b>Section : </b><span style="border-bottom:1px dotted green;width: 120px;display: block;float: right;clear: right;padding-left:20px;position:relative;right:30%;" id="sectionName" ><i>'.$studentInfo->section_name.'</i></span></td>
						
						<td><b>Roll : </b><span style="border-bottom:1px dotted green;width: 120px;display: block;float: right;clear: right;padding-left:20px;position:relative;right:35%;"><i>'.$studentInfo->roll_no.'</i></span></td>
					</tr>
				</tbody>
			</table>

			<table class="table table-striped table-border" style="margin-top:30px;">
				<thead>
					<tr>
						<th>Description</th>
						<th>Amount</th>
					</tr>
				</thead>
				<tbody>
				'.$body.'
				</tbody>
			</table>
		';

	}

// bill description section end

// bill print section start
	public function billPrint(){
		echo '
<link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="../../js/update_jquery.min.js"></script>';

echo '
		<style>
			body{width:70%;margin:20px 100px}
			@media print{
				button{display:none !important;margin-top:0px !important;}
				body{margin-top:-40px !important;page-break-after:always;font-size:10px;}
				b,span,label,table,thead,tbody,tr,th,td{font-size:10px;}
				#stuName{position:relative;left:-10px;}
				#shiftName{position:relative;left:-10px;}
				#sectionName{position:relative;left:-5px;}
				h2,h6{padding:0px;margin:0px;}
				table,thead,tbody,tr,td,th{padding:0px;margin:0px;}
			}
		</style>
	';
		extract($_POST);
		// all invoice 
		$invoiceInfo = $this->accmodone->getBillInfo( $classid,$monthfdate,$year );
		if(!count($invoiceInfo)):echo '<h3 style="text-align:center;color:red;">No Generated bill found for <i style="color:blue;">'.$this->accmodone->getMonthName($monthfdate).'</i> month</h3><button class="btn btn-danger" style="margin-left:40%;" onclick="window.close()" >Close this window</button>';
		else:
		echo '<button class="btn btn-warning" style="position:relative;left:350px;width:200px;" onclick="window.print();" >Print</button><br/><br/><br/>';
		// echo "<pre>";
		// print_r($_POST);
		
		// get school profile
		$schoolProfile = $this->db->order_by("id","DESC")->limit(1)->get("sprofile")->row();

		foreach($invoiceInfo as $invoInfo):
			echo '<div style="height:49%;"><div class="panel panel-default" >
				<div class="panel-body">
					<div>
						<img src="../../img/document/school_logo/'.$schoolProfile->logo.'" height="65px" width="70px" style="position:relative;float:left;top:10px;left:20px;" />
						<h2 style="text-align:center;">'.$schoolProfile->schoolN.'</h2>
						<h6 style="text-align:center;">'.$schoolProfile->address.'</h6>
						<h6 style="text-align:center;">মোবাইলঃ '.$schoolProfile->phone.' (অফিস)</h6></br>
						<label class="label label-primary" style="position:relative;left:42%;" >অভিভাবক অবিহিত করন পত্র</label></br></br>
					</div>	
			';
			$this->bill_description( $invoInfo->invoice_no );
			echo "</div></div></div>";
			//echo "<br/><br/><br/><br/><br/>";
		endforeach;
		endif;

	}
// bill print section end

// schoolership add section start
	public function addSchoolerShip(){
		if(isset($_POST['schoolerShip'])):
			extract($_POST);
			$uid = $this->session->userdata("userid");
			$aff_row = 0;

			// data
			$data = array(
					"schid"    => '',
					"shiftid"  => $shift,
					"classid"  => $class,
					"section"  => $section,
					"roll" 	   => $roll,
					"discount" => $waver,
					"year" 	   => $year,
					"status"   => 1,
					"euser"    => $uid
				);

			$ins = $this->db->insert("schship",$data);

			if($ins):
				$aff_row++;
			endif;

			$aff = array("aff"=>$aff_row);

			$this->session->set_userdata($aff);
			redirect("account/stu_scholarship","location");

		endif;
	}
// schoolership add section end

// bill receipt copy section start
	public function receiptCopy(){
		// get transaction id
		$trans_id = $this->uri->segment(3);

		// get bill payment details
		$transInfo = $this->accmodone->billPaymentInfo( $trans_id );

		// transaction date
		$trans_d = explode(" ", $transInfo->e_date);
		$transDate = $trans_d[0];

		// get invoice no
		$invo_id = $transInfo->invoice_no;

		// get invoice information
		$invoiceInfo = $this->accmodone->invoiceInfo( $invo_id );
		
		
		$months = array(
			'1'  => 'January',
			'2'  => 'February',
			'3'  => 'March',
			'4'  => 'April',
			'5'  => 'May',
			'6'  => 'June',
			'7'  => 'July',
			'8'  => 'August',
			'9'  => 'September',
			'10' => 'October',
			'11' => 'November',
			'12' => 'December'
		);

		// echo "<pre>";
		// print_r($invoiceInfo);

		// get student name
		$studentName = $this->accmodone->studentname( $invoiceInfo->stu_id );
		// print_r($studentName);

		// get student information
		$studentInfo = $this->accmodone->studentInformation( $invoiceInfo->stu_id,$invoiceInfo->years );
		// print_r($studentInfo);

		// get fees category name
		$feesCategory = $this->accmodone->feesCategory( $invoiceInfo->fee_catg );
		// print_r($feesCategory);

		// divide two part
		$feesPart = explode("+", $feesCategory);
		// explode fees name
		$feesName = explode(",", $feesPart[0]);
		// explode fees id
		$feesId = explode(",", $feesPart[1]);

		// total month
		$tmonth = $invoiceInfo->to_month - $invoiceInfo->from_month + 1;

		// get waver information
		$waver = $this->accmodone->waverInformation( $studentInfo->shiftid,$studentInfo->classid,$studentInfo->section_name,$studentInfo->roll_no,$studentInfo->syear );
		

		// make table body
		$body = '';
		$tbill = 0;
		for($i = 0;$i < count($feesName);$i++):
			$tbill += $feesId[$i];
			$body .= '
					<tr>
						<td>'.$feesName[$i].' * '.$tmonth.'</td>
						<td>'.$feesId[$i].'</td>
					</tr>
				';
		endfor;

// vahicales section
		
		$vahicles = $this->accmodone->vahicalesCheckingRent( $studentInfo->shiftid,$studentInfo->classid,$studentInfo->section,$studentInfo->roll_no,$studentInfo->syear );

		if($vahicles->amount):
			$body .= '
				<tr>
					<td>Vahicales Rent * '. $tmonth.'</td>
					<td>'.$vahicles->amount*$tmonth.'</td>
				</tr>
			';
		endif;
		// end

		// if waver is setup for student
		if( $waver->discount ):
			$body .= '
					<tr>
						<td>Waver ( '.$waver->discount.' % )</td>
						<td> -'.(($tbill * $waver->discount)/100).'</td>
					</tr>
				';
		endif;
		
		// waver section part

		$body .= '
				<tr>
					<td style="text-align:right;">Total :</td>
					<td> '.$invoiceInfo->total_bill.'</td>
				</tr>
			';

			if($invoiceInfo->status):
				$style = "<style>#paymentBtn{display:none !important;}#descriptionTbl tr td{border:1px solid black;}#descriptionTbl{border-collapse: collapse;}#descriptionTbl tr th{background:#f3f3f3;border:1px solid black;}#receiptMain{width:550px;}</style>";
			endif;

		// view bill description
		echo $style.'
			<div class="panel panel-default" style="border:1px solid black;" id="receiptMain">
			<div class="panel-body">
			<table style="width:100%;" id="heading_table">
				<tbody>
					<tr>
						<td><b>Invoice No :</b> <i>'.$invo_id.'</i></td>
						<td style="float:right;"><b>Transaction No : </b><i>'.$trans_id.'</i><br/><b>Date : </b><i>'.$transDate.'</i></td>
					</tr>

					<tr>
						<td colspan="2" style="text-align:center;padding-top:20px;">
							<label class="label label-default">বেতন আদায়ের রশিদ</label>
						</td>
					</tr>
					
					<tr style="margin-top:20px;padding-top:20px;height:50px;">
						<td colspan="2" style="text-align:center;">
							<label class="label label-primary">'.$months[$invoiceInfo->from_month].'</label> <span class="glyphicon glyphicon-minus">-</span> <label class="label label-primary">'.$months[$invoiceInfo->to_month].'</label>
						</td>
					</tr>
					<tr>
						<td><b>Student Name : </b><span style="border-bottom:1px dotted green;display: block;float: right;clear:right;position:relative;right:10%;width:150px;" id="stuName" ><i>'.$studentName->name.'</i></span></td>
						<td><b>Student ID :</b> <span style="border-bottom:1px dotted green;display: block;float: right;clear:right;position:relative;right:10%;width:150px;">'.$invoiceInfo->stu_id.'</span> </td>
					</tr>
					<tr>
						<td><b>Shift : </b><span style="display:block;float:right;clear:right;width:150px;border-bottom:1px dotted green;position:relative;right:80px;padding-left:20px;"><i>'.$studentInfo->shift_N.'</i></span></td>
						<td><b>Class : </b><span style="display:block;float:right;clear:right;width:150px;border-bottom:1px dotted green;position:relative;right:50px;padding-left:20px;"><i>'.$studentInfo->class_name.'</i></span></td>
					</tr>
					<tr>
						<td><b>Section : </b><span style="display:block;float:right;clear:right;width:150px;border-bottom:1px dotted green;position:relative;right:50px;padding-left:20px;"><i>'.$studentInfo->section_name.'</i></span></td>
						<td><b>Roll : </b><span style="display:block;float:right;clear:right;width:150px;border-bottom:1px dotted green;position:relative;right:50px;padding-left:20px;"><i>'.$studentInfo->roll_no.'</i></span></td>
					</tr>
				</tbody>
			</table>

			<table class="table table-striped table-border" style="margin-top:30px;margin-left:6px;width:98%;" id="descriptionTbl">
				<thead>
					<tr>
						<th>Description</th>
						<th>Amount</th>
					</tr>
				</thead>
				<tbody>
				'.$body.'
					<tr style="height:30px;border:none !important;">
						<td style="border:none !important;"></td>
						<td style="border:none !important;"></td>
					</tr>
					<tr style="background:none !important;border:none !important;">
						<td style="background:none !important;border:none !important;">
							<span style="border-top:1px dotted black;"> হিসাব রক্ষকের স্বাক্ষর </span>
						</td>
						<td style="background:none !important;border:none !important;">
							<span style="border-top:1px dotted black;">
							আদায়কারীর স্বাক্ষর
							</span>
						</td>
					</tr>
				</tbody>
			</table>
			</div></div>
		';
	}
// bill receipt copy section end

// bill receipt copy print section start
	public function receiptCopyPrint(){
		// get transaction id
		$trans_id = $this->uri->segment(3);

		// get bill payment details
		$transInfo = $this->accmodone->billPaymentInfo( $trans_id );

		// transaction date
		$trans_d = explode(" ", $transInfo->e_date);
		$transDate = $trans_d[0];

		// get invoice no
		$invo_id = $transInfo->invoice_no;

		// get invoice information
		$invoiceInfo = $this->accmodone->invoiceInfo( $invo_id );
		
		
		$months = array(
			'1'  => 'January',
			'2'  => 'February',
			'3'  => 'March',
			'4'  => 'April',
			'5'  => 'May',
			'6'  => 'June',
			'7'  => 'July',
			'8'  => 'August',
			'9'  => 'September',
			'10' => 'October',
			'11' => 'November',
			'12' => 'December'
		);

		// echo "<pre>";
		// print_r($invoiceInfo);

		// get student name
		$studentName = $this->accmodone->studentname( $invoiceInfo->stu_id );
		// print_r($studentName);

		// get student information
		$studentInfo = $this->accmodone->studentInformation( $invoiceInfo->stu_id,$invoiceInfo->years );
		// print_r($studentInfo);

		// get fees category name
		$feesCategory = $this->accmodone->feesCategory( $invoiceInfo->fee_catg );
		// print_r($feesCategory);

		// divide two part
		$feesPart = explode("+", $feesCategory);
		// explode fees name
		$feesName = explode(",", $feesPart[0]);
		// explode fees id
		$feesId = explode(",", $feesPart[1]);

		// total month
		$tmonth = $invoiceInfo->to_month - $invoiceInfo->from_month + 1;

		// make table body
		$body = '';
		for($i = 0;$i < count($feesName);$i++):
			$body .= '
					<tr>
						<td>'.$feesName[$i].' * '.$tmonth.'</td>
						<td>'.$feesId[$i].'</td>
					</tr>
				';
		endfor;

		$body .= '
				<tr>
					<td style="text-align:right;">Total :</td>
					<td> '.$invoiceInfo->total_bill.'</td>
				</tr>
			';

			if($invoiceInfo->status):
				$style = "<style>#paymentBtn{display:none !important;}#descriptionTbl tr td{border:1px solid black;}#descriptionTbl{border-collapse: collapse;}#descriptionTbl tr th{background:#f3f3f3;border:1px solid black;}#receiptMain{width:550px;}</style>";
			endif;

		// print two copy
		for($j = 0;$j < 2;$j++):
			
			if( $j == 0 ):
				$copy = "অফিস কপি";
			elseif( $j == 1 ):
				$copy = "গ্রাহক কপি";
			endif;
		
		// view bill description
		echo $style.'
			<div class="panel panel-default" style="border:1px solid black;" id="receiptMain">
			<div class="panel-body">
			<table style="width:100%;" id="heading_table">
				<tbody>
					<tr>
						<td><b>Invoice No :</b> <i>'.$invo_id.'</i></td>
						<td style="float:right;"><b>Transaction No : </b><i>'.$trans_id.'</i><br/><b>Date : </b><i>'.$transDate.'</i></td>
					</tr>

					<tr>
						<td colspan="2" style="text-align:center;padding-top:20px;">
							<label class="label label-default" >বেতন আদায়ের রশিদ</label><br/>
							<label class="label label-default" >'.$copy.'</label>
						</td>
					</tr>
					
					<tr style="margin-top:20px;padding-top:20px;height:50px;">
						<td colspan="2" style="text-align:center;">
							<label class="label label-primary">'.$months[$invoiceInfo->from_month].'</label> <span class="glyphicon glyphicon-minus">-</span> <label class="label label-primary">'.$months[$invoiceInfo->to_month].'</label>
						</td>
					</tr>
					<tr>
						<td colspan="2"><b>Student Name : </b>
						<span style="border-bottom:1px dotted green;width: 236px;display: block;float: right;clear: right;padding-left:20px;position:relative;right:100px;"><i>'.$studentName->name.'</i></span></td>
					</tr>
					<tr>
						<td><b>Shift : </b><span style="display:block;float:right;clear:right;width:150px;border-bottom:1px dotted green;position:relative;right:80px;padding-left:20px;"><i>'.$studentInfo->shift_N.'</i></span></td>
						<td><b>Class : </b><span style="display:block;float:right;clear:right;width:150px;border-bottom:1px dotted green;position:relative;right:50px;padding-left:20px;"><i>'.$studentInfo->class_name.'</i></span></td>
					</tr>
					<tr>
						<td><b>Section : </b><span style="display:block;float:right;clear:right;width:150px;border-bottom:1px dotted green;position:relative;right:50px;padding-left:20px;"><i>'.$studentInfo->section_name.'</i></span></td>
						<td><b>Roll : </b><span style="display:block;float:right;clear:right;width:150px;border-bottom:1px dotted green;position:relative;right:50px;padding-left:20px;"><i>'.$studentInfo->roll_no.'</i></span></td>
					</tr>
				</tbody>
			</table>

			<table class="table table-striped table-border" style="margin-top:30px;margin-left:6px;width:98%;" id="descriptionTbl">
				<thead>
					<tr>
						<th>Description</th>
						<th>Amount</th>
					</tr>
				</thead>
				<tbody>
				'.$body.'
					<tr style="height:30px;border:none !important;">
						<td style="border:none !important;"></td>
						<td style="border:none !important;"></td>
					</tr>
					<tr style="background:none !important;border:none !important;">
						<td style="background:none !important;border:none !important;">
							<span style="border-top:1px dotted black;"> হিসাব রক্ষকের স্বাক্ষর </span>
						</td>
						<td style="background:none !important;border:none !important;">
							<span style="border-top:1px dotted black;">
							আদায়কারীর স্বাক্ষর
							</span>
						</td>
					</tr>
				</tbody>
			</table>
			</div></div><br/><br/>
		';

		endfor;	// for loop end
	
	}
// bill receipt copy print section end



// get all classes
	public function getClass(){
		extract($_POST);
		$data = array(
				"shiftid" => $shf
			);
		$class = $this->db->get_where("class_catg",$data)->result();

		$className = '';
		$classId = '';


		foreach( $class as $cls ):
			$className .= $cls->class_name.',';
			$classId .= $cls->classid.',';
		endforeach;

		echo substr($className,0,-1).'+'.substr($classId,0,-1);

	}

// advanced payment fee category get
	public function advanceFeeGet(){
		error_reporting(1);
		$this->load->view('account/bill_generate/advancedPayFee');
	}

	public function singleStdFee(){
		error_reporting(1);
		$this->load->view('account/bill_generate/singleStdFee');
	}


}