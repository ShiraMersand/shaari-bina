import pandas as pd
import pyodbc


class connectDB:
    #conn = pyodbc.connect('Driver={SQL Server};'
     #                     'Server=DESKTOP-ROECGEC;'
    #                      'Database=SR_project;'
    #                      'Trusted_Connection=yes;')

    #cursor = conn.cursor()
    #cursor.execute('SELECT * FROM Users')

    # for row in cursor:
    #     print(row)
    import time


    # time_start = time.time()

    from datetime import datetime

    timestamp = time.time()
    dt_object = datetime.fromtimestamp(timestamp)

    print("dt_object =", dt_object)
    print("type(dt_object) =", type(dt_object))

    print(time.gmtime())

    #cursor.execute(
    #"INSERT INTO Videos ( location_id,start_time,end_time,num_detected,num_permitted,is_model_true,is_valid,is_new,user_id_update,date_update ) VALUES (?,?,?,?,?,?,?,?,?,?)",
    #(1, dt_object, dt_object, 3, 4, None, None, 1, None, None))


    #conn.commit()
    # sql_query = pd.read_sql_query('SELECT * FROM SR_project.dbo.Videos', conn)
    # print(sql_query)
    # print(type(sql_query))