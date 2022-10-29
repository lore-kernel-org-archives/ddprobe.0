Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD3415CAE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BABC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667038254;
	bh=GxQt8k1BbAFxXzM6I5/ToZdBKioYqWgV6eKhi+IK/oA=;
	h=To:Subject:From:Date:From;
	b=gnxqx4FTckQDsRpGjUCCDUvZJr5Q/CDnlXLq44Wz2xKB9O08zAzW1sJktm2/AJ9s/
	 J67EFxeRHuDhI99qLn0qcg/jBPMW5NgcO/h8TcPkwsR5/qT3JEOruDPfYpCXIvnM1i
	 rxwQSNYVghPCIpP+rKHM+UeP9ilnXUIiNtgMvtP/ZSvmXV97Sfkk2NwzsvdBesoD0U
	 RAAdQevaPar4p0Yyz0m1vg9dVp2DpW3AjjsB4MXOHdqvGyq553eebAk/96aTejDQ5k
	 k5lHShcUSRO+FmqB3Mg/xhqW7PmYQix9rk0xwGw28CxBh1jLZ+/aBT/P2xSKwUVYPb
	 rmMQAfC87GRLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5936BC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166703825434.1886.14144513204358199027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85cfaf8e8b5c6d2d36d3c3a2f6a3c48336a24a0469878799c0313f4e54e6fb00
Date: Sat, 29 Oct 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667038254
