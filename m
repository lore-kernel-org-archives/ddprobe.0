Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F02A950
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46F1C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674151287;
	bh=MtBuNbt7X4SI/38ugq8VMzE156DIoeWmFDT7YMcn6jk=;
	h=To:Subject:From:Date:From;
	b=lcY0E3185vzrnI6jrTY5tRdJHTCXFeDGs2A+i86+3qarIhrLq8r7WoiOtDcuKnuz6
	 bf4jD9SUmBwQpvg+V4rNS1YDGDYu/M3s6mlGin0AQXNeUK94+vEFWU5P06BbLabqZ7
	 oiJhlF92KNGVXp5G4eb4L/uhLKi4NYSnE+pSEqr6plAUzDr1DbUywv5FqHlo9K5Sdv
	 zAO7EKrL+MhBOLKaz1f/1hBVip+WWPERIe0prx5eRyRcq9N7SBC5E9PorJYBqb1TiZ
	 WOisXpXTrxAY3y5Taz6AuaVjhD+2oDrvPIJieRRDmmofLL7NQzRPK2MclNjteYvxgr
	 V8GU5CDSyzXrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94879C004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167415128759.7434.2826236923972440315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3eee917824234ac8a6677bc6d2cb3b3925e1a5608a791499238cc8a613ee5d
Date: Thu, 19 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674151287
