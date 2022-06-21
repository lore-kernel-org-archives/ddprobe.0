Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EF03D8B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 17:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655831459;
	h=To:Subject:From:Message-Id:Date;
	bh=GjY5VHoaKAKUEWoUmzss24/wCshE1QwmSuzUj6q5kl4=;
	b=hTqiPEjdmGV7zBdI24jTJVDOcHh+gTmfhcvhwheUwuEOrteFzmw7Q6CMy9TbIE1E
	oVZa1ZH1F1KpoLPCA/4riGf0UUDxRxHtu7/w6fsAwCMwLLnTMSaYjlgtSlejyRASTya
	0LIu++0HUOrNxecExuhHaUMWbX9YvbsYsy8Bz6mc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655831459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GjY5VHoaKAKUEWoUmzss24/wCshE1QwmSuzUj6q5kl4=;
	b=dVGAWmTK2NRrG77VDGMlDDMlKOOJa0I9SMjrJicyN8NzW/wHZZW5lDSw9Am9VzUg
	wmqd+NgRuR4rl9rVLN5pCHbMZsFypQEtYkknV1E3QjcvavlR7taGeFOzygb9JybFTQR
	1EYG/3JOCtizZSNeeRc/Cs0rpM3DoPvbECXInYIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181873ef5ef-d6b5715e-a740-4aa7-ab83-de7349ca069a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c434613b129b5064adc52555a7e074fb675759a4965e0e833e335a5e8b96d38d
Date: Tue, 21 Jun 2022 17:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655831459
