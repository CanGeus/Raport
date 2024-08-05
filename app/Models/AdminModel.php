<?php

namespace App\Models;

use CodeIgniter\Model;

class AdminModel extends Model
{
    protected $table      = 'users';
    protected $primaryKey = 'id';

    protected $allowedFields = ['username', 'email', 'password_hash', 'kelas', 'user_img'];

    public function getUsers()
    {
        $builder = $this->db->table('users');
        $builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        return $builder->get()->getResult();
    }

    public function getDetail($username, $id)
    {
        if ($id == 1 || $id == 'admin') {
        } elseif ($id == 2 || $id == 'guru') {
            $builder = $this->db->table('users');
            $builder->join('guru', 'guru.nip = users.username');
            $builder->where('nip', $username);
            return $builder->get()->getResult();
        } elseif ($id == 3 || $id == 'siswa' || $id == 'user') {
            $builder = $this->db->table('users');
            $builder->join('siswa', 'siswa.nisn = users.username');
            $builder->where('nisn', $username);
            return $builder->get()->getResult();
        }
    }
}
