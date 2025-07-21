SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'a848edcd-0568-40df-9e31-affa68d26b07', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"marale7951@gmail.com","user_id":"7355bd89-e286-4141-b20e-83d27f63eff4","user_phone":""}}', '2025-07-19 02:12:28.007687+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd82f02a8-e314-4bd1-ab97-87e0be332bf1', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-19 02:31:46.020042+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2b57844-944f-4184-bcee-edb08255254c', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-19 02:40:22.546994+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0fe93d4-abee-44fb-8fe0-6b99e2679cba', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 02:48:01.470064+00', ''),
	('00000000-0000-0000-0000-000000000000', '20eb580c-fa09-41f5-a3e3-adbbd403ad82', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-19 02:48:10.541313+00', ''),
	('00000000-0000-0000-0000-000000000000', '336db5a5-811a-4534-9084-34790752c653', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 02:49:39.20435+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f6183ca0-2394-4530-8568-c679eb9f9770', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-19 02:49:48.929525+00', ''),
	('00000000-0000-0000-0000-000000000000', 'beb1fdaf-52c6-4460-9593-c14a28279cf9', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 02:52:55.835142+00', ''),
	('00000000-0000-0000-0000-000000000000', '5150ad44-ea67-48a9-b92e-cafabf70bc7a', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-19 02:53:03.446951+00', ''),
	('00000000-0000-0000-0000-000000000000', '8be42200-1d1b-47cb-aee1-dd75891912d1', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:04:02.283581+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae55fbdb-e145-42f2-898b-1f12f2f7ee78', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-19 03:04:20.063101+00', ''),
	('00000000-0000-0000-0000-000000000000', '4739561e-5efa-4e1d-9191-4f359a048f60', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:04:21.921438+00', ''),
	('00000000-0000-0000-0000-000000000000', '99a04246-0b43-4ca1-a8e2-b5fd5c672925', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 03:44:06.741397+00', ''),
	('00000000-0000-0000-0000-000000000000', '00b8389b-1af9-4859-a7a1-2c612403dc37', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 03:44:57.159537+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f9fd426d-60e8-4033-9593-63541289a3e7', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 03:45:12.508894+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2b904e6-567a-419c-996f-7c44440ccae7', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-19 03:45:46.18363+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce8c1c3b-8d6a-4a01-bb77-42029b39d5b1', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:45:48.067846+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d219fd9-92f4-4f29-8901-53317e4a5b3d', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 03:47:07.660696+00', ''),
	('00000000-0000-0000-0000-000000000000', '55c25ce6-03cb-453c-a1ef-fefd98ef34dc', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:47:16.886276+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d98f486-3178-41c3-9aec-659b1dac5849', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 03:47:51.464279+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fd0ebc4b-7bbb-4124-8632-9f5983c3b79d', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:48:04.071657+00', ''),
	('00000000-0000-0000-0000-000000000000', '08e2be6b-0515-4736-a649-893c78063020', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-07-19 03:48:04.353262+00', ''),
	('00000000-0000-0000-0000-000000000000', '438e554a-9bc4-4e81-89a6-49fcd735bf07', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:50:12.616298+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c4a7b33-f735-49d6-b2bc-53910fd45bf7', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 03:50:28.76177+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bf623b6d-1dfa-476b-b1d6-be9051cf59ae', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:50:32.970474+00', ''),
	('00000000-0000-0000-0000-000000000000', '32c43cae-d306-4e3a-bc58-0bea4735c906', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-07-19 03:50:33.225752+00', ''),
	('00000000-0000-0000-0000-000000000000', '51839d93-45c9-4112-91b1-6e9e5be1ac51', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:53:56.811931+00', ''),
	('00000000-0000-0000-0000-000000000000', '7bb421e2-5069-4f15-bff3-1cfd0537c62d', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 03:54:11.628796+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de3751d5-e3ae-4625-9f7b-cd8dc7da09b5', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:54:16.04587+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5665213-f9f7-4faa-afce-7ade9bc1fadc', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-07-19 03:54:16.311486+00', ''),
	('00000000-0000-0000-0000-000000000000', '43003ff5-0a50-43a2-b793-f7cbf27e3bf6', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-19 03:54:43.781476+00', ''),
	('00000000-0000-0000-0000-000000000000', '85030e74-b24d-4bc4-9ae1-b89e92e371c3', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:54:45.44019+00', ''),
	('00000000-0000-0000-0000-000000000000', '5dbc5cf2-d5a7-4ea9-ac75-7f773cbf5d53', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 03:54:51.828209+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a23e05fc-ca11-463a-a22a-a2583dd49252', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:54:55.97246+00', ''),
	('00000000-0000-0000-0000-000000000000', '9dcf7eb5-c8ba-4905-bd03-79aa5c431c12', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-07-19 03:54:56.229983+00', ''),
	('00000000-0000-0000-0000-000000000000', '533c725c-6a16-408f-8a85-95912a203a0d', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:55:19.00435+00', ''),
	('00000000-0000-0000-0000-000000000000', 'badb6079-5143-4306-9e96-b620640b798a', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 03:55:25.577101+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ca8749c-ce49-4e62-bb16-174fba71c66d', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 03:55:30.011353+00', ''),
	('00000000-0000-0000-0000-000000000000', '61e3f9bf-fdf6-43ef-86d2-9393924f8c0d', '{"action":"login","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-07-19 03:55:30.410826+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1fa246b-6eab-4288-b19e-c1cb124faebb', '{"action":"token_refreshed","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-19 05:40:59.304168+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5bf9164-061e-4588-ba38-bcdc09bab0a7', '{"action":"token_revoked","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-19 05:40:59.304624+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c1a2294-3429-4a1c-9b37-90795e7c6264', '{"action":"logout","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-19 06:03:39.28176+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a8b75b78-6627-4f0e-a150-5c0683cb8456', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 06:03:49.958295+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2adf825-9289-4249-a0f3-6109d9f05e3b', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 06:03:58.696676+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f282c2b0-e483-42c7-bbd8-45884aa8d1d2', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 06:05:02.928309+00', ''),
	('00000000-0000-0000-0000-000000000000', '0176e8b5-cdd5-4219-88c7-a1112b54bab1', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 06:05:44.241212+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0bb2c20-af84-4d91-a927-85329505c6e7', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 06:06:22.492132+00', ''),
	('00000000-0000-0000-0000-000000000000', '207cb242-8cb4-40ec-b9be-f0365a4e5318', '{"action":"user_recovery_requested","actor_id":"7355bd89-e286-4141-b20e-83d27f63eff4","actor_username":"marale7951@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-19 06:06:44.548477+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('da265a38-077c-45e3-abf4-ee7b7fa7dded', '7355bd89-e286-4141-b20e-83d27f63eff4', '969a0556-3a33-4efd-ba2b-9af2239e46a5', 's256', 'Z-h-Yv7HDTYzM1z7TqIza-bAmP9zsdrnxurZ6YHEnsI', 'magiclink', '', '', '2025-07-19 03:44:06.73694+00', '2025-07-19 03:44:06.73694+00', 'magiclink', NULL),
	('b2197151-bf18-40d5-a0f9-c98ed96295b1', '7355bd89-e286-4141-b20e-83d27f63eff4', 'e295ed59-4dad-41d7-aeec-eee7a4a7451e', 's256', 'aTTDSCcBstG7DHz6kxF3aOCQi8Zv-IAEN3z2H5XGhdM', 'magiclink', '', '', '2025-07-19 03:44:57.155188+00', '2025-07-19 03:44:57.155188+00', 'magiclink', NULL),
	('6d92e891-d788-459a-8e41-ce07fce95e33', '7355bd89-e286-4141-b20e-83d27f63eff4', '6bb2f8d5-1fb9-432e-99c3-6b7050422c7b', 's256', '-JLaJ-GBzvffEiraqIzcw3k48-6kobRVpI4RAbFlpyI', 'magiclink', '', '', '2025-07-19 03:45:12.504463+00', '2025-07-19 03:45:12.504463+00', 'magiclink', NULL),
	('113c4f4b-30d1-4df5-8477-d2e269cc643d', '7355bd89-e286-4141-b20e-83d27f63eff4', 'c44e087f-cfda-4de7-8fb1-5afcbfc360c1', 's256', 'hB7I0QUdkKMp-NNQk2jxUY316D_CL4HQMqS9ScT0t7k', 'magiclink', '', '', '2025-07-19 03:47:07.65909+00', '2025-07-19 03:47:16.88997+00', 'magiclink', '2025-07-19 03:47:16.889918+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '7355bd89-e286-4141-b20e-83d27f63eff4', 'authenticated', 'authenticated', 'marale7951@gmail.com', '$2a$10$QBQAYQ5jBSm3U1b1w.t1O.Z0g1nWJfhLRhHOX4t7iY0Nc6Aj2ROZO', '2025-07-19 02:12:28.009865+00', NULL, '', NULL, 'b0bc3c121e707f97f95ac91a74e2539dc7233ecdea14e44d37b77a66', '2025-07-19 06:06:44.548263+00', '', '', NULL, '2025-07-19 03:55:30.411194+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-07-19 02:12:28.004517+00', '2025-07-19 06:06:44.54925+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('7355bd89-e286-4141-b20e-83d27f63eff4', '7355bd89-e286-4141-b20e-83d27f63eff4', '{"sub": "7355bd89-e286-4141-b20e-83d27f63eff4", "email": "marale7951@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-07-19 02:12:28.00707+00', '2025-07-19 02:12:28.007097+00', '2025-07-19 02:12:28.007097+00', '1dc02d2e-9fcc-4a1f-9ac9-8f7b42bb0a08');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") VALUES
	('25e2acb8-bb8b-4bf9-a7a0-3f1d948be8df', '7355bd89-e286-4141-b20e-83d27f63eff4', 'recovery_token', 'b0bc3c121e707f97f95ac91a74e2539dc7233ecdea14e44d37b77a66', 'marale7951@gmail.com', '2025-07-19 06:06:44.549992', '2025-07-19 06:06:44.549992');


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2025-07-20 23:49:17.601013+00', 'Alejandro Flores', '7355bd89-e286-4141-b20e-83d27f63eff4');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2025-07-20 23:36:21.434202+00', 'Packt Publishing', 'packt.local'),
	('activenode', '2025-07-20 23:36:47.615901+00', 'activenode Education', 'activenode.learn'),
	('oddmonkey', '2025-07-20 23:37:11.811542+00', 'OddMonkey Inc', 'oddmonkey.inc');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2025-07-21 00:33:42.70958+00', 1, 'packt'),
	(2, '2025-07-21 00:33:53.023201+00', 1, 'oddmonkey');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_namespaces; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_tables; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 14, true);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
