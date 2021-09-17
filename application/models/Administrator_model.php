<?php if(!defined('BASEPATH')) exit('No direct script access allowed');
class Administrator_model extends CI_Model{
		protected $users = 'tbl_users';
		protected $userinformation = 'tbl_userinformation';
		protected $additional_files = 'additional_files';
	    protected $faq = 'tbl_faq';
	    protected $contactUs = 'tbl_contact';
	    
		public function __construct()
		{
			parent::__construct();
			$this->load->database();
			
		}
	
	function getinfo($id){
		$uid = base64_decode($id);
       $this->db->from($this->users);
	   $this->db->where('userId',$uid);  
	   $query = $this->db->get();
       return $query->row_array();
    }
	
	function loginMe($email, $password) {
	   $this->db->from($this->users);
		$this->db->where('email',$email);
        $this->db->where('password',md5($password));
        $query = $this->db->get();
		$numRow = $query->num_rows();
		if($numRow > 0){
		 return $query->row_array();
		}
    }
	
	
	function getAllApplicationCount(){
      $this->db->select($this->users.'.userId');
		$this->db->where('role_id', 2);
		$this->db->from($this->users);
		$this->db->join($this->userinformation, $this->userinformation.'.user_id  = '.$this->users.'.userId','left');
		$query = $this->db->get();
		return $query->num_rows();
    }
	
	function users(){
		$this->db->select($this->users.'.*,'.$this->userinformation.'.filename_1');
		$this->db->where('role_id', 2);
		$this->db->from($this->users);
		$this->db->order_by("userId", "desc");
		$this->db->join($this->userinformation, $this->userinformation.'.user_id  = '.$this->users.'.userId','left');
		$query = $this->db->get();
		return $query->result();
		
	}
	function getUserInfo($id){
		$uid = base64_decode($id);
		$this->db->where('user_id',$uid)->from($this->userinformation);
		$query = $this->db->get();
		return $query->row_array();
    }
	function additional_files($id){
		$uid = base64_decode($id);
		$this->db->where('user_id',$uid)->from($this->additional_files);
		$query = $this->db->get();
		return$query->result_array();
    }
	function completeApplicationCount(){
		$where =$this->userinformation.'.filename_1 IS NOT NULL'; 
        $this->db->select($this->users.'.userId');
		$this->db->where('role_id', 2);
		$this->db->where($where);
		$this->db->where($this->userinformation.'.step',7);
		$this->db->from($this->users);
		$this->db->join($this->userinformation, $this->userinformation.'.user_id  = '.$this->users.'.userId','left');
		$query = $this->db->get();
		return $query->num_rows();
    }
	
	function pendingApplicationCount(){
		$where =$this->userinformation.'.filename_1 IS NULL'; 
        $this->db->select($this->users.'.userId');
		$this->db->where('role_id', 2);
		$this->db->where($where);
		$this->db->from($this->users);
		$this->db->join($this->userinformation, $this->userinformation.'.user_id  = '.$this->users.'.userId','left');
		$query = $this->db->get();
		return $query->num_rows();
    }
	function deleteMember(){
		$mid = $this->input->post('mid');
		$this->db->where('user_id', $mid)->delete($this->userinformation);
        return $this->db->where('userId', $mid)->delete($this->users);
    }
    function addFaq(){
		$data = array(
			'title' =>$_POST['title'],
			'description' =>$_POST['description']
			
		);
		$result = $this->db->insert($this->faq, $data);
					
	}
	function faq(){
		$this->db->from($this->faq);
		$query = $this->db->get();
		return $query->result();
	}
	function deleteFaq(){
		$mid = $this->input->post('mid');
		return $this->db->where('id', $mid)->delete($this->faq);
    }
	function editFaq($id){
		$id = base64_decode($id);
		$this->db->from($this->faq);
		$this->db->where('id', $id);
		$query = $this->db->get();
		return $query->row_array();
	}
	 function UpdateFaq($id){
		$uid = base64_decode($id);
		$data = array(
			'title' =>$_POST['title'],
			'description' =>$_POST['description']
			
		);
		 $this->db->where('id',$uid);
		$result = $this->db->update($this->faq, $data);
					
	}
	function contactUs(){
		$this->db->from($this->contactUs);
		$query = $this->db->get();
		return $query->result();
	}
	
	
}

?>