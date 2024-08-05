<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion " id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-solid fa-book"></i>
        </div>
        <div class="sidebar-brand-text mx-3">E-Rapot</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <?php if (in_groups('user')) : ?>
        <!-- Nav Item - Dashboard  murid-->
        <li class="nav-item active">
            <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
                <i class="fa-solid fa-table-list"></i>
                <span>Dashboard</span>
            </a>
            <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="/user/kelas">Kelas</a>
                    <a class="collapse-item" href="/user/nilai">Nilai</a>
                </div>
            </div>
        </li>
    <?php endif; ?>


    <?php if (in_groups('guru')) : ?>
        <!-- Nav Item - Dashboard guru -->
        <li class="nav-item active">
            <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
                <i class="fa-solid fa-table-list"></i>
                <span>Dashboard</span>
            </a>
            <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="<?= base_url(); ?>/guru/kelas">Kelas</a>
                    <a class="collapse-item" href="<?= base_url(); ?>/guru/nilai">Input Nilai</a>
                </div>
            </div>
        </li>
        <!-- Divider -->
        <hr class=" sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Account
        </div>

        <!-- Nav Item - Account -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Settting</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="<?= base_url(); ?>/guru/profile">Profile</a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('logout'); ?>">
                <i class="fas fa-fw fa-sign-out-alt"></i>
                <span>Logout</span></a>
        </li>
    <?php endif; ?>

    <?php if (in_groups('admin')) : ?>
        <!-- Nav Item - Dashboard guru -->
        <li class="nav-item active">
            <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
                <i class="fa-solid fa-table-list"></i>
                <span>Dashboard</span>
            </a>
            <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="<?= base_url(); ?>/admin/user_list">User List</a>
                    <a class="collapse-item" href="<?= base_url(); ?>/admin/addUser">Add User</a>
                    <a class="collapse-item" href="<?= base_url(); ?>/admin/getAllSiswa">List Siswa</a>
                    <a class="collapse-item" href="<?= base_url(); ?>/admin/getAllGuru">List Guru</a>
                </div>
            </div>
        </li>
        <!-- Divider -->
        <hr class=" sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Account
        </div>

        <!-- Nav Item - Account -->
        <li class="nav-item">
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="<?= base_url(); ?>/admin/profile">Profile</a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('logout'); ?>">
                <i class="fas fa-fw fa-sign-out-alt"></i>
                <span>Logout</span></a>
        </li>
    <?php endif; ?>


    <!-- Nav Item - Utilities Collapse Menu -->
    <?php if (in_groups('user')) : ?>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
                <i class="fa-solid fa-book"></i>
                <span>Rapot</span>
            </a>
            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Kelas:</h6>
                    <?php for ($i = 1; $i <= user()->kelas; $i++) : ?>
                        <a class="collapse-item" href="<?= base_url(); ?>/user/rapot/<?= $i; ?>/1"> kelas <?= $i; ?> Semester Ganjil</a>
                        <a class="collapse-item" href="<?= base_url(); ?>/user/rapot/<?= $i; ?>/2">kelas <?= $i; ?> Semester Genap</a>
                    <?php endfor; ?>
                </div>
            </div>
        </li>
        <!-- Divider -->
        <hr class=" sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Account
        </div>

        <!-- Nav Item - Account -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Settting</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="<?= base_url(); ?>/user/profile">Profile</a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('logout'); ?>">
                <i class="fas fa-fw fa-sign-out-alt"></i>
                <span>Logout</span></a>
        </li>
    <?php endif; ?>



    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>