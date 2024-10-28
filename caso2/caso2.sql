SELECT v.name AS view_name
FROM role r
JOIN role_module rm ON r.id = rm.role_id
JOIN module m ON rm.module_id = m.id
JOIN module_view mv ON m.id = mv.module_id
JOIN view v ON mv.view_id = v.id
WHERE r.name = "Admin";