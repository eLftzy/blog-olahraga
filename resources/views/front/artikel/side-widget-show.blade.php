<div class="">
    <!-- Search widget-->
    <div class="card mb-4" shadow>
        <div class="card-header">Search</div>
        <div class="card-body">
            <form action="{{ route('search') }}" method="POST">
                @csrf
                <div class="input-group">
                    <input class="form-control" type="text" name="keyword" placeholder="Cari Artikel...."/>
                    <button class="btn btn-primary" id="button-search" type="submit">Cari</button>
                </div>
            </form>
        </div>
    </div>
</div>
