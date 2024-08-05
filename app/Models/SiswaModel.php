<?php

namespace App\Models;

use CodeIgniter\Model;

class SiswaModel extends Model
{
    protected $table      = 'siswa';
    protected $primaryKey = 'nisn';

    protected $allowedFields = ['nama', 'kelas', 'jenis_kelamin', 'alamat', 'no_tlp', 'img', 'tempat_lahir', 'tanggal_lahir', 'agama'];

    public function getLoginSiswa()
    {
        $builder = $this->db->table('siswa');
        $builder->join('users', 'users.username = siswa.nisn')->where('nisn', user()->username);
        $query = $builder->get();
        return $query->getResultArray();
    }

    public function getDataSiswa()
    {
        $query = $this->db->table('siswa')->where('kelas', user()->kelas)->orderBy('nama', 'asc');
        return $query->get()->getResultArray();
    }

    public function getKetua()
    {
        $query = $this->db->table('siswa')->where('kelas', user()->kelas)->where('ketua', 1);
        return $query->get()->getResultArray();
    }
    public function getGuru()
    {
        $query = $this->db->table('guru')->where('kelas', user()->kelas);
        return $query->get()->getResultArray();
    }
    public function getNilai()
    {
        $query = $this->db->table('nilai')->where('nisn', user()->username)->orderBy('mapel', 'asc');
        return $query->get()->getResultArray();
    }
    public function getUserImg()
    {
        $builder = $this->db->table('users');
        $builder->join('siswa', 'siswa.nisn = users.username');
        $builder->where('nisn', user()->username);
        return $builder->get()->getResult();
    }
}
