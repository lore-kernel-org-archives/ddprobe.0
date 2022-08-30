Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E9C374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91E77C433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661834452;
	bh=dWS38c35cCwEwC/o0jcjaYiVOVkTLVEoHaeyh6X60Bo=;
	h=To:Subject:From:Date:From;
	b=ASUyQhkCFsRaCZ2LntTy8shXrQXd22u2bFRL/BxcPTA8yv1J+jp/VjYBgNvRNIWQ3
	 qQCLhsFSjRXE4UPpcdh2uXRA66nXX/OEwidspUZ6fxXV9gwIfyZk20foHMV1Pr7ZJV
	 Df3xKxIceG31lGxDXwrU5zl91n5M2dCv9qAAcCEm7IlVtrOMrpvRxKoR97PkYXJ8+9
	 ggfv5yO5Ns8MDoJDwcppz6Vc3iPSAJAJK3Anpl9D5zZF/fFXbYPNDu+39L+Z5RdMTT
	 DugFI5aE97t/MeDzbZpn56jUWKKcs4njO0bwGkTX/UOIvDpRPvqhqJOq7+ehlEQFiX
	 VfiLjISsWLNBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8A4ECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183445241.929.12832937215402646683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d778aea50d206eb1dc8572d767facd7951bb70594e5bb67745226a7471892a
Date: Tue, 30 Aug 2022 04:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661834452
