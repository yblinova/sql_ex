select case 
    when Income_o.point is not NULL then Income_o.point
    else Outcome_o.point
    end point
    ,
    case
    when Income_o.date is not NULL then Income_o.date
    else Outcome_o.date
    end date
    , 
    Income_o.inc,
    Outcome_o.out
from Income_o
full join
Outcome_o
on Income_o.point=Outcome_o.point and Income_o.date=Outcome_o.date
