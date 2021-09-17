<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class GeneratePdfController extends CI_Controller {


 public function __construct()
 {
  parent::__construct();
  
  $this->load->library('pdf');
  $this->load->model('Dashboard_model');
 }
   
    function index()
    {
        $filename ="test";
		//$data['records'] = $this->Dashboard_model->getUserInfo();
		
		$html = $this->load->view('GeneratePdfView', [], true);
        $this->pdf->loadHtml($html);
        $this->pdf->render();
		
		//$this->pdf->setBasePath(realpath(FCPATH . '/assets/css/login-form.css'));
        $this->pdf->stream("ffff.pdf", array("Attachment"=>0));
        $output = $this->pdf->output();
	    $folderPath = "./assets/upload/signature/".$filename.".pdf";
	    file_put_contents($folderPath, $output);
     }
     
     
     
     function generatePdf(){
        $filename ="test";
		$html = $this->load->view('GeneratePdfView-1', [], true);
        $this->pdf->loadHtml($html);
        $this->pdf->render();
		
		//$this->pdf->setBasePath(realpath(FCPATH . '/assets/css/login-form.css'));
        $this->pdf->stream("ffff.pdf", array("Attachment"=>0));
        $output = $this->pdf->output();
	    $folderPath = "./assets/upload/signature/".$filename.".pdf";
	    file_put_contents($folderPath, $output);
     }
}
?>