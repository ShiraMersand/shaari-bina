# import datetime
#
# x = datetime.datetime.now()
# print(x)

class video:

    def __init__(self, StartTime, EndTime, NumDetected,src):
        self.LocationId=None
        self.StartTime=StartTime
        self.EndTime=EndTime
        self.NumDetected=NumDetected
        self.NumPermitted=1
        self.IsModelTrue=None
        #####################################################
        self.IsValid=0
        #####################################################
        self.IsNew=True
        self.UserIdUpdate=None
        self.DateUpdate=None
        self.src=src
