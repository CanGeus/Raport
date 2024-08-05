<?php

namespace App\Models;

use CodeIgniter\Model;

class GuruModel extends Model
{
    protected $table      = 'guru';
    protected $primaryKey = 'nip';

    protected $allowedFields = ['nama', 'agama', 'tempat_lahir', 'tanggal_lahir', 'no_tlp', 'img', 'alamat'];

    public function getLoginGuru()
    {
        $builder = $this->db->table('guru');
        $builder->join('users', 'users.username = guru.nip')->where('nip', user()->username);
        $query = $builder->get();
        return $query->getResultArray();
    }

    public function cekNilai($mapel)
    {
        $builder = $this->db->table('nilai');
        $builder->join('siswa', 'siswa.nisn = nilai.nisn')->where('mapel', $mapel)->where('kelas', user()->kelas)->orderBy('nama', 'asc');
        $query = $builder->get();
        return $query->getResultArray();
    }

    public function inputNilai($id, $mapel)
    {
        $builder = $this->db->table('nilai');
        $builder->join('siswa', 'siswa.nisn = nilai.nisn')->where('mapel', $mapel)->where('kelas', user()->kelas)->orderBy('nama', 'asc');
        $query = $builder->get();
        return $query->getResultArray();
    }
    public function getUserImg()
    {
        $builder = $this->db->table('users');
        $builder->join('guru', 'guru.nip = users.username');
        $builder->where('nip', user()->username);
        return $builder->get()->getResult();
    }
}
