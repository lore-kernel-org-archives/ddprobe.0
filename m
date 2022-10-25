Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E4A7E6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4056C433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666672853;
	bh=HE/wnl4yyIYdI0PEvt/JZhSoVZzfhZamypkFbhDtGdE=;
	h=To:Subject:From:Date:From;
	b=g4dzBbZSacGFvuQlrQTMdvT/7NvJb/7arSuAsyiRoVPr7QuowsHwVCbBLHQ2vWdp0
	 b81BQyUJpEEePkoKSIPDewk50mwOAZ2Hc6B+bfIPJ4R9zkGS2if7Zhq5AJaRN6E07c
	 N868dxMcQrOptbA3kGcd4Qy3Zby7o5r/0aYINasgE+/x7/JFZGlr5VVcVkD4JPH3xp
	 8wpG5eBNO5XoJ2GnkxLqY+d7kfVgY7Y4igp+uXaGdeHLUphmxpXmesm5IKLAtD216U
	 GbhvnR1Yful/DvA7Mk8i1hN0+Lq0O9zKh0oqEZtfP27NcTXNAhi+JHFwsJ4TQoWVEB
	 CUuL+eLm8ii3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F0C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166667285358.32180.8002240405056093308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b78d31d0fb3278da23acef21767da36c22ff23ebb49dee0076375d55bcdad1
Date: Tue, 25 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666672853
