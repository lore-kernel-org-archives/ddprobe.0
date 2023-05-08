Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF51193
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 00:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7390C433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 00:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683504485;
	bh=4RKuQtU6Bd/dJiWsroZ0rmEVZ8CdM4W8AX43dq57GVw=;
	h=To:Subject:From:Date:From;
	b=m1c/xWe2fA7esq/0ZfMPSqRs92cFtNTncbe9EBnDCT7eiS8DwQLmm399cuG/WVC+m
	 7E9kGtXQjb4Lk4G95s1c1OcD5L1eb3T8wZvDuXfm+uZQFKF1NX2REC35VW7z9QTue1
	 PUEwodhLliPxoFR6vLpPa/obHJXneen+0pgRH2+Q/QSvP6kBDP2cDpYI4Dmi9DcP8S
	 rQHhCgHtuekNsdBOflhumBp53nmkjDaG7cNj7kFdJe4VMswYkhNl0GmVGK3gepS7YI
	 ffo9l6cVHhIsRcJ2o9bl62NBuXRPf3bQOIj0ygdSlFSbJulsQKPM5yPR1EfOg8dGfG
	 XtXVAJXgeCxAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C60A7C77B7D
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 00:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168350448575.6647.8297052622754432099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63aded591847532f0b1739a6e1752d91224306c8094308d35fce5a360d34adb6
Date: Mon, 08 May 2023 00:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683504485
