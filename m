Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27DE15AC
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BDE0C433D7
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664680253;
	bh=DIJBUhmq9Ktc6B5VbtqCZHr+vgJYBEhtuhZC6AdJH+Q=;
	h=To:Subject:From:Date:From;
	b=C/H17lfMBtZCYyBNSZQ1snzf5WNuHjkzqsTve0IeT9XFRDXWqSz5EkYd/vy5+Tfrr
	 GqTE0yx9OIQsF8HdSEn8mIOBuldPl7e7g2US40VT6vNOQWGII5PwZjry6tiAiO531b
	 1VYxu2wv8/t7hn340+CMjaSsAozLPKnJoM4Ul/9Vahuv6MmBgTZTC8f57VzV6PeVo7
	 XyS2GO185ywFvwZf4G3d6AmSFbdFofUUWi2a+dVQBQSk4gGegxB2N/0AdDeoCBbEJC
	 WUhCbmrpKh97rkUtauFxCgD3fKK9VB8yjIbaZlyi5fEEwfE2Uos9Aezk992y2V+Bqp
	 3Nm+70od4YFPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547AEC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166468025331.16125.15645476000299385115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1167439245d92129f4bc826d51f5c50e23efbe9223ebbec8819ba7d7f346ed9a
Date: Sun, 02 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664680253
