Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C4017720
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 18:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14A6C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 18:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688150588;
	bh=EK32KnjySYKRRr3jRmVFHP6kuXLJ7M1ENgvTcxseEPQ=;
	h=To:Subject:From:Date:From;
	b=LtkGXr/Y9BsebwqBlI+yBm2k5YGWufT+reppNigL8Ukpte52Z5yB+14z6xRKaDnG/
	 XRjpDp43pjcq1Vq4rEiXv07pD0W6qwvZ9AQT8+cR+bvbmv2P+qaFAzs5SJLBjjsluo
	 K5GlV6tmf5L/deBtx4ifZa7MJZ3ZOYnjNeFNPmHwHI/Xp4A3Pw1O4WEAhyDSgfMEOV
	 wDbWEEgCBKB74n6hvMk8r4lMYiQubu4yfEUbZWhUtzUFE3hA/UREKUTOPczXEsG9wf
	 Q1yqk+7T4UsTc7Uj0XPwWGl1WHJdNqxetdrSzWpmmCz0rL54jH+erRDT++ByQ1UCuD
	 Ymu89ciryZseQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DDCEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 18:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168815058868.11620.6299407035157393265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c099d560e8498f3d8f117044808a01d4396f81b2f862b80a71d815bce79a757
Date: Fri, 30 Jun 2023 18:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688150588
