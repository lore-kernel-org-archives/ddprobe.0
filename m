Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE0928E4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 14:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655388180;
	h=To:Subject:From:Message-Id:Date;
	bh=0SuIiEpsVvXRkUuipwmSXI7/22dFTUl5iGpsNtuAPrQ=;
	b=KGHS0D9SK0sDMDDVnnPzenO8byeN2EjALy3Gf45mec+u0Ef2cWvsvm5YcsQWDrvN
	Do/04oi57juAs6+lXGVZXCtIZDrAVo7D6hGxxs4qUK4MUz25L/t+4J8HT2PRhJ8wIeP
	or/6dT9Ais/wVVs7Jw//0Os62uhmBMtWoF6HifNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655388180;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0SuIiEpsVvXRkUuipwmSXI7/22dFTUl5iGpsNtuAPrQ=;
	b=RxZ7Zs4CCPPfi7Gyp3Qjf4GDh1Ga3BFILIf4UlXBqRH3u4QXYKnuLAJIZ5DZnK2k
	Q9WdjSYPDt3y1ixFYuA+VcJe7SJane9RLLM8n8dj765biWqqya6387L4nXr8whyWLGO
	IavRZ3O/sVnDcYNw7YHmbMrUUeScqGAZ9rCamUvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816cd30b27-db6e8932-c5fb-45f4-b1ac-80b30bbfeb05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdcef7b107b09321dcfa1989f16303d6bdc7f0ec33d170320c927d660054bce4
Date: Thu, 16 Jun 2022 14:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655388179
