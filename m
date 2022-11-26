Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086351FD3
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A412CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669481454;
	bh=IHnS/hpZKpFBJeUcAY2P5/P5t7fk7W9AcagwMJYRYyI=;
	h=To:Subject:From:Date:From;
	b=sgg5mJR/kVwOAYvbSPcLJJjVCCUyevgUsip1mbWJgInrebgNxQV8Qpa3yeEAajrbd
	 45TFE7s0r0nUVDiIlPX9WERoF2pUtN/26avdpQQC1HLEpUDaLiLtGxTHwK5M7RJOdp
	 de5lr+avAs6Jd2PXoBf2N0nr5mVIO45BGaE5rsKBOegAOFEwr1wsdy7KFFUyKnZecY
	 UL9FRrec24ZR0/q3QOj+gORndbNS2WPW0QaBMjmZs++nSBQsL8tIk2LI7r8zbR/MK2
	 WBRsxqWkKxDmDktm6rkZA9B0DGJnJEjcMaN75Mauni6KLsUUXFJTm/WtV3Ppamq9Jk
	 p3/P6TDv1F0yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83215C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948145450.15463.9886072112707724734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb8eef2494edaf690941d2f7737366eaebc66d6d693b903a562f5b389636ccc
Date: Sat, 26 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669481454
