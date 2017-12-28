<?php
 
require (APPPATH.'/libraries/REST_Controller.php');
 
class restlogin extends REST_Controller {
 
    function __construct($config = 'rest') {
        parent::__construct($config);

        /** untuk aktifkan session private
         if($this->session->userdata('status') != "login"){
            redirect(base_url("login")); //session untuk page
        }**/
    }
 
    // show data user
    function index_get() {
        $nim = $this->get('id_user');
        if ($nim == '') {
            $booking = $this->db->get('user')->result();
        } else {
            $this->db->where('id_user', $nim);
            $booking = $this->db->get('user')->result();
        }
        $this->response($booking, 200);
    }
 
    // insert data baru si user
    function index_post() {
        $data = array(
                    'id_user'           => $this->post('user'),
                    'nama'              => $this->post('nama'),
                    'username'          => $this->post('username'),
                    'password'          => $this->post('password'),
                    'email'             => $this->post('email'),
                    'no_hp'             => $this->post('no_hp'),
                    'jabatan'           => $this->post('jabatan') );
        $insert = $this->db->insert('user', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
 
    // update data user
    function index_put() {
        $nim = $this->put('id_booking');
        $data = array(
                    'id_user'           => $this->put('user'),
                    'nama'              => $this->put('nama'),
                    'username'          => $this->put('username'),
                    'password'          => $this->put('password'),
                    'email'             => $this->put('email'),
                    'no_hp'             => $this->put('no_hp'),
                    'jabatan'           => $this->put('jabatan') );
        $this->db->where('id_user', $nim);
        $update = $this->db->update('user', $data);
        if ($update) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
 
    // delete user
    function index_delete() {
        $nim = $this->delete('id_user');
        $this->db->where('id_user', $nim);
        $delete = $this->db->delete('user');
        if ($delete) {
            $this->response(array('status' => 'sucess'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }
 
}
