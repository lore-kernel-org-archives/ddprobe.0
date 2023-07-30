Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF51369
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 11:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A35C433C9
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 11:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690714928;
	bh=Lcc0PXB+tC8Otiei+SeekFtVHTCjl9tttYan0jHrtIE=;
	h=To:Subject:From:Date:From;
	b=q6rI+bWj+Kclb4ITiNYzPnygUHA5p0CTkRjteitq//JT1Xdn9Vht+9Qz5Z4+nIlT4
	 4AQP6lhpDW42cIEJYDeQbocKAfpNNmCCJKNRs8WSK3a4Zl3LHHgmBnH3sDwamf1uSj
	 U9QH9TmYu8WqyF2/rF/HhPqMZsxEFO7/3X10SH9CSV+/y9sjkER/42K5FKO/ds4BfX
	 KFPrFqBUsgKD86uDBNRUyDLxTvJa3tGkMVOLPCHT4MiMWxNDleiMh9rFCdclDl4vV4
	 gag5u/zw8t2m6/Bw8HLlE0ziNW4/AR92XnNqtrlmALR2I5zoN9cOrwhS2FsRm27LyG
	 RAYb/NxHI5loA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A620FC001DE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 11:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169071492866.13249.17278838084617114239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b858ec8ecb5e6f1b086ba2005e66be5a07fb0ac2c2d162714b782aa514d3eb64
Date: Sun, 30 Jul 2023 11:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690714928
