<?php

namespace App\Controllers;

use App\Models\SiswaModel;
use App\Models\GuruModel;
use App\Models\KelasModel;
use App\Models\NilaiModel;
use App\Models\MapelModel;

class Guru extends BaseController
{
    protected $siswaModel, $guruModel, $kelasModel, $nilaiModel, $mapelModel;
    public function __construct()
    {
        $this->siswaModel = new SiswaModel();
        $this->guruModel = new GuruModel();
        $this->kelasModel = new KelasModel();
        $this->nilaiModel = new NilaiModel();
        $this->mapelModel = new MapelModel();
    }

    public function index()
    {
        return view('guru/index');
    }

    public function kelas()
    {
        $data = [
            'title' => 'Kelas | E-Rapot',
            'img' => $this->guruModel->getUserImg(),
            'login' => $this->guruModel->getLoginGuru(),
            'list_siswa' => $this->siswaModel->getDataSiswa(),
            'ketua' => $this->siswaModel->getKetua(),
            'guru' => $this->siswaModel->getGuru(),
        ];
        return view('guru/kelas', $data);
    }

    public function nilai()
    {
        $data = [
            'title' => 'Input Nilai Harian | E-Rapot',
            'img' => $this->guruModel->getUserImg(),
            'login' => $this->guruModel->getLoginGuru(),
            'mapel' => $this->mapelModel->find(),
        ];
        return view('guru/nilai_harian', $data);
    }

    public function profile()
    {
        $data = [
            'title' => 'Profile | E-Rapot',
            'img' => $this->guruModel->getUserImg(),
            'login' => $this->guruModel->getLoginGuru(),
            'validation' => \Config\Services::validation(),
        ];
        return view('guru/profile', $data);
    }

    public function cek_nilai($mapel)
    {
        $data = [
            'title' => 'Cek Nilai | E-Rapot',
            'img' => $this->guruModel->getUserImg(),
            'login' => $this->guruModel->getLoginGuru(),
            'nilai' => $this->guruModel->cekNilai($mapel),
            'nama_mapel' => $mapel,
        ];
        return view('guru/nilai', $data);
    }

    public function input_nilai($id, $mapel)
    {
        $data = [
            'title' => 'Cek Nilai | E-Rapot',
            'img' => $this->guruModel->getUserImg(),
            'login' => $this->guruModel->getLoginGuru(),
            'nilai' => $this->guruModel->inputNilai($id, $mapel),
            'nama_mapel' => $mapel,
            'id'    => $id,
        ];
        return view('guru/input_nilai', $data);
    }

    public function input_to_nilai($id, $field)
    {
        $this->nilaiModel->save([
            'id' => $id,
            $field => $this->request->getVar('nilai'),
        ]);
        return redirect()->back()->with('success', 'nilai berhasil di update');
    }
}
