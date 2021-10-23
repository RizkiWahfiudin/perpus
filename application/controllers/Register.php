<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {
	
    function __construct() {
	    parent::__construct();
        $this->load->helper(array('form', 'url'));
	}

	public function index()
	{
		$this->data['title_web'] = 'Register | Website Peminjaman Buku Perpustakaan';
		$this->load->view('header_login', $this->data);
        $this->load->view('register');
        $this->load->view('footer_login');
	}

    private function generateId()
    {
        $this->db->from('tbl_user');
        $this->db->order_by('anggota_id','desc');
        $query = $this->db->get();
        $lastNumber = explode('-', $query->row()->anggota_id);
        $newNumber = (int)$lastNumber[1] + 1;
        $result = 'WEB-'.str_pad($newNumber, 4, "0", STR_PAD_LEFT);
        return $result;
    }

    public function store()
    {
        $nama = htmlentities($this->input->post('nama',TRUE));
        $user = htmlentities($this->input->post('user',TRUE));
        $pass = md5(htmlentities($this->input->post('pass',TRUE)));
        
        $cekuser = $this->db->query("SELECT * FROM tbl_user WHERE user = '$user'");
        if($cekuser->num_rows() > 0) {
            echo '<script>alert("Username Sudah Terpakai! Gunakan Username Lain");
            window.location="'.base_url('register').'"</script>';
        } else {
            $data = array(
                'anggota_id'=>$this->generateId(),
                'nama'=>$nama,
                'user'=>$user,
                'pass'=>$pass,
                'level'=>2, // 1: Petugas; 2: Anggota;
                'tgl_bergabung'=>date('Y-m-d')
            );
            $this->db->insert('tbl_user',$data);
            echo '<script>alert("Registrasi User Berhasil!");
            window.location="'.base_url().'"</script>';
        }
    }
}