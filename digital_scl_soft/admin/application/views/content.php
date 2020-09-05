<?php
    $pro = $this->db->get("sprofile")->row();
?>

<style type="text/css">
    .dashboard-heading{
        font-size: 30px;
    }
    .dashboard-text{
        font-size: 20px;
        font-weight: bold;
    }
</style>

<!-- getting information -->
<?php
    $y = date("Y");
    $today = date("Y-m-d");
    $regSql = $this->db->select("sum(status) as totalstu")->from("re_admission")->where("syear",$y)->get()->row();

    $preSql = $this->db->select("stu_id")->from("attendance")->where('date',$today)->get()->result();
    $tprecount=0;
    
    foreach($preSql as $prerow){
        $tpre=explode(',',$prerow->stu_id);
        $totalpre=count($tpre);
        $tprecount=$tprecount+$totalpre;
    }

    $cash = $this->accmodone->cashBalance();   
    $bank = $this->accmodone->bankBalance();

    // todays income
    $tIncome = $this->accmodone->todayIncome();
    //echo $tIncome;exit;
    $tIncome = $tIncome?$tIncome:0;
    
    // todays expanse
    $tExpanse = $this->accmodone->todayExpanse();
    $tExpanse = $tExpanse?$tExpanse:0;

    $totalParentsCount = $this->accmodone->totalParentsCount();
    $totalTeacherCount = $this->accmodone->totalTeacherCount();

?>
<!-- php information end -->

<aside class="right-side">      <!---rightbar start here -->
                <!-- Content Header (Page header) -->
				<section>
                    <h2 style="color:#fff; font-size:30px; text-align:center; font-weight:bold; line-height:40px; margin:0px; padding:0px;
					min-height:40px; margin-left:auto; margin-right:auto; background:#00639E;">
						<span> Digital School Management System </span>
					</h2>
                </section>
				
				<section class="content-header">
                    <h1>
                        Dashboard
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="javascript:void(0);"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>

                    <!---<h3 style="position: relative;margin-top: -20px;padding-left: 350px;"><?php //echo $pro->schoolN ?></h3>--->

                </section>

                <!-- Main content -->
                <section class="content">

<div class="row">
    <div class="col-lg-12">
        
        <!-- total student section -->
        <div class="col-lg-3 col-md-6">
            <a href="javascript:void(0);">
                <div class="panel panel-default">
                    <div class="panel-body" style="background:#00639E; color:#fff;">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="fa fa-group fa-5x"></i>
                            </div>
                            <div class="col-xs-6 text-center">
                                <p class="dashboard-heading"><?php echo number_format($regSql->totalstu); ?></p>
                            </div>
                            <div class="col-xs-12">
                                <p class="dashboard-text text-center">Total Students</p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

<!-- attendent student section -->
        <div class="col-lg-3 col-md-6">
            <a href="javascript:void(0);">
                <div class="panel panel-default">
                    <div class="panel-body" style="background:#008D4C; color:#fff;">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="fa fa-male fa-5x"></i>
                            </div>
                            <div class="col-xs-6 text-center">
                                <p class="dashboard-heading"><?php echo number_format($tprecount); ?></p>
                            </div>
                            <div class="col-xs-12">
                                <p class="dashboard-text text-center">Present's Students</p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
		
		<!-- Absence  student section -->
        <div class="col-lg-3 col-md-6">
            <a href="javascript:void(0);">
                <div class="panel panel-default">
                    <div class="panel-body" style="background:#367FA9; color:#fff;">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="fa fa-male fa-5x"></i>
                            </div>
                            <div class="col-xs-6 text-center">
                                <p class="dashboard-heading"><?php echo number_format($regSql->totalstu-$tprecount); ?></p>
                            </div>
                            <div class="col-xs-12">
                                <p class="dashboard-text text-center">Absence's Students</p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

<!-- Total teacher section -->
        <div class="col-lg-3 col-md-6">
            <a href="javascript:void(0);">
                <div class="panel panel-default">
                    <div class="panel-body" style="background:#f56954; color:#fff;">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="fa fa-graduation-cap fa-5x"></i>
                            </div>
                            <div class="col-xs-6 text-center">
                                <p class="dashboard-heading"><?php echo number_format($totalTeacherCount); ?></p>
                            </div>
                            <div class="col-xs-12">
                                <p class="dashboard-text text-center">Total Teacher</p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>



    </div>
