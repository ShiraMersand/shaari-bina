import pyodbc
from datetime import datetime

class connectDB:

    def __init__(self):
        self.conn = pyodbc.connect('Driver={SQL Server};'
                                   'Server=DESKTOP-ROECGEC;'
                                   'Database=SR_project;'
                                   'Trusted_Connection=yes;')

        self.cursor = self.conn.cursor()

    def insertIntoVideo(self,Video):
        if Video.NumPermitted<Video.NumDetected:
            Video.IsValid=0
        else:
            Video.IsValid=1
        self.cursor.execute("INSERT INTO Videos ( location_id,start_time,end_time,num_detected,num_permitted,is_model_true,is_valid,is_new,user_id_update,date_update,src ) VALUES (?,?,?,?,?,?,?,?,?,?,?)",
                   (Video.LocationId,datetime.fromtimestamp(Video.StartTime) , datetime.fromtimestamp(Video.EndTime),
                    Video.NumDetected,Video.NumPermitted,Video.IsModelTrue,Video.IsValid,Video.IsNew,Video.UserIdUpdate
                    ,None,Video.src))
        self.conn.commit()