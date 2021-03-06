<base href="<?php echo base_url() ?>" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="js/update_jquery.min.js"></script>

<?php
	$w = '1';
	if(isset($_POST['submitsearch'])):
		extract($_POST);
		$data = array();
		
		// search by only account no
		if($accnumber):$data['accountid'] = $accnumber;endif;
		if($categoryid):$data['trans_catg'] = $categoryid;endif;
		if($method):$data['trans_method'] = $method;endif;
		if($month):$data['month'] = $month;endif;
		if($year):$data['year'] = $year;endif;
		
		if($sdate && !($edate)):
			$w = "date(e_date) BETWEEN date('".$sdate."') AND date('".date("Y-m-d")."')";
		elseif($edate && !($sdate)):
			$w = "date(e_date) BETWEEN date('".date("Y-m-d")."') AND date('".$edate."')";
		elseif($sdate && $edate):
			$w = "date(e_date) BETWEEN date('".$sdate."') AND date('".$edate."')";
		endif;

	else:
		$data = array();
	endif;
?>

<style type="text/css">
	#repoHead{
		border: 1px solid black !important;
		width: 300px;
		margin-left: 40%;
		padding: 5px;
		margin-top: 10px;
		margin-bottom: 15px;
		font-weight: bold;
	}

	@media print{
		
		#printHeading{
			display: none;
		}

		#entryBtn{
			display: none;
		}

		#resultRepo{
			border: none !important;
			width: 100% !important;
		}
	}

</style>

<div class="panel panel-success" id="printHeading" >
<div class="panel-body">
<form class="form-horizontal" role="form" action="" method="post">
	<div class="form-group">
		
		<div class="col-sm-2">   						
			<select class="form-control" name="accnumber" >
				<option value="">Account No</option>
				<?php 
					$sqlacc=$this->db->select('*')->from('account_cre')->get()->result();										
					foreach($sqlacc as $accidshow){
				?>
				<option value="<?php echo $accidshow->accountid?>" <?php if($accnumber == $accidshow->accountid){echo "SELECTED";}?>><?php echo $accidshow->acc_name.'('. $accidshow->accountid.')'?></option>
				<?php }?>
			</select>
		</div>

		<div class="col-sm-2">   						
			<select class="form-control" name="categoryid">
				<option value="">Expanse Category</option>
				<?php 
					$sqlaccs=$this->db->select('*')->from('expance_catg')->get()->result();										
					foreach($sqlaccs as $accidshows){
				?>
				<option value="<?php echo $accidshows->id ?>" <?php if($categoryid==$accidshows->id){echo "SELECTED";}?>><?php echo $accidshows->expance_type?></option>
				<?php }?>
			</select>
		</div>	
								
		<div class="col-sm-2" style="width: 140px;">
			<select name="method"  class="form-control" id="method">
				<option value="">Method</option>
				<option value="1" <?php if(isset($method)):if($method == 1):echo "Selected";endif;endif; ?> >Cash</option>
				<option value="2" <?php if(isset($method)):if($method == 2):echo "Selected";endif;endif; ?> >Check</option>
			</select>
		</div>

		<div class="col-sm-2" style="width: 140px;">
			<select name="month"  class="form-control" id="month">
				<option value="">Month</option>
			<?php
				for($j = 1;$j <= 12;$j++):
					$monthNm = $this->accmodone->getMonthName($j);
			?>
				<option value="<?php echo $j ?>" <?php if($month):if($j == $month):echo "Selected";endif;endif; ?> ><?php echo $monthNm ?></option>
			<?php endfor; ?>
			</select>
		</div>

		<div class="col-sm-1" style="width: 110px;">
			<select name="year" class="form-control" id="year">
				<option value="">Year</option>
			
			<?php
				for($i = 2015;$i <= date("Y")+1;$i++):
			?>
			
				<option value="<?php echo $i ?>" <?php if(isset($year)):if($year == $i):echo "Selected";endif;endif; ?> ><?php echo $i ?></option>
			
			<?php endfor; ?>
			</select>
		</div>

		<div class="col-sm-1" style="width: 120px;">
			<input type="text" name="sdate"  class="form-control" id="sdate" placeholder="Start Date" value="<?php if($sdate):echo $sdate;endif ?>"/>
		</div>
								
		<div class="col-sm-1" style="width: 120px;">
			<input type="text" name="edate"  class="form-control" id="edate" placeholder="End Date" value="<?php if($edate):echo $edate;endif ?>"/>
		</div>
								
		<div class="col-sm-1">
			<input type="submit" class="btn btn-primary" name="submitsearch"  class="form-control" value="Search"/>
		</div>

		<div class="col-sm-1">
			<input type="button" class="btn btn-danger" id = "printRepo"  class="form-control" value="Print" onclick="window.print()" />
		</div>
	</div>
