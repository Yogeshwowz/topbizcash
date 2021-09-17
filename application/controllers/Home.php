<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
  public function __construct(){
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
        $this->load->model('Dashboard_model');
		$this->load->library('pdf');
		$this->load->config('email');
		$this->load->library('email');
		$this->load->model('administrator_model');
        
    }
    
	public function index(){
		
		if(!empty($this->session->userdata('user_id'))){
			redirect('loan-application-process-form');
		}else{	
		
			$data['Title'] ="";
			$this->load->view('templates/header');
			$this->load->view('pages/index',$data);
			$this->load->view('templates/footer');
		}
	}
	public function registerByHome(){
		$data['Title'] ="";
		$this->load->view('templates/inner-header');
		$this->load->view('pages/register-by-home',$data);
		$this->load->view('templates/inner-footer');
	}
	public function userRegistration(){
		$data = $this->Dashboard_model->userRegistration();
		echo $data;
	}
	public function register(){
		$data['Title'] ="";
		$data['state'] = $this->Dashboard_model->state();
		$this->load->view('templates/header');
		$this->load->view('pages/register',$data);
		$this->load->view('templates/footer');
	}
	
	
	public function login(){
		$data['Title'] ="";
		$this->load->view('templates/inner-header');
		$this->load->view('pages/login',$data);
		$this->load->view('templates/inner-footer');
	}
	public function userLogin(){
		$data = $this->Dashboard_model->userLogin();
		echo $data;
	}
	
	function logout(){
		session_start(); 
		session_destroy();
		unset($_SESSION);
		session_regenerate_id(true);
		redirect('/');
    }
	public function loanApplicationProcessForm(){
		$data['Title'] ="";
		$data['ownership'] = $this->Dashboard_model->ownership();
		$data['merchant'] = $this->Dashboard_model->merchant();
		$data['card'] = $this->Dashboard_model->card();
		$data['state'] = $this->Dashboard_model->state();
		$data['state_1'] = $this->Dashboard_model->state();
		$data['records'] = $this->Dashboard_model->getUserInfo();
		$data['additional_files'] = $this->Dashboard_model->additional_files();
		$this->load->view('templates/inner-header');
		$this->load->view('pages/loan-application-process-form',$data);
		$this->load->view('templates/inner-footer');
	}
	public function step1(){
		$data = $this->Dashboard_model->businessinformation();
		echo $data;
	}
	public function step2(){
		$data = $this->Dashboard_model->ownershipinformation();
		echo $data;
	}
	public function step3(){
		$data = $this->Dashboard_model->landlordinformation();
		echo $data;
	}
	public function step4(){
		$data = $this->Dashboard_model->business_profileinformation();
		echo $data;
	}
	public function step5(){
		$data = $this->Dashboard_model->cash_advanceinformation();
		echo $data;
	}
	public function step6(){
		$data = $this->Dashboard_model->otherinformation_information();
		echo $data;
	}
	public function step7(){
		$data = $this->Dashboard_model->signatured_information();
		$records = $this->Dashboard_model->getUserInfo();
		$additional_files = $this->Dashboard_model->additional_files();
		$html = $this->load->view('pages/GeneratePreviousView', ['records'=>$records,'additional_files'=>$additional_files], true);
		
		$array = array();
		$array['f']=$data;
		$array['html']=$html;
		
		echo  json_encode($array);
	}
	
	
	function multipleImageStore(){
		$data = $this->Dashboard_model->multipleImageStore();
		echo $data;
	}
	public function forgotPassword(){
		$data['Title'] ="";
		$this->load->view('templates/inner-header');
		$this->load->view('pages/forgot-password',$data);
		$this->load->view('templates/inner-footer');
	}
	public function randomPassword() {
		$alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
		$pass = array(); //remember to declare $pass as an array
		$alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
		for ($i = 0; $i < 8; $i++) {
			$n = rand(0, $alphaLength);
			$pass[] = $alphabet[$n];
		}
		return implode($pass); 
	}
	
	public function userForgotPassword(){
		$password = $this->randomPassword();
		$data = $this->Dashboard_model->userForgotPassword($password);
		if($data==2){
		parse_str($_POST['formdata'], $searcharray);
		$to = $searcharray['email'];
		$subject = "New Password";
		$message ="<html>
				<head>
				<title>Topbizcash</title>
				</head>
				<body>
				<p>Hello User</p>
				<table>
				<tr>
				<td><p>Thanks You for Create New Password</p></td>
				</tr>
				<tr>
				<td><p>Your new password= ".$password."</p></td>
				</tr>
				<tr>
				<td><p>Please login with your valid Credentials</p>
				<p><a href='https://topbizcash.com/login'>Click To Login</a></p></td>
				</tr>
				<tr><td><p>Best Regards,</p></td>
				</tr>
				</tr>
				<tr><td><p>Topbizcash</p></td>
				</tr>
				</table>
				</body>
				</html>";
				$sendmail = $this->send($to,$subject,$message);
				if($sendmail){
					echo 2;
				}else{
					echo 1;
				}
	     	}else{
				echo $data;
			}				
				
	}
	public function generatePdf(){
		$filename ="pdf-".uniqid().'-'.$this->session->userdata('user_id');
		$records = $this->Dashboard_model->getUserInfo();
		$html = $this->load->view('GeneratePdfView', ['records'=>$records], true);
		$this->pdf->loadHtml($html);
        $this->pdf->set_option('isRemoteEnabled', true);
        $this->pdf->render();
		$this->pdf->stream("ffff.pdf", array("Attachment"=>0));
        $output = $this->pdf->output();
        $folderPath = "./assets/upload/signature/".$filename.".pdf";
	    file_put_contents($folderPath, $output);
	    $to = $this->session->userdata('email');
		$subject = "Generate Pdf File";
		$pdflink = "https://topbizcash.com/assets/upload/signature/".$filename.".pdf";
		
		$message ="<html>
				<head>
				<title>Topbizcash</title>
				</head>
				<body>
				<p>Hello User</p>
				<table>
				<tr>
				<td><p>Thank you for submitting your application to topbizcash.com.  Our goal is to make this process quick and easy.  
				Your application is currently under review by our loan processing department.  
				We will contact you if we have any questions or require additional information regarding your application. 
				Once the initial review is complete we will forward your application to the underwriting and funding departments.  
				Thank you for partnering with topbizcash.com to grow your business to the next level. </p>
			
				</tr>
				<tr>
				<td><p>Please Check your Pdf file bellow here:</p>
				<p><a href='".$pdflink."'>Click To Download</a></p></td>
				</tr>
				<tr><td><p>Best Regards,</p></td>
				</tr>
				</tr>
				<tr><td><p>Topbizcash</p></td>
				</tr>
				</table>
				</body>
				</html>";
				$sendmail = $this->send($to,$subject,$message);
				
				if($sendmail){						
				$data = [								
					'filename' => $filename.".pdf"					
				];						
				$this->db->where('user_id', $this->session->userdata('user_id'));						
				$this->db->update('tbl_userinformation', $data);
					echo 2;
				}else{
					echo 1;
				}
	}
	public function admingeneratePdf(){
		$filename_1 ="pdf-generate-".uniqid().'-'.$this->session->userdata('user_id');
		$records = $this->Dashboard_model->getUserInfo();
		$ownership = $this->Dashboard_model->ownership();
		$merchant= $this->Dashboard_model->merchant();
		$card= $this->Dashboard_model->card();
	
		$html_1 = $this->load->view('GeneratePdfView-1', ['records'=>$records,'ownership'=>$ownership,'merchant'=>$merchant,'card'=>$card], true);
   
        $this->pdf->loadHtml($html_1);
		$this->pdf->set_option('isRemoteEnabled', true);
        $this->pdf->render();
		$this->pdf->stream("ffff.pdf", array("Attachment"=>0));
      
        $output_1 = $this->pdf->output();
		$folderPath_1 = "./assets/upload/signature/".$filename_1.".pdf";
	   file_put_contents($folderPath_1, $output_1);
		
		$adminto = "ozarkconsulting2013@gmail.com";
		//$adminto = "keshav.wowz@gmail.com";
		
		//$adminto = "harsh.wowz@gmail.com";
		$subject = "Generate Pdf File";
		
		$pdflink_1 = "https://topbizcash.com/assets/upload/signature/".$filename_1.".pdf";
		$message_1 ="<html>
				<head>
				<title>Topbizcash</title>
				</head>
				<body>
				<p>Hello Admin,</p>
				<table>
				<tr>
				<td><p>You have received a Loan Application request</p>
				
				</td>
				</tr>
			
				<tr>
				<td><p>Please check here using this link <a href='".$pdflink_1."'>Click To Download</a></p>
				</td>
				</tr>
				<tr><td><p>Best</p></td>
				</tr>
				
				<tr><td><p>Topbizcash Team.</p></td>
				</tr>
				</table>
				</body>
				</html>";
				$sendmail_1 = $this->send($adminto,$subject,$message_1);		
				
				
				
				if($sendmail_1){					
				$data = [						
				'filename_1' => $filename_1.".pdf"				
				];					
				$this->db->where('user_id', $this->session->userdata('user_id'));					
				$this->db->update('tbl_userinformation', $data);
					echo 2;
				}else{
					echo 1;
				}
	}
	
	
	
	
	  function send($to,$subject,$message) {
        $this->load->config('email');
        $this->load->library('email');
        $from = $this->config->item('smtp_user');
        $to = $to;
        $subject = $subject;
        $message = $message;

        $this->email->set_newline("\r\n");
        $this->email->from($from);
        $this->email->to($to);
        $this->email->subject($subject);
        $this->email->message($message);

        if ($this->email->send()) {
			return 1;
          
        } else {
			return 0;
           
        }
    }
    function deleteadditionalFiles(){
		$data = $this->Dashboard_model->deleteadditionalFiles();
		echo $data;
	}
	public function contactForm(){
		parse_str($_POST['formdata'], $searcharray);
		 $contactName = $searcharray['first_name'].' '.$searcharray['last_name'];
        $data = array(
			'contactName' =>$contactName,
			'contactEmail' =>$searcharray['email'],
			'contactPhone' =>$searcharray['phone'],
			'contactMessage' =>$searcharray['message'],
			'created_date' =>date('y-m-d')
			
		);
		$result = $this->db->insert('tbl_contact', $data);
		
		
		
		
	  $to = "ozarkconsulting2013@gmail.com";
	
		$subject = "Notification of Contact Form";
		$message ="<html>
				<head>
				<title>Ozark Consulting </title>
				</head>
				<body>
				<p>Hello Admin</p>
				<table>
				<tr>
				<td><p>Contact Form Details</p></td>
				</tr>
				<tr>
				<td>First Name</td>
				<td><p>".$searcharray['first_name']."</p></td>
				</tr>
				<tr>
				<td>Last Name</td>
				<td><p>".$searcharray['last_name']."</p></td>
				</tr>
				<tr>
				<td>Phone</td>
				<td><p>".$searcharray['phone']."</p></td>
				</tr>
				<tr>
				<td>Email</td>
				<td><p>".$searcharray['email']."</p></td>
				</tr>
				<tr>
				<td>Message</td>
				<td><p>".$searcharray['message']."</p></td>
				</tr>
				
				<tr><td><p>Best</p></td>
				</tr>
				</tr>
				<tr><td><p>Ozark Consulting Team.</p></td>
				</tr>
				</table>
				</body>
				</html>";
				$sendmail = $this->send($to,$subject,$message);
				if($sendmail){
					echo 2;
				}else{
					echo 1;
				}
	     	}				
				
	    public function faq(){
	    	$data['Title'] ="";
	    	$data['faq'] = $this->administrator_model->faq();
	    	$this->load->view('pages/faq',$data);
		}
		public function contactUs(){
			$data['Title'] ="";
			$this->load->view('pages/contact-us',$data);
		}
	
	
}
