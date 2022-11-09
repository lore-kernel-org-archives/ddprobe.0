Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1892101
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D9DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668025254;
	bh=xlXu5xbMkJP86S/9Jt66ZjcsVBYRAwov0e7aGng2l20=;
	h=To:Subject:From:Date:From;
	b=a4LpsOVwmgu7oQJTksjYNmhLLEcbzhyudUZYkVs4TqXMfyuSz+jKv85FlPoyEQEIr
	 dQQncy4ELxXAx6Cdb+I/hGv+SAld9lEgQTlySGvzcDdemOVCSd4DUcTgGiKUtoGf+G
	 j6Vos1Pm0gTkSizNfnCuoz7mVRk5nYNfREB3xqyQKAZwnhsRnTVBb8m96pBaITD4Yb
	 3NZlb20Vq6mpxx5/mB1HyZ7PU6lbL68YFzExBoreQg8QcadzC0uWUMmO6rPFPLBXFB
	 NJbgiJYwTGzgBpso+lCWuXIoW4ApSWy8A80tUxtqdTFLbVAlPD7H9jIHawxr+OziKh
	 9yj3zBEqU4ZRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564ACC4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166802525434.20991.17676652287975630787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1402937c0cead657829a33ef661d108f812435d705acfeaa9de78d027ec6a214
Date: Wed, 09 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668025254
