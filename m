Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D161AFFB
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 23:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F7CEC433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 23:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680910266;
	bh=5PfOJ1y/DNXftpgtlTqjI5zVw6YLZE7rcXt9QWtwJ9Q=;
	h=To:Subject:From:Date:From;
	b=t/si3nAaqGOmpPo+62iFhnvRXsoIUdeLpmdXqdLu6KKlXw/lwcZcTd6YZIp1zPlbv
	 xlBECBO9SHCPY3AEnulwCD3VGwzMfeEV2TFAxlXMe4hOZ1DmGGzyPFpgtT19rb1tVW
	 6EayV7X+esKOnBI2Q1wYyM14jwQEfcQGIyZkKTxOZG5ck7Gy+HCpuHxYRSJ4TkWx67
	 mAGVTnixu0FJyEp0JgZkWshEDwLuGQVixOFngovcP0M2DK7HaJLyWyHQWLvPpVQcxO
	 ppWZSb2Kas4fs7HMo16c6dUdWNJhs1IBsDZ7zkJLk5FYFqIEBXb/v8lPrJ4ff9rc1d
	 25r2in1AhEemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9195C76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 23:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168091026594.1724.10084279260027517131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238fe50b2f16052f9f75f209378a8e84cf26122201bbbc982b809145cb7f4543
Date: Fri, 07 Apr 2023 23:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680910265
