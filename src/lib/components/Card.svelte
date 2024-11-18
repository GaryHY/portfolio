<script lang="ts">
    import { ArrowUpRight } from "lucide-svelte";
    let color: string = $state("hsl(var(--clr-dark-ternary))");

    type Props = {
        title: string;
        description: string;
        isActive: boolean;
        activeFn: () => void;
        inactiveFn: () => void;
    };
    let { title, description, isActive, activeFn, inactiveFn }: Props =
        $props();

    function enterButton() {
        color = "hsl(var(--clr-dark-primary))";
        activeFn();
    }

    function leaveButton() {
        color = "hsl(var(--clr-dark-ternary))";
        inactiveFn();
    }
    import { goto } from "$app/navigation";
    function getProjectPage() {
        return `/project/${title.toLowerCase()}`;
    }
</script>

<div class="card grid" style="--gap: 2rem">
    <div class="flex card__header">
        <div class="grid" style="--gap: 0.5rem;">
            <h3 class="card__title">{title}</h3>
            <p class="card__description">{description}</p>
        </div>
        <div class="overlay" class:active-overlay={isActive}></div>
        <button
            class="cta"
            onmouseenter={enterButton}
            onmouseleave={leaveButton}
            onclick={() => goto(getProjectPage())}
        >
            <ArrowUpRight {color} size={32} />
        </button>
    </div>
    <div class="separator_custom"></div>
    <div class="img"></div>
</div>

<style>
    .card {
        --card-padding: 2rem;
        --card-border-radius: 2rem;
        padding: var(--card-padding);
        border-radius: var(--card-border-radius);
        background-color: hsl(var(--clr-light-secondary));
        min-height: 42rem;
        color: hsl(var(--clr-dark-ternary));
        font-size: 1.4rem;
        position: relative;
    }
    .overlay {
        position: absolute;
        border-radius: var(--card-border-radius);
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: hsl(var(--clr-light-primary));
        opacity: 0;
        z-index: 2;
        --transition-duration: 0.25s;
        transition: opacity var(--transition-duration) ease-in-out;
        pointer-events: none;
    }
    .active-overlay {
        opacity: 0.8;
        pointer-events: auto;
    }

    .card__header {
        align-items: flex-start;
        justify-content: space-between;
    }
    .card__title {
        font-size: 2rem;
        font-weight: 600;
        color: hsl(var(--clr-dark-primary));
    }
    .cta {
        background-color: hsl(var(--clr-light-primary));
        border-radius: 100%;
        padding: 1rem;
        height: fit-content;
        border: 4px solid hsl(var(--clr-light-fournary));
        flex-shrink: 0;
    }
    .cta:is(:hover, :focus) {
        background-color: hsl(var(--clr-light-primary));
        border: 4px solid hsl(var(--clr-light-primary));
    }
    .img {
        width: 40rem;
        height: 36rem;
        background-color: hsl(var(--clr-light-ternary));
        border-radius: calc(
            var(--card-padding) - 0.5 * var(--card-border-radius)
        );
    }
    .separator_custom {
        width: 100%;
        height: 1px;
        background-color: hsl(var(--clr-light-fournary));
        opacity: 0.5;
    }
</style>
