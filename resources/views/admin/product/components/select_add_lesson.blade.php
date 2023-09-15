
    <div class="select_body d-flex justify-content-between align-items-center">
        <select name="{{ $name }}{{ $attributes?'[]' : '' }}" multiple id="{{ $name }}" class="form-control selectpicker {{ $class }}" {{ $attributes }} data-live-search="true" >
            <option value="">Select file</option>
            @foreach ($collection as $key=>$item)
                @if (isset($value) && !is_object($value) && !is_array($value))
                    <option {{ $value == $item->id ?'selected':'' }} value="{{ $item->id }}">{{ $item->name }}</option>
                @endif

                @if(!isset($value) || (isset($value) && $value == ''))
                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                @endif

                @if (isset($value) && is_object($value))
                    @php
                        $value_ids = [];
                        foreach ($value as $key2 => $item2) {
                            array_push($value_ids,$item2->lesson_id);
                        }
                    @endphp
                    <option {{ in_array($item->id,$value_ids ) ?'selected':'' }} value="{{ $item->id }}">{{ $item->name }}</option>
                @endif
            @endforeach
        </select>
    </div>
    