</div>

<!-- secoden dashboard section -->
<div class="row">
    <div class="col-lg-12">
	
        <!-- total parents info -->
		<div class="col-lg-3 col-md-6">
            <a href="javascript:void(0);">
                <div class="panel panel-default">
                    <div class="panel-body" style="background:#00BEED; color:#fff;">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="fa fa-user fa-5x"></i>
                            </div>
                            <div class="col-xs-6 text-center">
                                <p class="dashboard-heading"><?php echo number_format($totalParentsCount); ?></p>
                            </div>
                            <div class="col-xs-12">
                                <p class="dashboard-text text-center">Total Parents</p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
		
<!-- Total income todays -->
        <div class="col-lg-3 col-md-6">
            <a href="javascript:void(0);">
                <div class="panel panel-default">
                    <div class="panel-body" style="background:#D12B35; color:#fff;">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="fa fa-usd fa-5x"></i>
                            </div>
                            <div class="col-xs-6 text-center">
                                <p class="dashboard-heading"><?php echo number_format($tIncome); ?></p>
                            </div>
                            <div class="col-xs-12">
                                <p class="dashboard-text text-center">Total Income</p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

<!-- total expanse -->
        <div class="col-lg-3 col-md-6">
            <a href="javascript:void(0);">
                <div class="panel panel-default">
                    <div class="panel-body" style="background:#0C7ABF; color:#fff;">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="fa fa-book fa-5x"></i>
                            </div>
                            <div class="col-xs-6 text-center">
                                <p class="dashboard-heading"><?php echo number_format($tExpanse); ?></p>
                            </div>
                            <div class="col-xs-12">
                                <p class="dashboard-text text-center">Total Expanse</p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>



<!-- Cash account balance -->
        <div class="col-lg-3 col-md-6">
            <a href="javascript:void(0);">
                <div class="panel panel-default">
                    <div class="panel-body" style="background:#16A085; color:#fff;">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="fa fa-hourglass-end fa-5x"></i>
                            </div>
                            <div class="col-xs-6 text-center">
                                <p class="dashboard-heading"><?php echo number_format($cash) ?></p>
                            </div>
                            <div class="col-xs-12">
                                <p class="dashboard-text text-center">Cash Amount</p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

<!-- total bank -->
        <div class="col-lg-3 col-md-6">
            <a href="javascript:void(0);">
                <div class="panel panel-default">
                    <div class="panel-body" style="background:#72AFD2; color:#fff;">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="fa fa-bank fa-5x"></i>
                            </div>
                            <div class="col-xs-6 text-center">
                                <p class="dashboard-heading"><?php echo number_format($bank) ?></p>
                            </div>
                            <div class="col-xs-12">
                                <p class="dashboard-text text-center">Bank Amount</p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        
<!-- total balance -->
		<div class="col-lg-3 col-md-6">
            <a href="javascript:void(0);">
                <div class="panel panel-default">
                    <div class="panel-body" style="background:#6A4F93; color:#fff;">
                        <div class="row">
                            <div class="col-xs-6">
                                <i class="fa fa-cubes fa-5x"></i>
                            </div>
                            <div class="col-xs-6 text-center">
                                <p class="dashboard-heading"><?php echo number_format($cash+$bank) ?></p>
                            </div>
                            <div class="col-xs-12">
                                <p class="dashboard-text text-center">Total Balance</p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
		
    </div>
</div>

	


</section><!-- /.content -->

<h2 style="color:#fff; font-size:20px; text-align:center; font-weight:bold; line-height:30px; margin:0px; padding:0px;
	min-height:40px; margin-left:auto; margin-right:auto; background:#00639E;">
	<span> &copy; copyright <a href="http://gatewayit.net"  target="_blank" style="color:#fff;">@DIGITAL SCHOOL</a></span>
</h2>

</aside><!-- /.right-side -->     <!---rightbar close here ---->
			
			