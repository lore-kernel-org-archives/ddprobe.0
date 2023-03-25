Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4772E389
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 03:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5410C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 03:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679714465;
	bh=m89QlBo6PrM5RvEMR7wPZrMCsp5WwBKKRO8uXPlFugQ=;
	h=To:Subject:From:Date:From;
	b=Ap46RGfUpLn8xccx4LyvhhHf104h+Ej8Jwg3MAc/dO6M/DFpruT65cX4ZjUcVctI6
	 7ZKKcvr5+niyquD1HSlXr5nPSysAuNACfUSBq2K74CLGrLji3pf1Bc2eyr1xDuBBE3
	 gV8A2jeYu+5RxyS0pFr3C8x4Se5/3SZhqCyitua5TPwDypyLgO1ertv09htPtPaXMu
	 Dz2Ov0ZgssUcmqU5aS3a3IaESnSt92isYUufAZgBzKJ5FCb+JTpv6nRew0A9cEUyOs
	 /WUcULcmdWokaDOmeivUrHyQwe1N/a+zVXr/q8fGXxPn920UPUxsbWrHlur9t/NMHm
	 pNFyCMA/Y0APg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB1EC6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 03:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167971446575.7466.109226012819081724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798a240fce84e700b37d2f2ba398b7d432ac3bc82e4c56f40d5894e76ea9d2a7
Date: Sat, 25 Mar 2023 03:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679714465
