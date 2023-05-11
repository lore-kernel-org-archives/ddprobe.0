Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC0463F
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 05:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ED1FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 05:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683782646;
	bh=s1Ne3OHCdtyqnMgM2nCIXPFGWjMfVdHmEnZObcCyAfc=;
	h=To:Subject:From:Date:From;
	b=NbrZSKcz97lmLD0rtqtwwruXnrBmpSDU2+iT4MtLMuuKFGdEQhl3JpYJa0divBiV5
	 KW/Ch6JlP00DPe4nEWEN/okkhezN6D6neTfpJoa92cmDrfV4rwS9AbTc8nDhDOUmGE
	 XIMVSF643QIdkhB3YDi90/VZbuJeRuyGuCLABBpvmdBVxxkhXzCPYa6DsE+0gmVUZP
	 tnVZlJPFvfmQDTxUAtKZPz8xR3pcqWkikQXrmw4paXCE79+8WZxFkDLPkjxsSNWxrw
	 6Lsh+cNYIeMoWRNSoc0Is6BDVq49HTZpouWr3TLMjHjjz49RomLBVT0ItGESAsC8AB
	 Bd+FJcbA2aH7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFCAFC7EE22
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 05:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168378264590.2149.13228987817707424682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43db2d84264cbaf8b27cb232c91e71c519f8497b2de9dbdfcf78020d32929fc
Date: Thu, 11 May 2023 05:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683782645
