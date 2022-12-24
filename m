Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC4917E8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90C98C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671851487;
	bh=/QrxtKfm7GtxPZSLfnmgEjKIf5PFaJ1P/7aSdL/xprc=;
	h=To:Subject:From:Date:From;
	b=HHlAUgXUxl41Z5B6GwDhv21+hd+ETO3ZPWHKVDdH1mKwqrOWsCck94hp8Ur4fztmg
	 3A0/EOefVQui/3Jb6adkq5NQUsVk4MvltbxewI6ykBC9zqM2tDW7fPHSMoZ60VzLUg
	 aO0ZCkyt3ucA/cCAeCfkd4yyPOIg24REYEs0f/ojkmKtTTKxNr7XbjBGxobOjUTo/F
	 tE+NijwUEHksNdLGJXq54GqM6RDWVR6xgm4qbsnfz8+lGsuEkkQRIPfkNVOqjjuhUp
	 VA7nBRHzxXCQm/ySGjHhCeDYsjnWvJNfF2dHls7ynfas6S0I4wE4kK0otVTe0XGS87
	 N64xPtGsnSctg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE1DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185148743.15734.1598895060462347976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac814fb372d6dd6dd3a5c0ac90466d2e77f8df80eb92140a0338e01fd66ef670
Date: Sat, 24 Dec 2022 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671851487
