Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F792F43
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D7A7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671404487;
	bh=/s8PkSciSYiY7RxCC97nFSnvOc621YWaftjjrqqnxH4=;
	h=To:Subject:From:Date:From;
	b=KCZ+QUDDWjPX9nL8nReDg9lvpF+rr6MWpdeavwCdCmnqpTYKFO3Lpg3e2kd66PthA
	 DU+9FBG8JvegxhszvBX+4kie08yNOecCu3YGJMITE12+3FpeQ2iR7AsAWvD/7sHmK8
	 0FlMsQmHZkLA+NAKp7ObvmMOv0tgHwRuOqtT2TkXs90o53lxzsTA6R/MIJ8nVtAQDz
	 Gf908/Y3/WEv7eqSTweLOlA71MDzz6ECp6UrHeauv1wFOr8mGDEeb4ZxqZ6087LTnq
	 irHZ4H3hUZGCtHHqPqbmLCp5uq+mFwpFWTPawBHz4LlZVDYiShiVjBa4BhkAPqEErS
	 U4gkr6mrFNXbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B536C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140448743.10699.850889290430538534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a9e07dc254874e65593426e5a2723e709a90d3ca90e780662e4a194db9bd14
Date: Sun, 18 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671404487
