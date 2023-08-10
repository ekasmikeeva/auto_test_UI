describe('Проверка по чеклисту', () => {
    
    it('displays two todo items by default', () => {
//авторизация
        cy.log('text') 
        cy.visit('http://test.calculation-constructor');
        cy.get('#username').click().type('test').should('have.value', 'test');
        cy.get('#password').click().type('test').should('have.value', 'test');
        cy.get('#kc-login').click().url().should('contains', 'http://test/');
        cy.wait(5000);
    });
    it('Поиск и удаление макры', () => {
        //Поиск и удаление макры
        
        cy.get(':nth-child(3) > .MuiAccordionSummary-root > .MuiAccordionSummary-content > .jss119').parent().parent().click({force: true});
        cy.get(':nth-child(3) > .MuiCollapse-root > .MuiCollapse-wrapper > .MuiCollapse-wrapperInner > .MuiAccordion-region > .MuiAccordionDetails-root > .MuiFormControl-root > .MuiOutlinedInput-root')
            .parent().find('input.MuiOutlinedInput-input.MuiInputBase-input.MuiInputBase-inputSizeSmall.MuiInputBase-inputAdornedStart.css-162edyi')
            .click({force: true}).type('test', {force: true});
        cy.get('.MuiPaper-root.Mui-expanded > .MuiCollapse-root > .MuiCollapse-wrapper > .MuiCollapse-wrapperInner > .MuiAccordion-region > .MuiAccordionDetails-root > .MuiList-root > .MuiListItem-root > .MuiButtonBase-root > [data-testid="MoreVertIcon"]')
            .eq(0).click({force: true})
        cy.get('.MuiListItemText-root > .MuiTypography-root').eq(0).click({force: true}) //удалить
        cy.get(':nth-child(3) > .MuiCollapse-root > .MuiCollapse-wrapper > .MuiCollapse-wrapperInner > .MuiAccordion-region > .MuiAccordionDetails-root > .MuiFormControl-root > .MuiOutlinedInput-root')
            .parent().find('input.MuiOutlinedInput-input.MuiInputBase-input.MuiInputBase-inputSizeSmall.MuiInputBase-inputAdornedStart.css-162edyi') 
            .click({force: true}).clear({force: true}); //очистить поле
    });
//работа с данными  (вроде бы правильно, но баг на редактировании)
//редактирование назв. МК
         //cy.get(':nth-child(2) > .MuiAccordionSummary-root > .MuiAccordionSummary-content > .MuiButtonBase-root > [data-testid="MoreVertIcon"]').click({force: true}); //меню
         //cy.get('[tabindex="0"] > .MuiListItemText-root > .MuiTypography-root').click({force: true}); //редактрировать
         //cy.get('div.MuiFormControl-root.MuiTextField-root.css-18poc0s').find('input.MuiOutlinedInput-input.MuiInputBase-input.MuiInputBase-inputSizeSmall.MuiInputBase-inputAdornedEnd.css-b52kj1').click({force: true}).clear({force: true});
         //cy.get('.css-rfnosa > :nth-child(2) > .MuiFormControl-root > .MuiOutlinedInput-root').click({force: true}).type('hello', {force: true});
         //cy.get('.MuiOutlinedInput-root > .MuiButtonBase-root').click({force: true});
//удаление МК
         //cy.get(':nth-child(2) > .MuiAccordionSummary-root > .MuiAccordionSummary-content > .MuiButtonBase-root > [data-testid="MoreVertIcon"]').click({force: true}); //меню
         //cy.get('[tabindex="-1"] > .MuiListItemText-root > .MuiTypography-root').click({force: true}); //удалить
         //cy.get('.css-1xt3qe > .MuiBox-root > :nth-child(1)').click({force: true}); //Да
         //cy.get('[tabindex="-1"] > .MuiListItemText-root > .MuiTypography-root').click({force: true}); //удалить
         //cy.get('.css-1xt3qe > .MuiBox-root > :nth-child(2)').click({force: true}); //Отмена


//редактирование назв. кейса
         //cy.get('.css-rfnosa > :nth-child(2) > .MuiAccordionSummary-root > .MuiAccordionSummary-content > .MuiTypography-root').click({force: true}); //раскрыть мк
         //cy.get('.MuiPaper-root.Mui-expanded > .MuiCollapse-root > .MuiCollapse-wrapper > .MuiCollapse-wrapperInner > .MuiAccordion-region > .MuiAccordionDetails-root > .MuiList-root > :nth-child(1) > .MuiBox-root > .MuiButtonBase-root').click({force: true});
         //cy.get('[tabindex="0"] > .MuiListItemText-root > .MuiTypography-root').click({force: true}); //редактировать
         //cy.get('div.MuiFormControl-root.MuiTextField-root.css-18poc0s')
            //.find('input.MuiOutlinedInput-input.MuiInputBase-input.MuiInputBase-inputSizeSmall.MuiInputBase-inputAdornedEnd.css-b52kj1')
            //.click({force: true}).clear({force: true}).click({force: true}).type('2021 кейс ред', {force: true});
         //cy.get('.MuiOutlinedInput-root > .MuiButtonBase-root').click({force: true}); //сохранить
//удаление кейса
         //cy.get('.MuiPaper-root.Mui-expanded > .MuiCollapse-root > .MuiCollapse-wrapper > .MuiCollapse-wrapperInner > .MuiAccordion-region > .MuiAccordionDetails-root > .MuiList-root > :nth-child(1) > .MuiBox-root > .MuiButtonBase-root').click({force: true});
         //cy.wait(1000);
         //cy.get('[tabindex="-1"] > .MuiListItemText-root > .MuiTypography-root').click({force: true}); //удалить
//Поиск МК         
         //cy.get('[style="width: 100%; margin-bottom: 8px;"] > .MuiOutlinedInput-root > #outlined-textarea')
            //.click({force: true}).type('инфра', {force: true});
         //cy.wait(100);
         //cy.get('[style="width: 100%; margin-bottom: 8px;"] > .MuiOutlinedInput-root > #outlined-textarea').clear({force: true});   
//Поиск и удаление ФЭМ
         //cy.get(':nth-child(2) > .MuiAccordionSummary-root > .MuiAccordionSummary-content > .jss119').parent().parent().click({force: true}); //раскрыть усл расчета
         //cy.get('.MuiPaper-root.Mui-expanded > .MuiCollapse-root > .MuiCollapse-wrapper > .MuiCollapse-wrapperInner > .MuiAccordion-region > .MuiAccordionDetails-root > .MuiFormControl-root > .MuiOutlinedInput-root')
            //.parent().find('input.MuiOutlinedInput-input.MuiInputBase-input.MuiInputBase-inputSizeSmall.MuiInputBase-inputAdornedStart.css-162edyi')
            //.click({force: true}).type('test', {force: true});
         //cy.get('.MuiPaper-root.Mui-expanded > .MuiCollapse-root > .MuiCollapse-wrapper > .MuiCollapse-wrapperInner > .MuiAccordion-region > .MuiAccordionDetails-root > .MuiList-root > .MuiListItem-root > .MuiButtonBase-root > [data-testid="MoreVertIcon"]')
            //.eq(0).click({force: true})
         //cy.get('.MuiListItemText-root > .MuiTypography-root').eq(0).click({force: true}) //удалить
});
