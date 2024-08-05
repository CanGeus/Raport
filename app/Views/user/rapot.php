<?= $this->extend('templates/index'); ?>

<?= $this->section('main-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary text-uppercase">
                    rapot kelas <?= $rapot; ?>
                    semester <?php if ($semester == 1) {
                                    echo 'ganjil';
                                } elseif ($semester == 2) {
                                    echo 'genap';
                                } ?>
                </h6>
            </div>
            <center>
                <div class="mt-3 text-right col-10">
                    <a class="no-print" href="javascript:printDiv('print-area-1');">
                        <button class="btn btn-success">Print</button>
                    </a>
                </div>
                <?php foreach ($login as $l) : ?>
                    <div id="print-area-1" class="card-body col-10 m-4 text-center border">

                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-12 d-flex text-left justify-content-between">
                                        <div class="d-flex">
                                            <div class=" mr-2 text-capitalize font-weight-bold">
                                                nama <br>
                                                Nisn <br>
                                            </div>
                                            <div class="w-10 mr-2">
                                                : <br>
                                                :
                                            </div>
                                            <div class="text-capitalize">
                                                <?= $l['nama']; ?> <br>
                                                <?= $l['nisn']; ?> <br>
                                            </div>
                                        </div>
                                        <div class="d-flex">
                                            <div class="mr-2 text-capitalize font-weight-bold">
                                                kelas <br>
                                                semester <br>
                                            </div>
                                            <div class="w-10 mr-2">
                                                : <br>
                                                :
                                            </div>
                                            <div class="text-capitalize">
                                                <?= $l['kelas']; ?> <br>
                                                <?= $semester; ?>
                                                <?php if ($semester == 1) {
                                                    echo 'ganjil';
                                                } elseif ($semester == 2) {
                                                    echo 'genap';
                                                } ?> <br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <hr>
                                <p class="text-uppercase font-weight-bold">capaian hasil belajar</p>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-bordered text-capitalize">
                                    <thead>
                                        <tr>
                                            <th scope="col">mata pelajaran</th>
                                            <th scope="col">kkm</th>
                                            <th scope="col">nilai</th>
                                            <th scope="col">predikat</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($nilai as $n) : ?>
                                            <tr>
                                                <th scope="row" class="text-left"><?= $n['mapel']; ?></th>
                                                <td>75</td>
                                                <td><?= $n['uas']; ?></td>
                                                <td>
                                                    <?php
                                                    $uas = $n['uas'];
                                                    if ($uas <= 74) {
                                                        echo 'kurang';
                                                    } elseif ($uas >= 75 && $uas <= 79) {
                                                        echo 'cukup';
                                                    } elseif ($uas >= 80 && $uas <= 89) {
                                                        echo 'baik';
                                                    } elseif ($uas >= 90 && $uas <= 100) {
                                                        echo 'sangat baik';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
        </div>
    <?php endforeach; ?>
    </center>
    </div>
</div>

<textarea id="printing-css" style="display:none;">html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}body{line-height:1}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none}table{border-collapse:collapse;border-spacing:0}body{font:normal normal .8125em/1.4 Arial,Sans-Serif;background-color:white;color:#333}strong,b{font-weight:bold}cite,em,i{font-style:italic}a{text-decoration:none}a:hover{text-decoration:underline}a img{border:none}abbr,acronym{border-bottom:1px dotted;cursor:help}sup,sub{vertical-align:baseline;position:relative;top:-.4em;font-size:86%}sub{top:.4em}small{font-size:86%}kbd{font-size:80%;border:1px solid #999;padding:2px 5px;border-bottom-width:2px;border-radius:3px}mark{background-color:#ffce00;color:black}p,blockquote,pre,table,figure,hr,form,ol,ul,dl{margin:1.5em 0}hr{height:1px;border:none;background-color:#666}h1,h2,h3,h4,h5,h6{font-weight:bold;line-height:normal;margin:1.5em 0 0}h1{font-size:200%}h2{font-size:180%}h3{font-size:160%}h4{font-size:140%}h5{font-size:120%}h6{font-size:100%}ol,ul,dl{margin-left:3em}ol{list-style:decimal outside}ul{list-style:disc outside}li{margin:.5em 0}dt{font-weight:bold}dd{margin:0 0 .5em 2em}input,button,select,textarea{font:inherit;font-size:100%;line-height:normal;vertical-align:baseline}textarea{display:block;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}pre,code{font-family:"Courier New",Courier,Monospace;color:inherit}pre{white-space:pre;word-wrap:normal;overflow:auto}blockquote{margin-left:2em;margin-right:2em;border-left:4px solid #ccc;padding-left:1em;font-style:italic}table[border="1"] th,table[border="1"] td,table[border="1"] caption{border:1px solid;padding:.5em 1em;text-align:left;vertical-align:top}th{font-weight:bold}table[border="1"] caption{border:none;font-style:italic}.no-print{display:none}</textarea>


<iframe id="printing-frame" name="print_frame" src="about:blank" style="display:none;"></iframe>
<script type="text/javascript">
    function printDiv(elementId) {
        var a = document.getElementById('printing-css').value;
        var b = document.getElementById(elementId).innerHTML;
        window.frames["print_frame"].document.title = document.title;
        window.frames["print_frame"].document.body.innerHTML = '<style>' + a + '</style>' + b;
        window.frames["print_frame"].window.focus();
        window.frames["print_frame"].window.print();
    }
</script>


<?= $this->endSection(); ?>