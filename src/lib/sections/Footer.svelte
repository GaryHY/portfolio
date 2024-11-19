<footer>
    <div class="separator"></div>
    <div class="footer__content container__small">
        <div>
            <p class="designed-by">
                © Designed by Gary HENRY. All rights reserved
            </p>
            <p class="made-with">
                Made with love and sveltekit (I love that framework)
            </p>
        </div>
        <p class="last-update">
            Last updated by Gary on November 16, 2024, 23:08PM EST
        </p>
    </div>
</footer>

<style>
    footer {
        margin-top: 12rem;
    }
    .footer__content {
        padding-block: 6rem;
        margin-inline: auto;
        display: flex;
        justify-content: space-between;
        align-items: flex-end;
        color: hsl(var(--clr-dark-secondary));
    }
    .separator {
        width: 100%;
        height: 1px;
        border: 1px solid #f7f7f9;
    }
    .designed-by {
        font-weight: 600;
        color: hsl(var(--clr-grey-700));
    }
    .made-with {
        color: hsl(var(--clr-grey-500));
    }
    .last-update {
        color: hsl(var(--clr-grey-400));
    }
</style>
