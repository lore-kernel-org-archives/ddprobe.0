Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276507E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658568412;
	h=To:Subject:From:Message-Id:Date;
	bh=A/xHYi0L7CqPEtUHjmPSZhYD102Klk+YbrRvZQMg8Uc=;
	b=BoVb7RgOETRYmQMZ3KfcGRrXiuVS5lZOLVjxUQkzzM9UiY7RvvZ24VbNekw4+cXI
	xe9BjFzA4AwfgJumnRxhrpXoiwxKz70wEYSD66MTdbPO3O3okLefoxp66FMvaDsN1eT
	7Qx4DepULlvLYecn0xC/8n/H0yVFUbmwDxpxUGk8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658568412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A/xHYi0L7CqPEtUHjmPSZhYD102Klk+YbrRvZQMg8Uc=;
	b=AWczNopCHu91mf1UBiT/Brmq7pu3z8/QVhZmDDw7XVROJROIrNJ/aVLA+538CMX6
	M0Zo+sTpN1xoMv/dF3307FWtofr4ftzewRdIqi33qxyCLMSpKo63ti3HmCc20XeP94i
	+b+DrUwKLu88zkkYQ6TjJtiKppNYh4PrkGf/A9Jo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a618ca5-b405cf8d-2d2b-4f64-9168-94a37fca56d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f83c6480845e08d31eb08bb97353db2066a9a6a41d1a7eba9bdbfc23fe49b4ed
Date: Sat, 23 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658568412
