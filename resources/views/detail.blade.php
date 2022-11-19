<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>DETAIL Data</div>
    <div class='panel-body'>      
        <div class='form-group'>
          <label>Nama</label>
          <p>{{$row->nama}}</p>
        </div>

        <div class='form-group'>
            <label>jabatan</label>
            <p>{{$row->jabatan}}</p>
          </div>

          <div class='form-group'>
            <label>hp</label>
            <p>{{$row->hp}}</p>
          </div>

          <div class='form-group'>
            <label>website</label>
            <p>{{$row->web}}</p>
          </div>

          <div class='form-group'>
            <label>link</label>
            <p>{{$row->link}}</p>
          </div>

          <div class='form-group'>
            <label>email</label>
            <p>{{$row->email}}</p>
          </div>

          <div class='form-group'>
            <label>tentang</label>
            <p>{{$row->tentang}}</p>
          </div>

          <div class='form-group'>
            <label>pengalaman</label>
            <p>{{$row->pengalaman}}</p>
          </div>
         
        <!-- etc .... -->
        
      </form>
    </div>
  </div>
@endsection