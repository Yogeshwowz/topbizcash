<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Administrator extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this
            ->load
            ->helper('url');
        $this
            ->load
            ->library('session');
        $this
            ->load
            ->config('email');
        $this
            ->load
            ->library('email');
        $this
            ->load
            ->model('administrator_model');
			$this->load->model('Dashboard_model');
			 $this->load->library('zip');
    }
    function logout()
    {
        session_start();
        session_destroy();
        unset($_SESSION);
        session_regenerate_id(true);
        redirect('administrator');
    }
    public function login(){
        if (!empty($_POST['SignIn']))
        {
            $email = $this
                ->input
                ->post('email');
            $password = $this
                ->input
                ->post('password');
            $result = $this
                ->administrator_model
                ->loginMe($email, $password);
            if ($result)
            {
				if($result['status']==1){
					$sessionArray = array(
						'user_id' => $result['userId '],
						'role' => $result['role_id']
					);
					$this
						->session
						->set_userdata($sessionArray);
					redirect('administrator/dashboard');
				}
				else{
					$this
						->session
						->set_flashdata('error', 'Your account has been be suspended.Please contact with administrator');
					$this
						->load
						->view('/administrator/login');
				}	
            }
            else
            {
                $this
                    ->session
                    ->set_flashdata('error', 'Email or password does not match');
                $this
                    ->load
                    ->view('/administrator/login');
            }
        }
        else
        {
            $this
                ->load
                ->view('/administrator/login');
        }
    }

    public function dashboard(){
       $data['pageTitle'] = '';
	    $data['allApplicationCount'] = $this->administrator_model->getAllApplicationCount();
	    $data['completeApplicationCount'] = $this->administrator_model->completeApplicationCount();
	    $data['pendingApplicationCount'] = $this->administrator_model->pendingApplicationCount();
	    $this->load->view('administrator/includes/header', $data);
        $this->load->view('administrator/dashboard');
        $this->load->view('administrator/includes/footer');
	}
	function users(){
		$data['userRecords'] = $this->administrator_model->users();
		$pageTitle['pageTitle'] = "User Listing";
		$this->load->view('administrator/includes/header',$pageTitle);
		$this->load->view('administrator/users',$data);
		$this->load->view('administrator/includes/footer');
    }
	
	public function userdetails($id){
       $data['pageTitle'] = '';
	    $data['info'] = $this->administrator_model->getinfo($id);
	    $data['records'] = $this->administrator_model->getUserInfo($id);

		$data['additional_files'] = $this->administrator_model->additional_files($id);
		     // Read file from path
     if(!empty($_POST['but_createzip1'])){

		$csvnamezip = date("d-m-Y").'_'.rand().' properties.zip';
        // File path
		foreach($data['additional_files'] as $value){
			$this->zip->read_file($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$value['files_name']);
		}
		if(!empty($data['records']['filename_1'])){
			$this->zip->read_file($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$data['records']['filename_1']);
		}
		if(!empty($data['records']['myfile'])){
			$this->zip->read_file($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$data['records']['myfile']);
		}
		if(!empty($data['records']['myfile2'])){
			$this->zip->read_file($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$data['records']['myfile2']);
		}
		if(!empty($data['records']['myfile3'])){
			$this->zip->read_file($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$data['records']['myfile3']);
		}
		if(!empty($data['records']['myfile4'])){
			$this->zip->read_file($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$data['records']['myfile4']);
		}
		if(!empty($data['records']['myfile5'])){
			$this->zip->read_file($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$data['records']['myfile5']);
		}
		if(!empty($data['records']['myfile6'])){
			$this->zip->read_file($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$data['records']['myfile6']);
		}
		if(!empty($data['records']['myfile7'])){
			$this->zip->read_file($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$data['records']['myfile7']);
		}
		if(!empty($data['records']['myfile8'])){
			$this->zip->read_file($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$data['records']['myfile8']);
		}
		
		
		$this->zip->archive($_SERVER['DOCUMENT_ROOT'].'/assets/upload/signature/'.$csvnamezip);
       
        // Download
       $this->zip->download($csvnamezip);
		

     }
		
		$this->load->view('administrator/includes/header', $data);
		$this->load->view('administrator/userdetails');
		$this->load->view('administrator/includes/footer');
	}
	function deleteMember(){
			$data = $this->administrator_model->deleteMember();
			echo $data;
			
	}
	public function createFaq(){
		$data['pageTitle'] = 'Create FAQ';
		if(!empty($_POST['create-submit'])){
			$data = $this->administrator_model->addFaq();
			$this->session->set_flashdata('success', 'Faq has been added successfully.');	
			redirect('administrator/create-faq');
		}
		$this
            ->load
            ->view('administrator/includes/header');
        $this
            ->load
            ->view('administrator/faq/create-faq', $data);
       $this
            ->load
            ->view('administrator/includes/footer');
    }
	public function faq(){
		$data['faq'] = $this->administrator_model->faq();
		$pageTitle['pageTitle'] = "Faq";
		$this->load->view('administrator/includes/header',$pageTitle);
		$this->load->view('administrator/faq/faq',$data);
		$this->load->view('administrator/includes/footer');
    }
    public function deleteFaq(){
			$data = $this->administrator_model->deleteFaq();
			echo $data;
			
	}
	public function editFaq($id){
		$data['pageTitle'] = 'Edir FAQ';
		$data['result'] = $this->administrator_model->editFaq($id);

		if(!empty($_POST['create-submit'])){
			$data = $this->administrator_model->UpdateFaq($id);
			$this->session->set_flashdata('success', 'Faq has been Updated successfully.');	
			redirect('administrator/edit-faq/'.$id);
		}
		$this
            ->load
            ->view('administrator/includes/header');
        $this
            ->load
            ->view('administrator/faq/edit-faq', $data);
       $this
            ->load
            ->view('administrator/includes/footer');
    }
    public function contactUs(){
		$data['contactUs'] = $this->administrator_model->contactUs();
		$pageTitle['pageTitle'] = "contactUs";
		$this->load->view('administrator/includes/header',$pageTitle);
		$this->load->view('administrator/contact-us',$data);
		$this->load->view('administrator/includes/footer');
    }

	
}
	
?>
