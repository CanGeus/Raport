<?php

namespace App\Controllers;

use App\Models\SiswaModel;
use App\Models\GuruModel;
use App\Models\AdminModel;
use App\Models\KelasModel;
use App\Models\NilaiModel;

class User extends BaseController
{

    protected $siswaModel, $guruModel, $adminModel, $kelasModel, $nilaiModel;
    public function __construct()
    {
        $this->siswaModel = new SiswaModel();
        $this->guruModel = new GuruModel();
        $this->adminModel = new AdminModel();
        $this->kelasModel = new KelasModel();
        $this->nilaiModel = new NilaiModel();
    }

    public function index()
    {
        if (in_groups('user')) {
            $siswa = $this->siswaModel->countAll();
            $guru = $this->guruModel->countAll();
            $kelas = $this->kelasModel->countAll();
            $data = [
                'title' => 'Dashboard | E-Rapot',
                'img' => $this->siswaModel->getUserImg(),
                'login' => $this->siswaModel->getLoginSiswa(),
                'C_siswa' => $siswa,
                'C_guru'  => $guru,
                'C_kelas' => $kelas,
                'guru' => $this->guruModel->findAll(),
            ];
            return view('user/index', $data);
        } elseif (in_groups('guru')) {
            $siswa = $this->siswaModel->countAll();
            $guru = $this->guruModel->countAll();
            $kelas = $this->kelasModel->countAll();
            $data = [
                'title' => 'Dashboard | E-Rapot',
                'img' => $this->guruModel->getUserImg(),
                'login' => $this->guruModel->getLoginGuru(),
                'C_siswa' => $siswa,
                'C_guru'  => $guru,
                'C_kelas' => $kelas,
                'guru' => $this->guruModel->findAll(),
            ];
            return view('user/index', $data);
        } elseif (in_groups('admin')) {
            $siswa = $this->siswaModel->countAll();
            $guru = $this->guruModel->countAll();
            $kelas = $this->kelasModel->countAll();
            $data = [
                'title' => 'Dashboard | E-Rapot',
                'img' => $this->guruModel->getUserImg(),
                'login' => user()->username,
                'C_siswa' => $siswa,
                'C_guru'  => $guru,
                'C_kelas' => $kelas,
                'guru' => $this->guruModel->findAll(),
            ];
            return view('admin/index', $data);
        }
    }

    public function kelas()
    {
        $data = [
            'title' => 'Kelas | E-Rapot',
            'img' => $this->siswaModel->getUserImg(),
            'login' => $this->siswaModel->getLoginSiswa(),
            'list_siswa' => $this->siswaModel->getDataSiswa(),
            'ketua' => $this->siswaModel->getKetua(),
            'guru' => $this->siswaModel->getGuru(),
        ];
        return view('user/kelas', $data);
    }

    public function nilai()
    {
        $data = [
            'title' => 'Nilai | E-Rapot',
            'img' => $this->siswaModel->getUserImg(),
            'login' => $this->siswaModel->getLoginSiswa(),
            'nilai' => $this->siswaModel->getNilai(),
        ];
        return view('user/nilai', $data);
    }

    public function rapot($id, $semster)
    {
        $data = [
            'title' => 'Raport | E-Rapot',
            'img' => $this->siswaModel->getUserImg(),
            'rapot' => $id,
            'semester' => $semster,
            'login' => $this->siswaModel->getLoginSiswa(),
            'nilai' => $this->siswaModel->getNilai(),
        ];
        return view('user/rapot', $data);
    }

    public function profile()
    {
        // dd($this->siswaModel->getLoginSiswa());
        $data = [
            'title' => 'Profile | E-Rapot',
            'login' => $this->siswaModel->getLoginSiswa(),
            'validation' => \Config\Services::validation(),
        ];
        // dd($this->siswaModel->getLoginSiswa());
        return view('user/profile', $data);
    }

    public function uploadImg($nisn)
    {
        if (!$this->validate([
            'img' => [
                'rules' => 'uploaded[img]|max_size[img,1024]|is_image[img]|mime_in[img,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'uploaded' => 'pilih gambar terlebih dahulu',
                    'max_size' => 'ukuran gambar terlalu besar',
                    'is_image' => 'yang anda pilin bukan file gambar',
                    'mime_in' => 'yang anda pilin bukan file gambar',
                ]
            ]
        ])) {
            return redirect()->to('/user/profile')->withInput();
        }

        $fileimg = $this->request->getFile('img');
        $fileimg->move('img');
        $namaimg = $fileimg->getName();

        $this->siswaModel->save(
            [
                'nisn' => $nisn,
                'img' => $namaimg,
            ]

        );

        return redirect()->back()->with('massage', 'foto berhasil di update');
    }
}
