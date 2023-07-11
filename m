Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5412A168CE
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 06:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8205C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 06:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689058628;
	bh=m+7vy22Hm2XsPnxFbjun+KOwkhH1liQ5R5H+TExvlwI=;
	h=To:Subject:From:Date:From;
	b=qCeylGhV64ukEW5nQJPdlwSeavcpii5n628Pt8WQabHYscQgzychaGvnMzc4ms/IO
	 wlUMV6679xLIIIHrFRiZoGeDuRCDhhGxt5Sib/stLTokO+C4eBz+DHA1LbQtseTUOt
	 zsTxIuyFBfzwc4V7SSkaGVABdTlRe68VegF1sxSUCn2Pvsg+xa6NW+5NKqMeUxoP/c
	 p98VpnlpK1aRcvyl41gP//yV05spYThrGVuvjdR1lkJvrjGz6LTDaw50i382Z8twv2
	 RsniEhkHyyS4cbFOZfRV1a1XMCN4hHRulmXwbqgkcrxSaDOvvNgO1u9gfr//5a/s2+
	 Ws/zJJ5fakkAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A4AEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 06:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168905862871.10150.2379549538392572599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9074367a2651a3e0414193e707d2c49deffdc0726071376233b35f4b7040a787
Date: Tue, 11 Jul 2023 06:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689058628
