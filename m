Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B25EEBE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97E5C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688885228;
	bh=NR0syCFJZQdPm0WFVs/3nR5i4VvJ/WBPprAGT+0bFzM=;
	h=To:Subject:From:Date:From;
	b=DT+dbGXXtrbmCndtERl3csPz05kjwXiOHfppePELRji/wqevoyf6fi0T8XhSdLAd4
	 CpqqDd4vCmwqZCGhb32JL3k3g2QndCRwZ2q/1U15/NU3Ekppp5QRu++WMWZWQAvt9j
	 akEvtb+2sO4kXgRSCs1kU9anJUvsXosldMWEFfY1udOhBev3C3soNwLlVFfnoGh2Jf
	 N4iJMmHTu02nWCD+Nfrl/LAjerzMAj7gAWhNFMRTVwdEZeRpjH/T+8BxpkZAVM9MfQ
	 ZIJ2d7FzOLfGTxGWfoeNNCnwsnoNN3ZAzLiWg9tbDhykALx96V2d2lZRoDSi+cLAPb
	 NaGzKas45Dykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90C9EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168888522872.25854.2076064868828455198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d40385136542fb4b8b8c1636b7928fc8b56141f0defa9b332f1bb1789cfeb1f
Date: Sun, 09 Jul 2023 06:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688885228
