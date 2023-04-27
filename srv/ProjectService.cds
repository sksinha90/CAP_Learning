using {usr} from '../db/data-model';

service ProjectService {
    entity Users    as select from usr.Users;
    entity Projects as select from usr.Projects;
}
