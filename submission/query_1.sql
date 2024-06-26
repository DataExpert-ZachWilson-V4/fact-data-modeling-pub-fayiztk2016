-- use row_number by partition to identify duplicate rows
with
    details_with_rownum as (
        select
            *,
            row_number() over (
                partition by
                    game_id,
                    team_id,
                    player_id
            ) as row_num
        from
            bootcamp.nba_game_details
    )
select
    *
from
    details_with_rownum
where
    details_with_rownum.row_num = 1