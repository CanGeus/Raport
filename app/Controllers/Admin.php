<?php

namespace App\Controllers;

use App\Models\SiswaModel;
use App\Models\GuruModel;
use App\Models\AdminModel;
use App\Models\KelasModel;
use App\Models\NilaiModel;
use App\Models\MapelModel;
use App\Models\RoleModel;

class Admin extends BaseController
{
    protected $siswaModel, $guruModel, $adminModel, $kelasModel, $nilaiModel, $mapelModel, $roleModel;
    public function __construct()
    {
        $this->siswaModel = new SiswaModel();
        $this->guruModel = new GuruModel();
        $this->adminModel  = new AdminModel();
        $this->kelasModel = new KelasModel();
        $this->nilaiModel = new NilaiModel();
        $this->mapelModel = new MapelModel();
        $this->roleModel = new RoleModel();
    }
    public function index()
    {

        $data = [
            'title' => 'Admin | E-Rapot',
            'users' => $this->adminModel->getUsers(),
        ];
        return view('admin/index', $data);
    }

    public function user_list()
    {
        $data = [
            'title' => 'User List | E-Rapot',
            'login' => user()->username,
            'users' => $this->adminModel->getUsers(),
        ];
        // dd($this->adminModel->getUsers());
        return view('admin/user_list', $data);
    }
    public function hapus($id)
    {
        $this->adminModel->delete($id);
        return redirect()->back()->with('berhasil', 'user berhasil di hapus');
    }

    public function detail($username, $id)
    {
        $data = [
            'title' => 'User Detail | E-Rapot',
            'login' => user()->username,
            'user' => $this->adminModel->getDetail($username, $id),
            'validation' => \Config\Services::validation(),
        ];
        // dd($this->adminModel->getDetail($username, $id));
        return view('admin/detail', $data);
    }

    public function addUser()
    {
        $data = [
            'title' => 'User Detail | E-Rapot',
            'login' => user()->username,
        ];
        // dd($this->adminModel->getDetail($username, $id));
        return view('admin/add_user', $data);
    }

    public function role($id_role, $user_id, $id)
    {
        $this->roleModel->save([
            'role_id' => $id,
            'group_id' => $id_role,
            'user_id' => $user_id,
        ]);

        return redirect()->back()->withInput('massage', 'Role Berhasil Di Rubah');
    }

    public function setKelas($id, $kelas)
    {
        $this->adminModel->save([
            'id' => $id,
            'kelas' => $kelas,
        ]);
        return redirect()->back()->withInput('massage', 'Kelas Berhasil Di Rubah');
    }

    public function getAllSiswa()
    {
        $data = [
            'title' => 'List Siswa | E-Rapot',
            'login' => user()->username,
            'siswa' => $this->siswaModel->findAll(),
        ];
        // dd($this->siswaModel->findAll());
        return view('admin/all_siswa', $data);
    }
    public function getAllGuru()
    {
        $data = [
            'title' => 'List Guru | E-Rapot',
            'login' => user()->username,
            'guru' => $this->guruModel->findAll(),
        ];
        // dd($this->siswaModel->findAll());
        return view('admin/all_guru', $data);
    }
}
