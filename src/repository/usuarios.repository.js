import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient;

export const getAll = async () => {
 return await prisma.usuarios.findMany();
}

export const getOne = async (id) => {
    return await prisma.usuarios.findUnique(
        {
            where:
            {
                id : Number(id)
            }
        });
   }


   export const create = async (usuario) => {
    return await prisma.usuarios.create({data:usuario});
   }
