<script lang="ts">
    import Cards from "$lib/components/Cards.svelte";

    type Props = {
        title: string;
        description: string;
    };
    let cards: Props[] = [
        {
            title: "Leviosa",
            description:
                "An activity management progressive web  app (PWA) for a company organizing wellness events",
        },
        {
            title: "Investigo desktop",
            description:
                "An activity management software for a private detective",
        },
        {
            title: "Investigo mobile",
            description:
                "An activity management software for a private detective",
        },
        {
            title: "The content aggregator that has no name",
            description:
                "A highly customizable content aggregator web application",
        },
        {
            title: "GoSvelteApp",
            description:
                "A boilerplace to develop application using svelte for the frontend and go(lang) in the backend",
        },
    ];
</script>

<Cards {cards} />
