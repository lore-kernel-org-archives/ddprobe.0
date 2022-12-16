Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71821378
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94CE1C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671181887;
	bh=2YmhN/vUlSkJGzTLrqNYKsRQo6rFwBRelSQmGv1Vt8s=;
	h=To:Subject:From:Date:From;
	b=dVYdH3M0DYes1dIWy/ClaQYvyb+m8IASEXIV5mMa2xyhvyFfMnoYh9VhriF+R7ZzU
	 CjYngOyzbQ6wLuSpn+1B4SR4bKkQ8Zsky21GLWKBkmVtnT+OuUjkn0h0w9fWv6ox+8
	 ghcl6xwVDGTpTCBOLCuMcHknEyEUES6cXDbUSDDQVb26HTVhMIatRIY/GGUhngTIZK
	 hxD1bNryC9dysKMrBIN3f1aA/GlXPwkxirc+tBSpupK8uGJT/Ygorp3rptCbSa29cu
	 PUB/x8pfjz1iyQ2en3//Vrsp6iLNMoRpgfSBUoD2bIFMziFoJzztNCGA61sk+LjQwo
	 6iSa80m8sr7jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7118AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167118188742.949.15974146162049011536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec46bf36b36e5241d8dfacb98d464c10fa3bc357e27e904b55745d18845f670c
Date: Fri, 16 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671181887
