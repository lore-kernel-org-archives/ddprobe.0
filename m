Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD3AA48E
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EFC3C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671033687;
	bh=LNOeqzi7t2yWCaTTvSB5uAMDnFmufRNfixRfTT2ybcM=;
	h=To:Subject:From:Date:From;
	b=IRs/E/121LJ9doKAE/Unn7FJ2Hd/E5N0ye5hwCFZQH56nmSyQRlo1aAo7HxD5uf1J
	 kZzmqb+8m4Gj2SGQ2hdGoICtU8HeKQVT4X+NAxG2dSt9OSSIDxllDiQ10O9Lzo1qKQ
	 DCFPNE81xtUq0LhT6VDjK6UrcBDLPBI4d5XtXkLFGJDHiKCzsIpLE1QJXkQG56ZRN9
	 QHSwO9lrRPenNkaZvAToE2vefDC/tpEIt3/hKkcqnEgFfRN7lc5JqPEjulXWslZwk2
	 wKBNpjvu9NOdcB3JEZO+btN1ZVQdSTOi+nuBWwOXL1okgWi/yv6w+VN+kaPYrNdvnh
	 v9n1sZckRAQQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6542EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167103368740.577.12777862022758788849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c62c0b4ac4e348e02dd7c73df977e75dbd467e94386f2626ccc7f1e84a31d6d
Date: Wed, 14 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671033687
