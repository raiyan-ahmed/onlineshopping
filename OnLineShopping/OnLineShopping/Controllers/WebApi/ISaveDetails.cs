﻿using OnLineShopping.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnLineShopping.Controllers.WebApi
{
    interface ISaveDetails
    {
      
        int InsertMasterTranInfo(MasterTranViewModel MTranView);
    }
}