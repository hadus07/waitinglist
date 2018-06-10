% include('header.tpl')

<form class="register" action="start" method="POST">
    <input type="text" name="name" placeholder="name" required autocomplete="name">
    <input type="email" name="email" placeholder="email" required autocomplete="email">
    <input type="number" name="num" placeholder="number of people" required>
    <button>Add</button>
</form>
<div class="cont">

    % for i in range(len(ls)):
        
        <div class="item">
            <div class="name-cont">
                <h3>{{i+1}}<h3>
                <div>
                    <h4>{{ls[i]['name']}}</h4>
                    <p>{{ls[i]['email']}}</p>
                </div>  
            </div>
            <h3>{{ls[i]['num']}}
                % if(int(ls[i]['num']) == 1):
                    person
                % else:
                    people
                % end
            </h3>
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
</body>
</html>