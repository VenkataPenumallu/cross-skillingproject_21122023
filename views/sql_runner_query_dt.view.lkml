
view: sql_runner_query_dt {
  derived_table: {
    sql: SELECT * FROM demo_db.Employees LIMIT 10 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: emp_id {
    type: number
    sql: ${TABLE}.EmpID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: manager {
    type: number
    sql: ${TABLE}.Manager ;;
  }

  set: detail {
    fields: [
        emp_id,
	name,
	manager
    ]
  }
}
