Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92F8111E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 22:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFDEC433D6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 22:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661380252;
	bh=ya4+/z+CDh0azgKYod/YCIqhlefoDPzKKJaXvbj+yis=;
	h=To:Subject:From:Date:From;
	b=po+PNd+jOpdAzgCUdpxjgR8hSNmTYl2oHOytVO75zE82oZzV5BB6nNVN1aWzkAURl
	 H1hp0lxTfdpDFrKyoozfjGp/rLEUE0Nj3BqdjjtyxAk4w/U+3MXseop3de5y3IrZBj
	 2ItzmFOUcWjq7yxpF+oS6xPAr1Ejh/R2DZ81cRS0+Bh+dXJRe6ZNv4Iq3BkGw9hgj1
	 Qj/5lDlpXIHfc5MvRx3je7NTnMq1yleGi7GkbQRwhTw/v0B+Lkd+hLu7ddphLpIsCD
	 PoTMNQURR3lqHVofALVv+mPVNRJf7EMH1rUtAk/ISqly/lUgbU1tnIOad5WxEuk0An
	 UiA57fzKTW1pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6316FC04AA5
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 22:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166138025239.4976.8243163046099917634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26870e0a11ffc1b74ffd8d3eb1a95de0e939c8e8c9bc7558b0b27197f1c9b3aa
Date: Wed, 24 Aug 2022 22:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661380252
