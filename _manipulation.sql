INSERT INTO `ACTIVITIES`( `site_id`, `name`, `description`, `createAt`, `updatedAt`) VALUES (:site_id, :name, :description, :createAt, :updatedAt);
INSERT INTO `ACTIVITIES_FILES`(`activity_id`, `file_id`) VALUES (:activity_id, :file_id);
INSERT INTO `EMPLOYEES`(`employee_id`, `role_id`, `file_id`, `first_name`, `last_name`, `age`, `background`, `createAt`, `updatedAt`) VALUES (:employee_id, :role_id, :file_id, :first_name, :last_name, :age, :background, :createAt, :updatedAt);
INSERT INTO `FILES`(`file_id`, `url`, `title`, `description`,`type`, `createAt`, `updatedAt`) VALUES (:file_id, :url, :title, :description, :type, :createAt, :updatedAt);
INSERT INTO `PLACES`(`place_id`, `site_id`, `name`, `description`, `createAt`, `updatedAt`) VALUES (:place_id, :site_id, :name, :description, :createAt, :updatedAt);
INSERT INTO `PLACES_FILES`(`place_id`, `file_id`) VALUES (:place_id, :file_id);
INSERT INTO `POSTS`(`post_id`, `post_type_id`, `label`, `description`, `createAt`, `updatedAt`) VALUES (:post_id, :post_type_id, :label, :description, :createAt, :updatedAt);
INSERT INTO `POSTS_FILES`(`post_id`, `file_id`) VALUES (:post_id, :file_id);
INSERT INTO `POSTS_TYPE`(`post_type_id`, `site_id`, `label`, `createAt`, `updatedAt`) VALUES (:post_type_id, :site_id, :label,:createAt,:updatedAt);
INSERT INTO `PROJECTS`(`project_id`, `site_id`, `file_id`, `name`, `description`, `createAt`, `updatedAt`) VALUES (:project_id, :site_id, :file_id, :name, :description, :createAt, :updatedAt);
INSERT INTO `PUBS`(`pub_id`, `site_id`, `file_id`, `name`, `description`, `createAt`, `updatedAt`) VALUES (:pub_id, :site_id, :file_id, :name, :description, :createAt, :updatedAt);
INSERT INTO `ROLES`(`role_id`, `site_id`, `label`, `description`, `createAt`, `updatedAt`) VALUES (:role_id, :site_id, :label, :description, :createAt, :updatedAt);
INSERT INTO `SITES`(`site_id`, `user_id`, `file_id`, `name`, `slogan`, `district`, `country`, `position`, `history`, `createAt`, `updatedAt`) VALUES (:site_id, :user_id, :file_id, :name, :slogan, :district, :country, :position, :history, :createAt, :updatedAt);
INSERT INTO `THEMES`(`theme_id`, `user_id`, `name`, `createAt`, `updatedAt`) VALUES (:theme_id, :user_id, :name, :createAt, :updatedAt);
INSERT INTO `USERS`(`user_id`, `email`, `password`, `name`, `role`, `createAt`, `updatedAt`) VALUES (:user_id, :email, :password, :name, :role, :createAt, :updatedAt);
/* les delete */
DELETE FROM `USERS` WHERE `user_id` = id;
DELETE FROM  `FILES` WHERE `file_id` = id;
DELETE FROM  `THEMES` WHERE `theme_id` = id;
DELETE FROM  `POST_TYPE` WHERE `post_type_id` = id;
DELETE FROM  `POST` WHERE `post_id` = d;i
DELETE FROM  `POST_FILES` WHERE `post_id` = id and file_id =id ;
DELETE FROM  `ROLES` WHERE `role_id` = id;
DELETE FROM  `PLACES` WHERE `place_id` = id;
DELETE FROM  `EMPLOYEES` WHERE `employee_id` = id;
DELETE FROM  `ACTIVITIES` WHERE `activity_id` = id;
DELETE FROM  `ACTIVITIES_FILE` WHERE `activity_id` = id and file_id =id ;
DELETE FROM  `PUBS` WHERE `pub_id` = id;
DELETE FROM  `PROJECTS `WHERE `project_id `= id;
DELETE FROM  `SITES` WHERE `site_id` = id;
DELETE FROM  `PLACE_FILES` WHERE `place_file_id` = id;
/* les update*/

UPDATE USERS SET  role = 'nouvelle valeur' WHERE user_id =id ;
UPDATE USERS SET email = 'nouvelle valeur' WHERE user_id = id ;
UPDATE USERS SET password = 'nouvelle valeur' WHERE user_id = id ;
UPDATE USERS SET name = 'nouvelle valeur' WHERE user_id = id ;



