Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75337B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73700C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666712453;
	bh=MfoqO/IpUsg8POEv7PLt/PtqPxWw1L/U5XNtnkyNXEc=;
	h=To:Subject:From:Date:From;
	b=qZkGu4kdNgazjlctr1HdeXmhRltWYE4+I6ApPN321H6b7/14ZaqBg2a6eSeA0w01T
	 GC8Q7ICxoc4n5eHPgs1A0xdaPackX3mh+2QXE10SUW3HHeB0dVTCCsZAAYvYqidtHM
	 kKNW+j8uvA60/D/MbayU5BK6FeqslgtC14OKQ2NACb96C69SoaWRVwwKb1FNp41zsy
	 vUuhzCore6wMB/l2rU9cqymnK9hAEu/4REoDPosCICMmnjf+lFGpx9MfzK6STVrCD9
	 j8TavmhZ0XaAvEOfKdoDEu/oELmeD3dVKwYEwTefy9UkEupHFiFYtPfB6sTAXURMrx
	 bOPFZEc2IGHGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59673C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671245335.29602.7556617558618440703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c8b40c82e96e723cf8b80810f378d6554137c19dd9db7f4a4163e1eafb6a1f
Date: Tue, 25 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666712453
