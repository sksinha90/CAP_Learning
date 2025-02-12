import cds from '@sap/cds';

class CFService extends cds.ApplicationService {
    init(){

        this.on('getApplications', async (req) =>{

            
        })

        return super.init();
    }
}