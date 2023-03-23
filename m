Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3638DA950
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF98FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679590145;
	bh=BbFyUnJ5KY39A9CDnAzfAFoqBEhvuWYRhGuMV5na5sg=;
	h=To:Subject:From:Date:From;
	b=CI5ke66faUtsL4sqybh+P4K/NqXVOLNLkejPoVXRHMUAzOJuqjgnMXBUmecJfuJ/y
	 fx30NREOrsK8yJgL9459EUO65xfldotSLWsAY8pEY0lN3+F0Hb0yhkK+ctZNFFl+Rc
	 FMG0Q2VoPykErVQP5Ed2EOr3NH6ubKk7rhG69+qoLaqYznsRsJUQW2fUq0ATvyQ76x
	 Y3J+a+gAA8IRvhl71XGnA6O00lRVonCK2Q69H8DBod1RoawTUA0QoPxslYQ2jlmlyS
	 YRQAIGmX0owYB2HT+KezZok1+Ho7+m8CoA4vNAJ4b6T8e7oUHG5N7VFAz0HfFTyOSk
	 ilrxqMrEWM/XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20F8C6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167959014577.8949.15568229917287841565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed77a986294a810c53ac6edac205cf7c0a8e20ef563dfe1bb7796ac1d754ea53
Date: Thu, 23 Mar 2023 16:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679590145
