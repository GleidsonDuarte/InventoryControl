using System;

namespace InventoryControlApplicationWEB.Model
{
    public class CategoryDAO : Category, IBasicDAO
    {
        void IBasicDAO.CreateDAO()
        {
            throw new NotImplementedException();
        }

        void IBasicDAO.AlterDAO()
        {
            throw new NotImplementedException();
        }

        void IBasicDAO.DeleteDAO()
        {
            throw new NotImplementedException();
        }
    }
}