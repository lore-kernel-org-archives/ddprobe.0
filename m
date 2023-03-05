Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403CA7E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 16:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE937C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 16:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678033025;
	bh=PS7C6EpgjXUljHlli9qWAUcxqv/Ycv5oOd6lYeRlRms=;
	h=To:Subject:From:Date:From;
	b=gQjevlVQELwNLuBSYGMftgRlGa2Pf4r3gqTIXP+PBjZfwWwows9PXU7/mdjqI8F1s
	 KwrVkqY1SekaDW4UW2uC6VZhZaIbnWjrCHhwtwEc/n5dGQ+Ru+tmAl8ajqmsEQCYHM
	 GXvjUro8h43jL76C5C8X4+r8PP5tUq33zransAa4+7SVk3sxUfleoOhAncJ3kk3chY
	 ugEPYzX/t1xsGuSzD7AmIe1UnyIiWgfmyjJTTa76lqygCZYbJ72SI1QL6UrptfU4Fx
	 dzEp+SLbGWrJKe5lma2fpKKMG3v0N8dDAwrG+ZPCVX2//BcGRSMb34Xwqks+runiAK
	 N3yALrcU7/vUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91BCC61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 16:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167803302573.10993.14570983070486742191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c976fd41bc327858a458d3d013400ff5170e9f60e9116cd0c79e10ca023bd379
Date: Sun, 05 Mar 2023 16:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678033025
