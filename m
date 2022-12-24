Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F451362
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCEAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671850287;
	bh=lY9muhrNdDYj5g/xM6cVptJwhKV+x9CsXbLJzddYCBo=;
	h=To:Subject:From:Date:From;
	b=PQieoMCedSSuhf2eKRVs3iqGRAX95OJ7a7FcLC22z9qi8vQojoiG5iVof/ERHf2Bd
	 tB7IUL+FZRF5mPu3o24uEFiZ41xFEhXL5hcjoam8Q8/i27f0oZ4YbnV3LI1H7jjNER
	 R8NLgTewiddz/sGadjRPsQuPbOkdLNs9zrkN5bk1GQsVEyOmw1/sIsECJJw6vqwP3X
	 CwpbHclCyjSCJFalUvOBmKJho+H06Ey436WnP4Kp51YlksvyVjC8ksdiMnnMx1LkeS
	 DXcHkoRFIGjWH8Lv2Bfq9W7S4qof62k/8i++6SJxmuHOeDyuUjYoE4oCEp1VlB6ClT
	 zB1PRbUMzSavg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64443C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185028740.18060.9413209001365187104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2f2939f9313980bd658f77477b9ae1d49cbe1807d3986c6e2016372dcdc0cd
Date: Sat, 24 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671850287
