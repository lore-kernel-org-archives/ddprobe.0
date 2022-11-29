Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BC0639
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F88C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669702854;
	bh=CEgz90y/D3C7fvwRvIUmQlgDF82d2LvLvLQtzafiJfo=;
	h=To:Subject:From:Date:From;
	b=D2uwyRI1aqCunYqSuRsn/rjLi9XNAAtjvDTrd7rp3WeLBo3tTlM+iroHPqTX/z/dr
	 Ah03fPp8KPWm0QhR5pZDT4KJq40qicjMciOwo4IEeM3j5gaI0hJgkW+h15MlJjaXp5
	 c1xU2QyG+kiJRUZbHLLuHxTA9mMTrJjMc8pw/dyjbclFS+pFOf0xUuJrpSdktuzMKP
	 GPyLuUQhX8cKqEOodgCpXfq2JnaYaxlrh+DbrJvDrOBH1jhIyGu7pOJrKJaVS5a9g2
	 SxKpzidhitEGE4cpUoo2atc/30zNNsSKFSwZyghq23u4AfoSq11uQhylY712p0v1Lh
	 WeQZRZ4T483XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579ECC433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166970285435.31598.15388625969583380324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ee11f77b0a91bad5bc34bcfd4ffd90d54cf83bba4d778dc4abcbacbb3bd061
Date: Tue, 29 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669702854
