Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78BF63F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B04EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671252687;
	bh=k0dBShTIbTeP91nUjMzX3T2K4YYLIsFBiI66dxEKfLs=;
	h=To:Subject:From:Date:From;
	b=WOE0e45A9QBq1/b8NvYWXQNdWlFniFt1MFeAtQiknj2UTbkvaPHuDkToU6Q38bByu
	 OiBd0xrTabRUrBvubElNoc3RQkdDo4pVvMaCSpg/1IgmP6MkikfysfaseZYN71Xw4K
	 meP4XlSn0CQpiGb+aR9iyg3WDq1MRfTGNrdbe2mb5BYWqcJWxjMAt+bxyubLvByo47
	 g8ilxaYjlxHI7sRu2MyucE6suTyceT02LYGXnod3fErBGfH9vEzn9Lx9bTh64jVA1Z
	 yYzdyDurh5IgLYHyCFlNydn9ErDwhgiem3bWuqs0/XJzyoCuc3h55eGB6rAZ4RWksK
	 gn3KrMYdklt5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FAB0C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167125268738.32393.16071803132944526166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab365ad5d9cf09b03bbd17cdd34fe23f1405b447d07ccc5ed0adff88ee055bd7
Date: Sat, 17 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671252687
