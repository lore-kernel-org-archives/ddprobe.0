Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8AF1DAC81
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746907194; cv=none; b=f/8xtkB/ZgjtvILOm5Ksw1a98DvmDqNq2/yHAtT2SbYzU34BzWmN2RW655tiZemMTVIPgJE4kiwljIMsHVg/8zuecwCl46/EMCT6izpbhzvz2tzqGSsa6YKWoQFTWTpFVHIUhImjgJR9GQ1QJF6szYCPo49P9N8KoACMcAGq6Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746907194; c=relaxed/simple;
	bh=ZtODf4LixzAEpf/ZMRhN4kTh1aweN3c6HhIbTkqwAHo=;
	h=To:Subject:From:Message-Id:Date; b=KRyxJjuj8c9Syxr3CdiXTCmNIkoqATLJnGSNr4mx1k9EeRMgO3/6YI/LanJhz2UhSGx2A9Wy1b6vNOQlHkpBXIJfF72L1IwAnISHT1nREtFrfnzHjNtmGkn/2HBvOdtK0m26s36khPal/VsYgN/hrnAh+jaQ+8W6rCv4Rq3Gsgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOCu+nz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOCu+nz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F09C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746907193;
	bh=ZtODf4LixzAEpf/ZMRhN4kTh1aweN3c6HhIbTkqwAHo=;
	h=To:Subject:From:Date:From;
	b=iOCu+nz+0BxUKbdn0x+m8h/ctAL8b2WR32sCj2vrKL72aBADubjFaTGVpdOIdD5Pu
	 RKe96IuU+LYA8rZwG66ON4QWD++IoNzFkdIE5EOPD930ZIgTF723Y37b3dblJ1Msme
	 SlE4bJQD73HT58y8Aed7bfcIkWimau2kJ9xnFFxV2gy3s1euA3BODEc7RB7hl4sBZG
	 GBhiIX+yJMDDtyFgndpjVTH0URstvflznu0Ofi2qTOXE47B2TyxqqiBKn76SV/nodF
	 zSHlKpLP2h6r2lhuUV/hoK2n2wOfrkavaSVV2FAvAUbrPGZfpOSodRKCeaA/9exvN2
	 524a6yi4qQWvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C4DC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690719357.30128.15095017292065401943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705cac8221aef8d0276e527e93bb63045a28d5c89769d1b609df8ffae504af3f
Date: Sat, 10 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746907193
