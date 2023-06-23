Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777FA7F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED755C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687479789;
	bh=pmYQZIcoxuG+eEFRCBowTdid4vOtdb1KsKfqhD/5BiY=;
	h=To:Subject:From:Date:From;
	b=VKz6plHRHGyGjytfVh3IWnPhnc4olEc0u6Cds2APXU2DFbBi77ux0OJ95Q50QKLLd
	 9j890nJni96KnyxUftTqAphqjWxdbQy4FgiLh3eXC1jBx9Pvd5AU45LRQwzYByDw63
	 5MzdYMBHf6ak/Qlc4jESIPphAif88BY+3XyEUTNQFwoWoZkUm4trL4CErafxOc+qoV
	 b8CNgo4JPPLQt60zbzSM6iZA9QfNPo0Eg9P7FdceHGFyDTpU84zylPp3z85OkeTp/X
	 85mLr/BCBW+WR6mRE4AGBFi3jbEOoD5nBukDr/lFKQy5QE+z9BAcw4yaBbm7K9jzGL
	 Yqj3n68CMU3Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA890EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168747978879.29225.12615463013363293958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece5459f762b7b0b6aea3362f576e0eb288e818c116b7d211a090d8eb68482ea
Date: Fri, 23 Jun 2023 00:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687479788
