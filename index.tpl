% include('header.tpl')

<form class="register" action="start" method="POST">
    <input type="text" name="name" placeholder="name" required autocomplete="name">
    <input type="email" name="email" placeholder="email" required autocomplete="email">
    <input type="number" name="time" placeholder="minutes" required>
    <button>Add</button>
</form>

<div class="cont">

    % for i in range(len(ls)):
        
        <div class="item">
            <div class="name-cont">
                <h2>{{i+1}}<h2>
                <div>
                    <h3>{{ls[i]['name']}}</h3>
                    <p>{{ls[i]['email']}}</p>
                </div>  
            </div>
            <h1>{{ls[i]['time']}} mins</h1>
            <div class="item-btn">
                <form action="/call" method="POST">
                    <input type="text" name="call_id" value="{{i}}" style="display: none;">
                    <button>Call</button>
                </form>
                <form action="/delete" method="POST">
                    <input type="text" name="del_id" value="{{i}}" style="display: none;">
                    <button>Delete</button>
                </form>
            </div>       
        </div>

    % end
</div>

% include('footer.tpl')