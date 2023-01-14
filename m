Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD34804
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE6FC433F1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673673687;
	bh=x5mNP0LzP7+OAIJDTRSt+a41NcmQ4lfO/SrCJFdN5ho=;
	h=To:Subject:From:Date:From;
	b=pj3QSvgPDOEBUoBSQU7epZQ34pmpZnp4a4rpzByFKnr10Ix3KAIF4KPAohhnb7fG4
	 MlVVIfA8K3/84JZZuYOyoeNTD+SIa+7uSNQwYRNeBTuA0es7Gw3+Jx9Hr96u0WNUuh
	 1kBNZeBxbeLAPtplJuIl9OLAqDiIGOT0tO4vrlJkUwcpWAB54e0eP8PpqhhaNftNn2
	 ICKZxE2Vq1Gnvi9VI4rgZ5stCDy9YxGYwPcePdHGhwKjfsGIrKnnxAsZc1T3OuarM+
	 jamlrUC2b+SKjw2QagouoUzXrM1Etdyi+6F45GYZJ5+1Gpo+w5nYlQM4JK7ZhbE0qr
	 zI8ajhm4WzByQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685EFC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367368740.21214.14516006866653640017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74393ffbe4f0ab1371483b5f3546e2b38a5cf1e251820f6cf16b9472e1cd7cb5
Date: Sat, 14 Jan 2023 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673673687
