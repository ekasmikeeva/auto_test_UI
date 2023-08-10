describe('Расчет консолидаций', () => {
    it('displays two todo items by default', () => {
        //авторизация
        cy.visit('http://test.calculation-constructor');
        cy.get('#username').click().type('test').should('have.value', 'test');
        cy.get('#password').click().type('test').should('have.value', 'test');
        cy.get('#kc-login').click().url().should('contains', 'http://test');
        cy.wait(5000);
        //выбор и перенос кейсов для расчета
        cy.contains('Бур_3_скв').parent().parent().click({force: true}); 
        cy.wait(200);
        const dataTransfer = new DataTransfer();
        cy.contains('2021_2023_Бур1').trigger('dragstart', {dataTransfer, force: true});
        cy.get('.jss84').trigger('drop', {dataTransfer, force: true});
        cy.contains('2021_2023_Бур2').trigger('dragstart', {dataTransfer, force: true});
        cy.get('.jss85').trigger('drop', {dataTransfer, force: true});
        cy.contains('2021_2023_Бур3').trigger('dragstart', {dataTransfer, force: true});       
        cy.get('.jss85').trigger('drop', {dataTransfer, force: true});
        //создание консолидации
        cy.get('.MuiGrid-root > .MuiButton-root').click({force: true});
        cy.get('.MuiModal-root > .MuiPaper-root > .MuiTypography-root').parent().find('div.MuiFormControl-root.MuiTextField-root.css-i44wyl').click().type('Конс тест');
        cy.get('.MuiButton-contained').click();
        cy.contains('Конс тест').trigger('dragstart', {dataTransfer, force: true});
        cy.get('.jss84').trigger('drop', {dataTransfer, force: true});
        //добавление кейса к консолидации
        cy.contains('2021_2023_Бур4').trigger('dragstart', {dataTransfer, force: true});
        cy.get('.jss85').trigger('drop', {dataTransfer, force: true});
        //создание консолидации
        cy.get('.MuiGrid-root > .MuiButton-root').click({force: true});
        cy.get('.MuiModal-root > .MuiPaper-root > .MuiTypography-root').parent().find('div.MuiFormControl-root.MuiTextField-root.css-i44wyl').click().type('Конс 2 тест');
        cy.get('.MuiButton-contained').click();
        cy.contains('Конс 2 тест').trigger('dragstart', {dataTransfer, force: true});
        cy.get('.jss84').trigger('drop', {dataTransfer, force: true});
        //удаление кейса из конс
        cy.get(':nth-child(4) > .MuiBox-root > [data-testid="DeleteOutlineIcon"]').click({force: true});
        //удаление консолидации
        cy.get(':nth-child(4) > :nth-child(2) > .MuiAccordionSummary-root > .MuiAccordionSummary-content > .MuiButtonBase-root > [data-testid="MoreVertIcon"]').click({force: true});
        cy.get(':nth-child(3) > .MuiListItemText-root > .MuiTypography-root').click({force: true});
        //выбор макры, фэм и запуск расчета
        // cy.get(':nth-child(2) > .MuiAccordionSummary-root > .MuiAccordionSummary-content > .jss119').parent().parent().click({force: true});
        // cy.contains('NDD').click({force: true});
        // cy.get(':nth-child(4) > .MuiAccordionSummary-root > .MuiAccordionSummary-content > .jss119').parent().parent().click({force: true});
        // cy.contains('macro').click({force: true});
        // cy.get('[data-testid="PlayCircleOutlineIcon"] > path').click({force: true});
        // cy.wait(700);
        // cy.contains('Расчет закончен').click({force: true});
        // cy.wait(500);
        // cy.contains('Экспорт').click({force: true});
    
    });
});
