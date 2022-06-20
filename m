Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D957B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 01:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655689739;
	h=To:Subject:From:Message-Id:Date;
	bh=o/AywRzobN1SiowZM75YMUO9Nfg5CpSpMdk+IS8WWoE=;
	b=NS0ovMbDNikmKdt1wdJipzD76NMOFZSLToiE6KYVwCxjljGn+owmuLVnI3Fyk5HU
	uZwOgbAK+yTH3c7B/SxBM1boGc0HIvMdZCdZkRZIYsG3kknVSjV0mk0otqK432EhW8Q
	YP56AFEBorVXGBY2/YkNPrcG1Xetvn9QqcDyEZ6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655689739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o/AywRzobN1SiowZM75YMUO9Nfg5CpSpMdk+IS8WWoE=;
	b=Hz76xb0kOmTNQOy48+HcdXSKuJ74yBWyMeqzf6+GIJaNEsKqc/Okws4EHn8tCymx
	1qXmma/7vUwlpbJ/JzepFIbNAwYgBobk3ewuGJ83Kctm9Q1a5XoVIzbNsmCQA3C33HE
	HGaTH8xs1Rya1rKdcIFOqmLYApiP+CL1uqSUekAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ecc7bed-5fd4d6ad-22c4-4c33-9c1f-2697549c0162-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 587e587420c7f49eafde8f691b6e36f4af69cdebe9b03e4a12baa9bb42b0a387
Date: Mon, 20 Jun 2022 01:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655689739
