Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01237473
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E973C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663624853;
	bh=foNiBlxCs8hgEW50t+V/NK2HUk4O83xNhxPMC5ti/NA=;
	h=To:Subject:From:Date:From;
	b=gH8Qv9HNFO8KTnBwkpdwx3wMCPoCzAn2ueo84LLm3O/cRHGSw1k4ar+UH6d02DE7B
	 gwDRLIql25JtrTe7HkDA3gVEcZMmiYQ8M3TMS7Iom1JuoUCQn5G65jpjfdI1Rj/pDF
	 ENU7NlrdeupBDXbRM3L+bfcjZQCAksLkYhTFlTPivNQJN/WxItQWZrxady0IfPVdAx
	 kzVh8v7z4kYEb0gCMFD/hqqddoX5/4zzn+LPk9IJjw+vqyaK/aIfjS4ZzPYapRR7b8
	 MiDj743Aph8zxTH4ToFcO3dA4SBjmVFiwQGP+Vfbh61wdtfCObpMH8SDsSGqHfPnn3
	 HOU9CuJuEBr8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C6BECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362485333.19238.4303864487023012499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a85fb0dfa837f1f98f80f969be55378fc083252590657300153c6e64a79ac53
Date: Mon, 19 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663624853