</form>
</div>
</div>

<?php
	if(isset($_POST['submitsearch'])):
		$schoolInfo = $this->accmodone->schoolInfo();
		$m = $month;
?>

<div class="panel panel-default" id="resultRepo">
<div class="panel-body">
	<h3 style="text-align: center;">
		<?php echo $schoolInfo->schoolN ?>
	</h3>
	<b style="margin-left: 45%;">
		<?php if($month != ''):echo "Monthly Report";else:echo "Custom Report";endif; ?>
	</b><br/>
	<b style="margin-left: 45%;">Expanse Report</b><br/>

	<table id="repoHead">
		<tr>
			<td>Month :</td>
			<td><?php echo $this->accmodone->getMonthName($month); ?></td>
			<td>Year :</td>
			<td><?php echo $year ?></td>
		</tr>
	</table>
	
<table id="example1" class="table table-bordered table-striped">
	<thead>
		<tr>
			<th>SI</th>
			<th>Account No</th>
			<th>Transaction No</th>										
			<th>Invoice No</th>										
			<th>Purpose</th>
			<th>Method</th>			
			<th>Check No</th>					
			<th>Refference</th>		
			<th>Amount</th>			
			<th>Transaction Date</th>				
		</tr>
	</thead>

	<tbody>

<?php
	$si = 0;
	$total = 0;

	$expanseState = $this->accmodone->expanseStatement( $data,$w );

	foreach($expanseState as $inSt):
		$si++;

		// get transaction purpose
			$purpose = $this->accmodone->expanseTransactionType($inSt->trans_catg);

		// transaction method
		if($inSt->trans_method == 1):$method = "Cash";
		elseif($inSt->trans_method == 2):$method = "Check";
		endif;

		// get month name
		$month = $this->accmodone->getMonthName($inSt->month);

?>

		<tr>
			<td><?php echo $si ?></td>
			<td><?php echo $inSt->accountid ?></td>
			<td><?php echo $inSt->trans_id ?></td>
			<td><?php echo $inSt->invoice_no ?></td>
			<td><?php echo $purpose ?></td>
			<td><?php echo $method ?></td>
			<td><?php if($inSt->check_no):echo $inSt->check_no;endif; ?></td>
			<td><?php if($inSt->pay_person):echo $inSt->pay_person;endif; ?></td>
			<td><?php if($inSt->credit):echo $inSt->credit;$total += $inSt->credit;endif; ?></td>
			<td><?php echo $inSt->e_date ?></td>
		</tr>
<?php
	endforeach;
?>
	<tr>
		<td colspan="8" style="text-align: right;">Total :</td>
		<td><?php echo $total; ?></td>
		<td></td>
	</tr>

	</tbody>
</table>


<?php

	$handCash = $this->accmodone->expHandCash();
	$bankBalance = $this->accmodone->expBankBalance();
	$totalIncome = $this->accmodone->currentTotalIncome();

?>

<table class="table table-bordered table-striped" style="width: 450px;float: right;">
	<tr>
		<td>Total Income :</td>
		<td style="text-align: right;"><?php echo $totalIncome?$totalIncome:0; ?></td>
		<td>Hand Cash :</td>
		<td style="text-align: right;"><?php echo $handCash?$handCash:0 ?></td>
	</tr>
	<tr>
		<td>Total Expanse :</td>
		<td style="text-align: right;"><?php echo $total?$total:0; ?></td>
		<td>Bank Balance :</td>
		<td style="text-align: right;"><?php echo $bankBalance?$bankBalance:0; ?></td>
	</tr>
	<tr>
		<td>Total </td>
		<td><?php echo $totalIncome - $total; ?></td>
		<td></td>
		<td><?php echo $handCash + $bankBalance; ?></td>
	</tr>
</table>


<form action="accountReport/monthlyExpClosing" method="post">
	
	<input type="hidden" name="totalExp" value="<?php echo $total; ?>" />
	<input type="hidden" name="handCash" value="<?php echo $handCash; ?>" />
	<input type="hidden" name="bankCash" value="<?php echo $bankBalance; ?>" />
	<input type="hidden" name="month" value="<?php echo $m; ?>" />
	<input type="hidden" name="year" value="<?php echo $year; ?>" />
	
	<button type="submit" name="monthClosing" id="entryBtn" class="btn btn-primary" style="position: relative;top: 150px;left: 600px;" onclick="return confirm('Are Sure to close this month accounting ?');" >Month Closing</button>
</form>

</div>
</div>

<?php
	endif;
?>