Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1397498
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 07:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEB0C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 07:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686297305;
	bh=K8io+Qj6vsTtvwAyzl2ZFpM9OONkUqWvXwAYH5bIpV0=;
	h=To:Subject:From:Date:From;
	b=gI++nXxbeVrsdBlIXxKxT6N917Q/0n2/doTx/X0n7eCyTZJaIXkszlWy0Y3gIj5Wu
	 YROAIOvDDgXtLs6RGNHVLS4LHeLPf1NWrNyos5xcAenGDgRZhn+cyu2zJhC2ZqixlT
	 YStr6fKUzFgu+KsQ2PrgSWRxKFCTINI1qBO0BIUMmzH2OhjMxQCxH+r7WuSFxRegha
	 kPO1q2v3xFGU6wEaz5zjO+S3MUaIyGKOPZtTWSF2ayevBSRnCXC8d08CNhebxmL/J0
	 wgLjECS0533sMnge2RgjH4RO4uQKrEtxJBxm3fapKlYQWfD9WoFXiSz5wPyb4lbHF4
	 OFN0d/ME6yADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D0DC7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 07:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168629730578.18349.3263511777712805864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3ea8ddc383ef191afad5f64a22ea96af4c3dbf4a6ccb77ddeb9ca09c8e4b9c
Date: Fri, 09 Jun 2023 07:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686297305
