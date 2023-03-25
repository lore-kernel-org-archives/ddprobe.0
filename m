Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF0A2F2A
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 16:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF3EC43442
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 16:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679760725;
	bh=eds+tgx/OjH5ENGY0Dqh9dQwqepDaqFRRDUhrgZ4zNE=;
	h=To:Subject:From:Date:From;
	b=iIIyyoRrR2sPy2H+mxis6OYrLG8QzTm/Kae4NBUARXdWzFgMzQ9p/DIJPe5Acexfc
	 F65W5o/fz7b/CtB8LYcrC3CjW//z9MdRI/FWHob0cpXwFpp2d80WruDRVasn15FgfJ
	 pjcK701QrLvFlGmR0+y829EYxhJ5F+B2CFXyjplzIW2SMs8cBSx+EAoM2nZX/fZ5I2
	 IcLRfqyF4i8vS/UAWoHK31Po20UUAcSudn4CmhSoLc+HA2fKgX+cAPUyLoWlVipEMS
	 PIaQ2IvNXwOTBo1XCDRfYdRgirQUqNhYr/DG//S3hr7GNVoUc0qTVNvCoGxPK9TjrA
	 YPkIOq+wugQ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0029C76196
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 16:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167976072577.32389.6313564579632826183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9791bca48f4c2ae74697e64cdfb07435e78d7b0ef568b199f9333a4194c67cb3
Date: Sat, 25 Mar 2023 16:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679760725
