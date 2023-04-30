Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434FC364
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 10:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A72C433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 10:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682851565;
	bh=ZvTRLuwKytkFiCUdoRme7xv7tJ3HKa9Qbz0ZGaQHUuw=;
	h=To:Subject:From:Date:From;
	b=MybNeYer1EYjZGTcjv40HcM8xpc6okPck9p1Ddj6Od0rXIn8zDZ9gmyj1xTRcZ6Nx
	 /r0PbAmRzbF0c3CiNVjo69DBzfN9BMDt2tiJqX49MSIa9zfJRbWGmLUH2WPQkmYVa/
	 vf6skTOlPZvsNVTeSXyM/RCe4KXmY+QvTpS3sqqUi0F9GRsQYMvcoVqzRz4Jyj/IhW
	 Tvlym/YP4cH9iEilWFH0DxSKtCPuT1jYyfBU/0SPhTK/LUVXLqvm+wFCWnRf2eATKs
	 23GZiHhlzWwNUOsl97BuAg9mnq8M5JzT1uePUqot7524xx0i0ZOI7ansW3pih60ifE
	 6hlWrTgn4kRpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25D9C77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 10:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168285156578.31644.10812784554287546500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726405d239fa564475ceb3020078ceeffcfeca474d8018457aacc55ceda372ab
Date: Sun, 30 Apr 2023 10:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682851565
