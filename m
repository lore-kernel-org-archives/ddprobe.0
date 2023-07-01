Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D0AAD45
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 13:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38CCC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 13:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688217248;
	bh=RQx29Cqq/Xnrbup7bTY1eW//nvAwXLJJ76ulUQGpBao=;
	h=To:Subject:From:Date:From;
	b=YeVsPbHMufXa87a4HskMxl1sE0+pC7YGHwWp/hNskF2F4SBgQmvIooEnnOJEWfRUb
	 F5Tc0CwSEA7JgMXZdLlRR7iL9kacwnw79HsBwFU52ACBaf0vj2/2p2mAe1ucP+Bbvw
	 5ayYlhO9UvJO9dwOYFga6imzutSGaWQ/RRDHP4/fQSjhIs/Lrd35KhAmJsFH1w37Nv
	 bbmBy06JPFYou4Sz2mOb94nDHnsiFJIvBADm6NHOT3ybVAW6Y/Nbw2e0++1EUFEKqj
	 CbjkzWw6PTCkMdl2BV9k1PKBwwjBawlJg3o18kVUjm1XHzEU2DfdA7nQ7ks+PcRd+f
	 90Fh6q/VzzVTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9CEEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 13:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168821724867.9277.10237315412141845066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6880212eeba656b4aa24bbd76db1e45d481a7954812d640a962244d9ff670e41
Date: Sat, 01 Jul 2023 13:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688217248
