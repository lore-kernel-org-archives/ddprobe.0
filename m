Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170BD4C64
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657817212;
	h=To:Subject:From:Message-Id:Date;
	bh=kGXjIXN/U2HtFmGVRo+wjDBkdg+7tQnW/Fv0N8T1FAI=;
	b=NhFWpaEv3yxDUN8XIr8oLhGxUNY6z1dtpqkZsGKKxG1t5hQcAG1hCielP7ftU4zU
	TZ6uR73A7xtkWdCtHctanFrFrva1aalPsbXlrIcK0cxi46NKADw+K6lMrg3LViOMmAK
	UP1hXIF/iSlad4w823eVJt94mOZ+pcR0dUp7fnG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657817212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kGXjIXN/U2HtFmGVRo+wjDBkdg+7tQnW/Fv0N8T1FAI=;
	b=O3tTplyVxMaq4uxlJFtl6LOQArTx7thp3YW/KKq35gxO7yzTL3b8tSxpSWLEsZ0j
	xtOJV60T2ZrC1CkzqG8eCXTLuW4U0XdELJmDDTGK+V4iZQ8O0SH2H4MKPV4R8zYBiEH
	XPCgOwa+qB9T2aM0AjkshyRUZdGa7XOtdc9IBOwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd9b25c9-5e74b600-84fd-45b8-88b9-52ea6d298743-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cde84690cc3952e71d443a96037b74f3150e78edbb40ce42f9569da9c68f067
Date: Thu, 14 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657817212
