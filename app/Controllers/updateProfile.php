<?php

namespace App\Controllers;

use App\Models\SiswaModel;
use App\Models\GuruModel;
use App\Models\AdminModel;
use App\Models\KelasModel;
use App\Models\NilaiModel;
use App\Models\MapelModel;

class UpdateProfile extends BaseController
{
    protected $siswaModel, $guruModel, $adminModel, $kelasModel, $nilaiModel, $mapelModel;
    public function __construct()
    {
        $this->siswaModel = new SiswaModel();
        $this->guruModel = new GuruModel();
        $this->adminModel  = new AdminModel();
        $this->kelasModel = new KelasModel();
        $this->nilaiModel = new NilaiModel();
        $this->mapelModel = new MapelModel();
    }
    public function update($id, $role)
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
            return redirect()->back()->withInput();
        }

        $fileimg = $this->request->getFile('img');
        $fileimg->move('img');
        $namaimg = $fileimg->getName();


        if ($role == 'siswa') {
            $this->siswaModel->save(
                [
                    'nisn'  => $id,
                    'nama'  => $this->request->getVar('nama'),
                    'agama' => $this->request->getVar('agama'),
                    'tempat_lahir' => $this->request->getVar('tempat_lahir'),
                    'tanggal_lahir' => $this->request->getVar('tanggal_lahir'),
                    'no_tlp' => $this->request->getVar('no_tlp'),
                    'img' => $namaimg,
                    'alamat' => $this->request->getVar('alamat'),
                ]

            );
        } elseif ($role == 'guru') {
            $this->guruModel->save(
                [
                    'nip'  => $id,
                    'nama'  => $this->request->getVar('nama'),
                    'agama' => $this->request->getVar('agama'),
                    'tempat_lahir' => $this->request->getVar('tempat_lahir'),
                    'tanggal_lahir' => $this->request->getVar('tanggal_lahir'),
                    'no_tlp' => $this->request->getVar('no_tlp'),
                    'img' => $namaimg,
                    'alamat' => $this->request->getVar('alamat'),
                ]

            );
        }

        return redirect()->back()->with('massage', 'Data Berhasil di Update !!!');
    }
}
