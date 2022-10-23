<?php

namespace App\Class\Pagination;

class Paginator
{
    /**
     * @var int всего записей
     */
    private int $total;

    /**
     * @var int записей на страниу
     */
    private int $perPage;

    /**
     * @var int количество страниц
     */
    private int $totalPages;

    /**
     * @var string GET параметр для пагинации
     */
    private string $get;

    public function __construct(int $total, int $perPage, string $get = 'page')
    {
        $this->total = $total;
        $this->perPage = $perPage;
        $this->get = $get;
        $this->totalPages = ceil($total / $perPage);
    }

    public function getOffset()
    {
        $currentPage = (isset($_GET[$this->get])) ? $_GET[$this->get] : 1;

        return  ($currentPage - 1) * $this->perPage;
    }

    public function getLimit()
    {
        $currentPage = (isset($_GET[$this->get])) ? $_GET[$this->get] : 1;

        return $this->perPage;
    }

    public function getTotalPages()
    {
        return $this->totalPages;
    }

}