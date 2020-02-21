

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Dialysis</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <!-- <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li> -->
    </ul>
    <div class="form-inline my-2 my-lg-0">
      <span class="pull-left"><a href="#addnew" data-toggle="modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Add New</a></span>
      <a href="print.php?lastName=<?php echo $_GET['lastName']; ?>&day=<?php echo $_GET['day']; ?>&firstName=<?php echo $_GET['firstName']; ?>&month=<?php echo $_GET['month']; ?>&year=<?php echo $_GET['year']; ?>" class="btn btn-success"><span></span> Export</a>
    </div>
  </div>
</nav>