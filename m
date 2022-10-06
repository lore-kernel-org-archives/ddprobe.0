Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C845F7F
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767C0C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665097853;
	bh=8GVBjPF13xMU+TEnJzXzZ3ax3lYA9w0+M+mT7LhGMbw=;
	h=To:Subject:From:Date:From;
	b=MztMzLtxA8itE3D/p14fint9FVJbRtmJxhS4/+yq4vadWsQTkBQechkuTxLOroCtj
	 J2VrsYL5guhkRiIkZCoDpJiz3bN2pMgDpmKSXcV07HSitngSWEaddR30to6s1U5f6B
	 d3dIqhYNXWSSvqZMOzlcnkj5jhOW2pY+u0EOoAJejzNXaTIBI9c7wE4rp18VpRR3I6
	 RRtwJlW07yX32BCCSekAkBHEnC//A9+kVuzwtXjcU/b19BRvOwezV/pVRjlCSca6TY
	 OJ/w/rA9Q9A4gsqAfRzyR5JVXFLikNPoFSNa5RF6CoZjxgtIlgrEijGjPCK5UFqlvI
	 hmnkrqqpn8yIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5689BC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166509785333.10967.3589485384518132798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f90b39f4d8d881f9f3a049b4173139129682328c958e371edba38c6105d669
Date: Thu, 06 Oct 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665097853
