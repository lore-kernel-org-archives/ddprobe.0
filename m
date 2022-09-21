Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B29767C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA04C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663797653;
	bh=D1aJqhwgGrv35oKzikiitgRjP2WpF6EX/nhfkKHlRaw=;
	h=To:Subject:From:Date:From;
	b=S0KbzqnWgdTT1//LgFzEeeo7jRxlfrnNF1IlQnw13wja0dEcBCl1jE+bbM2WfdTMu
	 AqwcNg79QKaJWN8aMrGf8akd2AelyFv4EfgBl9ieFx5IZT5XI2nBc81fBMZSVI4yDY
	 APK3p3QtLcufnp1qFFt+zOScCUNRViVcz3PeqCEBEIVfRpE90ptQ9Vtzlba3KWREdT
	 YJhR2KntBRigusHf/kRZjGPbz1epniS/pYtd2bss6/9DCVXds0+quq5+wgduwtvH/s
	 jVovRbcRWH48NxDRywXPhmytjl1FPfpmAOrHr9mycCzXvE92smMO/Y/xa82PJFTc//
	 w684gTVudaCKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51889ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379765332.9224.16507641712208480859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602e380d90f30b12b8f122494d5198553a64282144820c57304415a8bb1e2125
Date: Wed, 21 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663797653
