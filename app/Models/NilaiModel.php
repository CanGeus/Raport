<?php

namespace App\Models;

use CodeIgniter\Model;

class NilaiModel extends Model
{
    protected $table      = 'nilai';
    protected $primaryKey = 'id';

    protected $allowedFields = ['satu', 'dua', 'tiga', 'empat', 'lima', 'enam', 'uts', 'uas'];
}
