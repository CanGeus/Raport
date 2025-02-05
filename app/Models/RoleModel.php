<?php

namespace App\Models;

use CodeIgniter\Model;

class RoleModel extends Model
{
    protected $table      = 'auth_groups_users';
    protected $primaryKey = 'role_id';

    protected $allowedFields = ['group_id', 'user_id'];
}
