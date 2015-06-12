//
//  main.m
//  ChooseYourAdventure_CHK
//
//  Created by Charles Kang on 6/11/15.
//  Copyright (c) 2015 Charles Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // user input begins with if statements!
        
        int gender;
        printf("Hello, welcome to the world. Are you male or female? \n 0) male \n 1) female \n");
        scanf("%d", &gender);
        
        if (gender == 0) {
            printf("Hello son, what is your name? \n");
        }
        
        if (gender == 1) {
            printf("Hello daughter, what is your name? \n");
        }
        
        fpurge(stdin);
        char name[20];
        char age[25];
        
        scanf("%[^\n]", &name);
        scanf(")%[^\n]", age);
        
        fpurge(stdin);
        printf("Nice to meet you, %s! I'm dad. How old are you?  \n", name, age);
        
        
        
        int ageResponse;
        
        scanf("%d", &ageResponse);
        
        
        // conditional statements
        
        // code will stop here if you are 1-12
        if( (ageResponse>=1) && (ageResponse<=12) ) {
            printf("You are a child! Come back when you're older! \n");
        }
        
        fpurge(stdin);
        // code will stop here if you are 13-19
        if( (ageResponse >= 13) && (ageResponse <= 19) ){
            printf("You are a teenager! Still too young! Come back later! \n");
        }
        // code will stop here if you are 20-25
        if( (ageResponse >= 20) && (ageResponse <= 25) ) {
            printf("You are an adult now, get a job! \n");
            
        }
        // story will continue from this point if you input 26 or more
        
        int occupation;
        if (ageResponse >= 26) {
            printf("PAST 26 AND NOT DOCTOR? Explain yourself! Are you:  \n 1) a doctor? \n 2) unemployed? \n 3) married? \n");
        }
        scanf("%d", &occupation);
        
        if (occupation == 1) {
            printf("I'm so proud of you. I knew you could do it! \n");
        }
        
        fpurge(stdin);
        
        if (occupation == 2) {
            printf("WHAT? You are out of chances! \n");
        }
        
        fpurge(stdin);
        
        if (occupation == 3) {
            printf("But at least you doctor right? No?! \n");
        }
        
        fpurge(stdin);
        // if you doctor, you live. if not, you die!
        BOOL isDoctorNow = (occupation == 1);
        BOOL isNotDoctor = !isDoctorNow;
        
        
        if (isDoctorNow) {
            printf("You get to live another week! \n");
        }
        else printf("You dead now. \n \nThe End");
        
        
        
        return 0;
    }
}