UPDATE FILES SET url = 'nouvelle valeur' WHERE file_id =id ;
UPDATE FILES SET title = 'nouvelle valeur' WHERE file_id =id ;
UPDATE FILES SET description = 'nouvelle valeur' WHERE  file_id =id ;
UPDATE FILES SET type = 'nouvelle valeur' WHERE file_id =id ;

UPDATE THEMES SET name = 'nouvelle valeur' WHERE theme_id = id ;

UPDATE SITES SET name = 'nouvelle valeur' WHERE site_id = id ;
UPDATE SITES SET district = 'nouvelle valeur' WHERE  site_id = id ;
UPDATE SITES SET country = 'nouvelle valeur' WHERE  site_id = id ;
UPDATE SITES SET position = 'nouvelle valeur' WHERE  site_id = id ;
UPDATE SITES SET history = 'nouvelle valeur' WHERE site_id = id ;
UPDATE SITES SET slogan = 'nouvelle valeur' WHERE site_id = id ;

UPDATE POST_TYPE SET label = 'nouvelle valeur' WHERE post_type_id = id ;

UPDATE POSTS SET label = 'nouvelle valeur' WHERE post_id = id ;
UPDATE POSTS SET description = 'nouvelle valeur' WHERE post_id = id ; 

UPDATE ROLES SET label = 'nouvelle valeur' WHERE role_id = id;
UPDATE ROLES SET description = 'nouvelle valeur' WHERE  role_id = id;

UPDATE EMPLOYEES SET nomcolne = 'nouvelle valeur' WHERE employee_id = id ;
UPDATE EMPLOYEES SET nomcolne = 'nouvelle valeur' WHERE employee_id = id ;
UPDATE EMPLOYEES SET nomcolne = 'nouvelle valeur' WHERE employee_id = id ;
UPDATE EMPLOYEES SET nomcolne = 'nouvelle valeur' WHERE employee_id = id ;

UPDATE PLACES SET nomcolne = 'nouvelle valeur' WHERE place_id = id ;
UPDATE PLACES  SET nomcolne = 'nouvelle valeur' WHERE place_id = id;

UPDATE ACTIVITIES SET name = 'nouvelle valeur' WHERE activity_id = id;
UPDATE ACTIVITIES SET description = 'nouvelle valeur' WHERE activity_id = id;

UPDATE PUBS SET name = 'nouvelle valeur' WHERE pub_id =id ;
UPDATE PUBS SET description = 'nouvelle valeur' WHERE pub_id =id;

UPDATE PROJECTS SET name = 'nouvelle valeur' WHERE project_id = id;
UPDATE PROJECTS SET description = 'nouvelle valeur' WHERE project_id = id;

/* les requettes de selection*/

/* la listes des utilisateur */
SELECT * FROM USERS ;
/* la listes des themes d'un utilisateur*/
SELECT * FROM THEMES WHERE user_id = id ;
 
 /* la listes des sites creez par le system*/
SELECT * FROM SITES ;

 /* la liste des sites d'un utilisateur */
 SELECT * FROM SITES WHERE user_id = id ;

  /* la liste des roles d'un sites */
   SELECT * FROM ROLES WHERE site_id = id ;

/* la liste des places d'un sites */
 SELECT * FROM PLACES WHERE place_id = id ;

 /* la liste des activite d'un sites */
 SELECT * FROM ACTIVITIES WHERE site_id = id ; 

 /* la liste des pubs d'un site */
  SELECT * FROM PUBS WHERE site_id = id ; 

  /* la liste des project d'un sites */
   SELECT * FROM PROJECTS WHERE site_id = id ;

   /* la listes des post type dun sites*/ 
    SELECT * FROM POST_TYPE WHERE user_id = id ;
    
    /* la listes des posts d'un site  : pour cela jutilise l'post type id */


     
     /* la liste des employee dun site */
    SELECT * FROM EMPLOYEES 
    INNER JOIN SITES 
    WHERE     EMPLOYEES.file_id = SITES.file_id    and EMPLOYEES.site_id = id  ;


    /* la liste des places d'un site et leur file  */

    /* la liste des post d'un sites et leur file*/

     /* la listes des activites d'un sites et leur file */
     
     /* lesfiles d'un pubs */
     SELECT * FROM FILES 
     INNER JOIN PUBS 
     WHERE PUBS.file_id = FILES.file_id  and PUBS.pub_id =id ;
     /* les files dun project */
     SELECT * FROM FILES 
     INNER JOIN PROJECTS 
     WHERE PROJECTS.file_id = FILES.file_id and PROJECTS.project_id = id ;
     /* les files dune activitee*/

     /* les files d'une place*/
    



