<?php declare(strict_types=1);
use PHPUnit\Framework\TestCase;
use phpDocumentor\Reflection\PseudoTypes\True_;

final class testing extends TestCase
{
    public function testStudentsCanEnroll(): void
    {
        $this->assertTrue(TRUE);
    }public function testClientsCanBoookAnAppointment(): void
    {
        $this->assertTrue(TRUE);
    }public function testStudentsCanUpdate(): void
    {
        $this->assertTrue(FALSE);
    }public function testAdminCanCreate(): void
    {
        $this->assertTrue(TRUE);
    }public function testAdminCanUpdate(): void
    {
        $this->assertTrue(TRUE);
    }public function testAdminCanDelete(): void
    {
        $this->assertTrue(TRUE);
    }public function testClientsCanCommentOnPhotos(): void
    {
        $this->assertTrue(FALSE);
    }
}