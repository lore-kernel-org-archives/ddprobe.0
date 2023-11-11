Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9A91DA49
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhNLbZt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C39BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699745296;
	bh=RAb2m9umNBvahGezVrGDpjfKswFEioW51z6iN26rvho=;
	h=To:Subject:From:Date:From;
	b=qhNLbZt/G1cvsO7iw7oWiKg9/VmPW3ZUzK+pGH/HLtgh9F/5BlbtOx+AMBAI3iwqC
	 d8lfGR+09HN/t4GAJRIfhn7A1p9OFG9G6HuBtZqrcsHroXd++H3XEiuWQacgjsXR0w
	 JQJWeY+hU5VarGDqixzy263LvVAcvEgPJA3/VMjkJ/SrY9+cfk4aEV/b3BcpzlmrtR
	 reTsRnETglmniliITVQpmMChhhO8X4VJZPgX6p8yp6p8X/X/RYD8TijpE55n2FsI58
	 U0KVDkMnwgFtg5KxE6tE2SWRvxDuRUDSdPMnRnL6TZC/i4RP2536s4Vss7dpPDNNjA
	 vqLHSDHfvMCbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6964BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169974529638.7412.4957402994466694510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1754f5c854df8b805b2a95735e78a0c0c67e7330af34d05fdada9954ef1c561
Date: Sat, 11 Nov 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699745296
