<?php

	class Dashboard_model extends CI_Model {
		
		protected $state = 'tbl_states';
		protected $users = 'tbl_users';
		protected $userinformation = 'tbl_userinformation';
		protected $business_profile = 'tbl_business_profile';
		protected $additional_files = 'additional_files';
		
		
		public function __construct(){
			parent::__construct();
			$this->load->database();
		}
   function state(){
		$this->db->from($this->state);
		$query = $this->db->get();
		return $query->result();
    }
	function getUserInfo(){
		$this->db->where('user_id',$this->session->userdata('user_id'))->from($this->userinformation);
		$query = $this->db->get();
		return $query->row_array();
    }
	function userRegistration(){
		parse_str($_POST['formdata'], $searcharray);
		$this->db->where('email',$searcharray['email'])->from($this->users);
		$query = $this->db->get();
		$num = $query->num_rows();
		if($num >0){
			return 1;
		}else{
			$data = array(
							'first_name' => $searcharray['first_name'],
							'last_name' => $searcharray['last_name'],
							'email' => $searcharray['email'],
							'password' => md5($searcharray['password']),
							'plain_password' => $searcharray['password'],
							'role_id' => 2,
							'created_date' => date("Y-m-d H:i:s")
						);
						
			$result = $this->db->insert($this->users, $data);
			$lastID = $this->db->insert_id();
			
			$user_data = array(
				'user_id' => $lastID,
				'email' => $searcharray['email'],
				'name' => $searcharray['first_name'],
				'role' => 2
			);
           $this->session->set_userdata($user_data); 
			return 2;
			
		}
	}
	function userLogin(){
		$browser_id =session_id();
		parse_str($_POST['formdata'], $searcharray);
		$this->db->where('email',$searcharray['email']);
		$this->db->where('password',md5($searcharray['password']));
		$this->db->from($this->users);
		$query = $this->db->get();
		$num = $query->num_rows();
		if($num >0){
			$user_id = $query->row_array();
			$user_data = array(
				'user_id' => $user_id['userId'],
				'email' => $user_id['email'],
				'name' => $user_id['first_name'],
				'role' => $user_id['role_id']
			);
           $this->session->set_userdata($user_data); 
		  return 2;
			
		}else{
			return 1;
		}
		
	}
	function businessinformation(){
		parse_str($_POST['formdata'], $searcharray);
		if(!empty($searcharray['business_name'])){
			$business_name = $searcharray['business_name'];
		}else{
			$business_name ='';
		}
		if(isset($searcharray['business_dba_r'])){
			$business_dba_r = $searcharray['business_dba_r'];
		}else{
			$business_dba_r ='';
		}
		if(!empty($searcharray['business_dba'])){
			$business_dba = $searcharray['business_dba'];
		}else{
			$business_dba ='';
		}
		if(!empty($searcharray['business_physical_address'])){
			$business_physical_address = $searcharray['business_physical_address'];
		}else{
			$business_physical_address ='';
		}
		if(!empty($searcharray['business_city'])){
			$business_city = $searcharray['business_city'];
		}else{
			$business_city ='';
		}
		if(!empty($searcharray['business_state'])){
			$business_state = $searcharray['business_state'];
		}else{
			$business_state ='';
		}
		if(!empty($searcharray['business_zip'])){
			$business_zip = $searcharray['business_zip'];
		}else{
			$business_zip ='';
		}
		if(!empty($searcharray['business_phone'])){
			$business_phone = $searcharray['business_phone'];
		}else{
			$business_phone ='';
		}
		if(!empty($searcharray['business_fax_r'])){
			$business_fax_r = $searcharray['business_fax_r'];
		}else{
			$business_fax_r ='';
		}
		if(!empty($searcharray['business_fax'])){
			$business_fax = $searcharray['business_fax'];
		}else{
			$business_fax ='';
		}
		if(!empty($searcharray['business_federal_tax_id'])){
			$business_federal_tax_id = $searcharray['business_federal_tax_id'];
		}else{
			$business_federal_tax_id ='';
		}
		if(!empty($searcharray['business_contact_no'])){
			$business_contact_no = $searcharray['business_contact_no'];
		}else{
			$business_contact_no ='';
		}
		if(!empty($searcharray['business_email'])){
			$business_email = $searcharray['business_email'];
		}else{
			$business_email ='';
		}
		if(!empty($searcharray['business_website_r'])){
			$business_website_r = $searcharray['business_website_r'];
		}else{
			$business_website_r ='';
		}
		if(!empty($searcharray['business_website'])){
			$business_website = $searcharray['business_website'];
		}else{
			$business_website ='';
		}
		if(!empty($searcharray['business_date'])){
			$business_date = $searcharray['business_date'];
		}else{
			$business_date ='';
		}
		if(!empty($searcharray['business_length_of_ownership_month'])){
			$business_length_of_ownership_month = $searcharray['business_length_of_ownership_month'];
		}else{
			$business_length_of_ownership_month ='';
		}
		if(!empty($searcharray['business_length_of_ownership_year'])){
			$business_length_of_ownership_year = $searcharray['business_length_of_ownership_year'];
		}else{
			$business_length_of_ownership_year ='';
		}
		if(!empty($searcharray['business_year_at_location_month'])){
			$business_year_at_location_month = $searcharray['business_year_at_location_month'];
		}else{
			$business_year_at_location_month ='';
		}
		
		if(!empty($searcharray['business_year_at_location_month_year'])){
			$business_year_at_location_month_year = $searcharray['business_year_at_location_month_year'];
		}else{
			$business_year_at_location_month_year ='';
		}
		
		if(!empty($searcharray['business_locations'])){
			$business_locations = $searcharray['business_locations'];
		}else{
			$business_locations ='';
		}
		
		
		$this->db->where('user_id',$this->session->userdata('user_id'))->from($this->userinformation);
		$query = $this->db->get();
		$num = $query->num_rows();
		if($num >0){
			$data = array(
					'business_name' => $business_name,
					'business_dba_r' => $business_dba_r,
					'business_dba' => $business_dba,
					'business_physical_address' => $business_physical_address,
					'business_city' => $business_city,
					'business_state' => $business_state,
					'business_zip' => $business_zip,
					'business_phone' => $business_phone,
					'business_fax_r' => $business_fax_r,
					'business_fax' => $business_fax,
					'business_federal_tax_id' => $business_federal_tax_id,
					'business_contact_no' => $business_contact_no,
					'business_email' => $business_email,
					'business_website_r' => $business_website_r,
					'business_website' => $business_website,
					'business_date' => $business_date,
					'business_length_of_ownership_month' => $business_length_of_ownership_month,
					'business_length_of_ownership_year' => $business_length_of_ownership_year,
					'business_year_at_location_month' => $business_year_at_location_month,
					'business_year_at_location_month_year' => $business_year_at_location_month_year,
					'business_locations' => $business_locations,					'step' => 1
				);
				$this->db->where('user_id', $this->session->userdata('user_id'));
				$result = $this->db->update($this->userinformation, $data);
				if($result){
					return 1;
				}
				
		}else{
			$data = array(
					'user_id' => $this->session->userdata('user_id'),
					'business_name' => $business_name,
					'business_dba_r' => $business_dba_r,
					'business_dba' => $business_dba,
					'business_physical_address' => $business_physical_address,
					'business_city' => $business_city,
					'business_state' => $business_state,
					'business_zip' => $business_zip,
					'business_phone' => $business_phone,
					'business_fax_r' => $business_fax_r,
					'business_fax' => $business_fax,
					'business_federal_tax_id' => $business_federal_tax_id,
					'business_contact_no' => $business_contact_no,
					'business_email' => $business_email,
					'business_website_r' => $business_website_r,
					'business_website' => $business_website,
					'business_date' => $business_date,
					'business_length_of_ownership_month' => $business_length_of_ownership_month,
					'business_length_of_ownership_year' => $business_length_of_ownership_year,
					'business_year_at_location_month' => $business_year_at_location_month,
					'business_year_at_location_month_year' => $business_year_at_location_month_year,
					'business_locations' => $business_locations,
					'created_date' => date("Y-m-d H:i:s"),					'step' => 1
				);
			$result = $this->db->insert($this->userinformation, $data);
			if($result){
				return 1;
			}
		}
	}
	
	function ownershipinformation(){
		parse_str($_POST['formdata'], $searcharray);
		
		if(isset($searcharray['ownership_r'])){
			$ownership_r = $searcharray['ownership_r'];
		}else{
			$ownership_r ='';
		}
		if(!empty($searcharray['ownership_name'])){
			$ownership_name = $searcharray['ownership_name'];
		}else{
			$ownership_name ='';
		}
		if(!empty($searcharray['ownership_contact_phone_number'])){
			$ownership_contact_phone_number = $searcharray['ownership_contact_phone_number'];
		}else{
			$ownership_contact_phone_number ='';
		}
		if(!empty($searcharray['ownership_adddress'])){
			$ownership_adddress = $searcharray['ownership_adddress'];
		}else{
			$ownership_adddress ='';
		}
		if(!empty($searcharray['ownership_city'])){
			$ownership_city = $searcharray['ownership_city'];
		}else{
			$ownership_city ='';
		}
		if(!empty($searcharray['ownership_state'])){
			$ownership_state = $searcharray['ownership_state'];
		}else{
			$ownership_state ='';
		}
		if(!empty($searcharray['ownership_zip'])){
			$ownership_zip = $searcharray['ownership_zip'];
		}else{
			$ownership_zip ='';
		}
		if(!empty($searcharray['ownership_dob'])){
			$ownership_dob = $searcharray['ownership_dob'];
		}else{
			$ownership_dob ='';
		}
		if(!empty($searcharray['ownership_ssn'])){
			$ownership_ssn = $searcharray['ownership_ssn'];
		}else{
			$ownership_ssn ='';
		}
		if(!empty($searcharray['ownership_of_company'])){
			$ownership_of_company = $searcharray['ownership_of_company'];
		}else{
			$ownership_of_company ='';
		}
		if(!empty($searcharray['ownership_title'])){
			$ownership_title = $searcharray['ownership_title'];
		}else{
			$ownership_title ='';
		}
		
		$this->db->where('user_id',$this->session->userdata('user_id'))->from($this->userinformation);
		$query = $this->db->get();
		$num = $query->num_rows();
		if($num >0){
			$data = array(
					'ownership_r' => $ownership_r,
					'ownership_name' => $ownership_name,
					'ownership_contact_phone_number' => $ownership_contact_phone_number,
					'ownership_adddress' => $ownership_adddress,
					'ownership_city' => $ownership_city,
					'ownership_state' => $ownership_state,
					'ownership_zip' => $ownership_zip,
					'ownership_dob' => $ownership_dob,
					'ownership_ssn' => $ownership_ssn,
					'ownership_of_company' => $ownership_of_company,
					'ownership_title' => $ownership_title,					'step' => 2
				);
				
				$this->db->where('user_id', $this->session->userdata('user_id'));
				$result = $this->db->update($this->userinformation, $data);
				if($result){
					return 1;
				}
		}else{
			$data = array(
					'ownership_r' => $ownership_r,
					'ownership_name' => $ownership_name,
					'ownership_contact_phone_number' => $ownership_contact_phone_number,
					'ownership_adddress' => $ownership_adddress,
					'ownership_city' => $ownership_city,
					'ownership_state' => $ownership_state,
					'ownership_zip' => $ownership_zip,
					'ownership_dob' => $ownership_dob,
					'ownership_ssn' => $ownership_ssn,
					'ownership_of_company' => $ownership_of_company,
					'ownership_title' => $ownership_title,					'step' => 2
				);
			$result = $this->db->insert($this->userinformation, $data);
			if($result){
				return 1;
			}
		}
	}
	function landlordinformation(){
		parse_str($_POST['formdata'], $searcharray);
		$this->db->where('user_id',$this->session->userdata('user_id'))->from($this->userinformation);
		$query = $this->db->get();
		$num = $query->num_rows();
		if($num >0){
			$data = array(
					'landlord_name' => $searcharray['landlord_name'],
					'landlord_contact' => $searcharray['landlord_contact'],
					'landlord_m_rent' => $searcharray['landlord_m_rent'],
					'landlord_phone_no' => $searcharray['landlord_phone_no'],					'step' => 3
			);
				$this->db->where('user_id', $this->session->userdata('user_id'));
				$result = $this->db->update($this->userinformation, $data);
				if($result){
					return 1;
				}
		}else{
			$data = array(
					'landlord_name' => $searcharray['landlord_name'],
					'landlord_contact' => $searcharray['landlord_contact'],
					'landlord_m_rent' => $searcharray['landlord_m_rent'],
					'landlord_phone_no' => $searcharray['landlord_phone_no'],					'step' => 3
				);
			$result = $this->db->insert($this->userinformation, $data);
			if($result){
				return 1;
			}
		}
	}
	
	
	function business_profileinformation(){
		parse_str($_POST['formdata'], $searcharray);
		if(isset($searcharray['business_card_profile_r'])){
			$business_card_profile_r = $searcharray['business_card_profile_r'];
		}else{
			$business_card_profile_r ='';
		}
		if(!empty($searcharray['business_profile_ownership'])){
			$business_profile_ownership = serialize($searcharray['business_profile_ownership']);
		}else{
			$business_profile_ownership ='';
		}
		if(!empty($searcharray['business_merchant_profile'])){
			$business_merchant_profile = serialize($searcharray['business_merchant_profile']);
		}else{
			$business_merchant_profile ='';
		}
		if(!empty($searcharray['business_card_profile'])){
			$business_card_profile = serialize($searcharray['business_card_profile']);
		}else{
			$business_card_profile ='';
		}
		if(!empty($searcharray['business_profile_ownership_text'])){
			$business_profile_ownership_text = $searcharray['business_profile_ownership_text'];
		}else{
			$business_profile_ownership_text ='';
		}
		
		$this->db->where('user_id',$this->session->userdata('user_id'))->from($this->userinformation);
		$query = $this->db->get();
		$num = $query->num_rows();
		if($num >0){
			$data = array(
					'business_card_profile_r' => $business_card_profile_r,
					'business_profile_ownership' => $business_profile_ownership,
					'business_merchant_profile' => $business_merchant_profile,
					'business_card_profile' => $business_card_profile,
					'business_profile_ownership_text' => $business_profile_ownership_text,					'step' => 4
			);
				$this->db->where('user_id', $this->session->userdata('user_id'));
				$result = $this->db->update($this->userinformation, $data);
				if($result){
					return 1;
				}
		}else{
			$data = array(
					'business_card_profile_r' => $business_card_profile_r,
					'business_profile_ownership' => $business_profile_ownership,
					'business_merchant_profile' => $business_merchant_profile,
					'business_card_profile' => $business_card_profile,
					'business_profile_ownership_text' => $business_profile_ownership_text,					'step' => 4
			);
			$result = $this->db->insert($this->userinformation, $data);
			if($result){
				return 1;
			}
		}
	}
	function cash_advanceinformation(){
		parse_str($_POST['formdata'], $searcharray);
		if(!empty($searcharray['cash_advance_amount'])){
			$cash_advance_amount = $searcharray['cash_advance_amount'];
		}else{
			$cash_advance_amount ='';
		}
		if(isset($searcharray['cash_advance_plan_before_r'])){
			$cash_advance_plan_before_r = $searcharray['cash_advance_plan_before_r'];
		}else{
			$cash_advance_plan_before_r ='';
		}
		if(!empty($searcharray['cash_advance_plan_before'])){
			$cash_advance_plan_before = $searcharray['cash_advance_plan_before'];
		}else{
			$cash_advance_plan_before ='';
		}
		if(!empty($searcharray['cash_advance_master_m_sales'])){
			$cash_advance_master_m_sales = $searcharray['cash_advance_master_m_sales'];
		}else{
			$cash_advance_master_m_sales ='';
		}
		if(!empty($searcharray['cash_advance_company_use'])){
			$cash_advance_company_use = $searcharray['cash_advance_company_use'];
		}else{
			$cash_advance_company_use ='';
		}
		if(!empty($searcharray['cash_advance_average_g_m_sales'])){
			$cash_advance_average_g_m_sales = $searcharray['cash_advance_average_g_m_sales'];
		}else{
			$cash_advance_average_g_m_sales ='';
		}
		if(!empty($searcharray['cash_advance_o_balance'])){
			$cash_advance_o_balance = $searcharray['cash_advance_o_balance'];
		}else{
			$cash_advance_o_balance ='';
		}
		if(!empty($searcharray['cash_advance_c_balance'])){
			$cash_advance_c_balance = $searcharray['cash_advance_c_balance'];
		}else{
			$cash_advance_c_balance ='';
		}
		if(!empty($searcharray['cash_advance_average_t_size'])){
			$cash_advance_average_t_size = $searcharray['cash_advance_average_t_size'];
		}else{
			$cash_advance_average_t_size ='';
		}
		if(!empty($searcharray['cash_advance_c_payment'])){
			$cash_advance_c_payment = $searcharray['cash_advance_c_payment'];
		}else{
			$cash_advance_c_payment ='';
		}
		
		$this->db->where('user_id',$this->session->userdata('user_id'))->from($this->userinformation);
		$query = $this->db->get();
		$num = $query->num_rows();
		if($num >0){
			$data = array(
					'cash_advance_amount' => $cash_advance_amount,
					'cash_advance_plan_before_r' => $cash_advance_plan_before_r,
					'cash_advance_plan_before' => $cash_advance_plan_before,
					'cash_advance_master_m_sales' => $cash_advance_master_m_sales,
					'cash_advance_company_use' => $cash_advance_company_use,
					'cash_advance_average_g_m_sales' => $cash_advance_average_g_m_sales,
					'cash_advance_o_balance' => $cash_advance_o_balance,
					'cash_advance_c_balance' => $cash_advance_c_balance,
					'cash_advance_average_t_size' => $cash_advance_average_t_size,
					'cash_advance_c_payment' => $cash_advance_c_payment,					'step' => 5
			);
				$this->db->where('user_id', $this->session->userdata('user_id'));
				$result = $this->db->update($this->userinformation, $data);
				if($result){
					return 1;
				}
		}else{
			$data = array(
					'cash_advance_amount' => $cash_advance_amount,
					'cash_advance_plan_before_r' => $cash_advance_plan_before_r,
					'cash_advance_plan_before' => $cash_advance_plan_before,
					'cash_advance_master_m_sales' => $cash_advance_master_m_sales,
					'cash_advance_company_use' => $cash_advance_company_use,
					'cash_advance_average_g_m_sales' => $cash_advance_average_g_m_sales,
					'cash_advance_o_balance' => $cash_advance_o_balance,
					'cash_advance_c_balance' => $cash_advance_c_balance,
					'cash_advance_average_t_size' => $cash_advance_average_t_size,
					'cash_advance_c_payment' => $cash_advance_c_payment,					'step' => 5
			);
			$result = $this->db->insert($this->userinformation, $data);
			if($result){
				return 1;
			}
		}
	}
	function otherinformation_information(){
		parse_str($_POST['formdata'], $searcharray);
		if(!empty($searcharray['description1'])){
			$description1 = $searcharray['description1'];
		}else{
			$description1 ='';
		}
		if(isset($searcharray['description2'])){
			$description2 = $searcharray['description2'];
		}else{
			$description2 ='';
		}
		
		
		$this->db->where('user_id',$this->session->userdata('user_id'))->from($this->userinformation);
		$query = $this->db->get();
		$num = $query->num_rows();
		if($num >0){
			$data = array(
					'description1' => $description1,
					'description2' => $description2,					'step' => 6
					
			);
				$this->db->where('user_id', $this->session->userdata('user_id'));
				$result = $this->db->update($this->userinformation, $data);
				if($result){
					return 1;
				}
		}
	}
	function signatured_information(){
		parse_str($_POST['formdata'], $searcharray);
		if(!empty($searcharray['signature_date'])){
			$signature_date = $searcharray['signature_date'];
		}else{
			$signature_date ='';
		}
		if(!empty($searcharray['additional_for_to_upload_r'])){
			$additional_for_to_upload_r = $searcharray['additional_for_to_upload_r'];
		}else{
			$additional_for_to_upload_r ='';
		}
		if(!empty($searcharray['signature'])){
			$folderPath = "./assets/upload/signature/";
			$image_parts = explode(";base64,", $searcharray['signature']);
			$image_type_aux = explode("image/", $image_parts[0]);
			$image_type = $image_type_aux[1];
			$image_base64 = base64_decode($image_parts[1]);
			$signature =  uniqid() . '.'.$image_type;
			$file = $folderPath . $signature;
			file_put_contents($file, $image_base64);
		}else{
			$signature ='';
		}
		$this->db->where('user_id',$this->session->userdata('user_id'))->from($this->userinformation);
		$query = $this->db->get();
		$num = $query->num_rows();
		if($num >0){
			$data = array(
					'signature_date' => $signature_date,
					'signature' => $signature,
					'additional_for_to_upload_r' => $additional_for_to_upload_r,					'step' => 7
					
			);
				$this->db->where('user_id', $this->session->userdata('user_id'));
				$result = $this->db->update($this->userinformation, $data);
				if($result){
					return 1;
				}
		}
	}
	
	
		public function multipleImageStore(){
			
		set_time_limit(0);
		ini_set('memory_limit', '-1');
		$browser_id = session_id();
		
		$error = '';
		$array = array();
		$user_id = $this->session->userdata('user_id');
		$showpath =base_url()."assets/upload/signature/";
		$countfiles = count($_FILES['userfile']['name']);
		$config = array();
		$config['upload_path'] = './assets/upload/signature/';
		$config['allowed_types'] = 'jpg|jpeg|png|gif|pdf|doc|docx';
		$config['overwrite'] = TRUE;
		$this->load->library('upload');
		$files = $_FILES;
		for($i=0;$i<$countfiles;$i++){
			if(!empty($_FILES['userfile']['name'][$i])){
				$ext = pathinfo($files['userfile']["name"][$i]);
				$fileName = rand().'-'.time().'.'.$ext['extension'];
				$files['userfile']['name'][$i]= 'gallery-'.$fileName;
				$_FILES['userfile']['name'] = $files['userfile']['name'][$i];

				//$_FILES['userfile']['name']= rand().'-'.time().'_'.$files['userfile']['name'][$i];
				$_FILES['userfile']['type']= $files['userfile']['type'][$i];
				$_FILES['userfile']['tmp_name']= $files['userfile']['tmp_name'][$i];
				$_FILES['userfile']['error']= $files['userfile']['error'][$i];
				$_FILES['userfile']['size']= $files['userfile']['size'][$i];   
				// Set preference
				$this->upload->initialize($config);
				if($this->upload->do_upload()){
					$data =  array('upload_data' => $this->upload->data());
					if($_POST['image_number']==1){
						$filedata = array(
							'myfile' => $_FILES['userfile']['name']
						);
					}
					if($_POST['image_number']==2){
						$filedata = array(
								'myfile2' => $_FILES['userfile']['name']
						);
					}
				if($_POST['image_number']==3){
						$filedata = array(
								'myfile3' => $_FILES['userfile']['name']
						);
					}
				if($_POST['image_number']==4){
						$filedata = array(
								'myfile4' => $_FILES['userfile']['name']
						);
					}
					if($_POST['image_number']==5){
						$filedata = array(
								'myfile5' => $_FILES['userfile']['name']
						);
					}
				if($_POST['image_number']==6){
						$filedata = array(
								'myfile6' => $_FILES['userfile']['name']
						);
					}
				if($_POST['image_number']==7){
						$filedata = array(
								'myfile7' => $_FILES['userfile']['name']
						);
					}
					if($_POST['image_number']==8){
						$filedata = array(
								'myfile8' => $_FILES['userfile']['name']
						);
					}
					if($_POST['image_number']==1 || $_POST['image_number']==2 || $_POST['image_number']==3 || $_POST['image_number']==4 || $_POST['image_number']==5 || $_POST['image_number']==6 || $_POST['image_number']==7 || $_POST['image_number']==8){
						$this->db->where('user_id', $this->session->userdata('user_id'));
						$result = $this->db->update($this->userinformation, $filedata);
						
						$array['img'] = ''; 
						
					}

				if($_POST['image_number']==9){
						$additionaldata = array(
								'files_name' => $_FILES['userfile']['name'],
								'user_id' => $this->session->userdata('user_id')
								
						);
						$result = $this->db->insert($this->additional_files, $additionaldata);
						$lastid = $this->db->insert_id();
											
						
					 }					
					
					if($result){
						$array['succ'] =1;
					}else{
						$array['succ'] =0;
					}
					
				}else{
					$array['error'] = $this->upload->display_errors();
					
				}
			}

		}
		
		$this->db->where('user_id',$this->session->userdata('user_id'))->from($this->additional_files);
		$query = $this->db->get();
		$getR = $query->result_array();
		$img = '<div class="col-md-12">';
		foreach($getR as $value){
			$showpath =base_url()."assets/img/";
			$ext = pathinfo($value['files_name']);
			if($ext['extension']=='docx' || $ext['extension']=='doc'){ $nameicon = "word.png";}
						if($ext['extension']=='jpg' || $ext['extension']=='gif' || $ext['extension']=='png'){ $nameicon = "img-icon.png";}
						if($ext['extension']=='pdf'){ $nameicon = "pdf-icon.png";}
			$img .= '<div class="col-md-4" id="add_files_'.$value['additional_id'].'"><div class="thumbnail">';
			$img .= '<img class="add-img-cls" src="'.$showpath.$nameicon.'" />';
			$img .= '<span class="remove-image" onclick="removeimage('.$value['additional_id'].')">X</span></div></div>';
				
		}
		$img .= '</div>';
		$array['img'] = $img;
			echo json_encode($array);	
			die();
		}
	
	
	function ownership(){
		$this->db->where('type','ownership')->from($this->business_profile);
		$query = $this->db->get();
		return $query->result();
    }
	function merchant(){
		$this->db->where('type','merchant')->from($this->business_profile);
		$query = $this->db->get();
		return $query->result();
    }
	function card(){
		$this->db->where('type','card')->from($this->business_profile);
		$query = $this->db->get();
		return $query->result();
    }
	function userForgotPassword($password){
		$browser_id =session_id();
		parse_str($_POST['formdata'], $searcharray);
		$this->db->where('email',$searcharray['email']);
		$this->db->from($this->users);
		$query = $this->db->get();
		$num = $query->num_rows();
		if($num >0){
			$rs = $query->row_array();
			$data = array(
					'password' => md5($password),
					'plain_password' => $password,
				);
			$this->db->where('userId', $rs['userId']);
			$result = $this->db->update($this->users, $data);
			return 2;
		}else{
			return 1;
		}
		
	}	
	function deleteadditionalFiles(){
		$id = $this->input->post('id');
		$this->db->where('additional_id', $id);
        return $this->db->delete($this->additional_files);
    }
    function additional_files(){
		$this->db->where('user_id',$this->session->userdata('user_id'))->from($this->additional_files);
		$query = $this->db->get();
		return$query->result_array();
        
    }
	
	
	
}