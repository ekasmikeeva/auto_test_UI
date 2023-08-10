describe('Расчет по кейсу', () => {
    it('displays two todo items by default', () => {
        //авторизация
        cy.visit('http://test.calculation-constructor');
        cy.get('#username').click().type('test').should('have.value', 'test');
        cy.get('#password').click().type('test').should('have.value', 'test');
        cy.get('#kc-login').click().url().should('contains', 'http://test');
        cy.wait(6000);
        //выбор кейсов для расчета
        cy.contains('Тест').parent().parent().click({force: true});
        cy.contains('2021_2023_тест_ф').click({force: true});
        cy.wait(500);
        //выбор фэм, макры и запуск расчета
        cy.get(':nth-child(2) > .MuiAccordionSummary-root > .MuiAccordionSummary-content > .jss119').parent().parent().click({force: true});
        cy.contains('NDD').click({force: true});
        cy.get(':nth-child(4) > .MuiAccordionSummary-root > .MuiAccordionSummary-content > .jss119').parent().parent().click({force: true});
        cy.contains('macro').click({force: true});
        cy.get('[data-testid="PlayCircleOutlineIcon"] > path').click({force: true});
        cy.wait(500);
        cy.contains('Расчет закончен').click({force: true});
        cy.wait(500);
        cy.contains('Экспорт').click({force: true});
    });
});
