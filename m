Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DFB27722
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70861C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670349654;
	bh=aJFI6x/ipkaoBbpUTcnuingYcClGip/NLLcQb/81x/4=;
	h=To:Subject:From:Date:From;
	b=Frp2u5gww44H8jPPiRYYRcAofqxQNMsVl0+07/sQxTBqQ5OjcAh9DPb0K6ndWXAG3
	 Mdxo7IqNFu6ZGmTxlmmZfz0akPzz16dEHOpuc/Q4HvzNaK6QAZQ03SOwr6bTM8Oq2s
	 +2+yqlvtyxpLVAZNL7spQ4iGJeb36v0/hom0rzX2STAmq2GCdaUBa6OLZ7e/V2b+Np
	 y5TShUmEajiNMB/rqQUghwadAnzxTw/3AcIlGGiALbuLWqx9yLkxhEoJoJBo9DE7cw
	 zbTSr8Nh26Z6iBXxSuZAPwyhXW+yOGPOqHw8GWgw1Zz2IPXC+ZnIP+GREakqWepiKC
	 yPWID3ZdpoTdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5893CC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167034965435.975.12004896672912002183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d431bb3d9a4cfce4a4b6b533c79ceb0bfb1c841324eaa38970cc5bdec525eb30
Date: Tue, 06 Dec 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670349654
