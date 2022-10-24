Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB97A809
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67BDCC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666608653;
	bh=88zvjjIa0JerAFeliBJ5SBF0ABFLhL5+NsqA6pTiWhE=;
	h=To:Subject:From:Date:From;
	b=YJS0j+ZG7xzzuGFuIZLSL/Y6MtVeMtK4fK3C3gqg+xBpaFLZ4K8RtX9ILvAh9pUqQ
	 wquDLHsAbY78JUz2t5delu1ltM2hUEzYl4Mxu/uOIJdFAZY20SpvwnG0XXySPeNzah
	 s5tyRRaNurh/OuEyoTrB630fqTzID4dJTllTuHAfht1MdP4v1pGnWKX6P9f9msWcbf
	 J/KITDpjjRSvRRkZ+b2yNQfmxNZ0G2V2pmK3MOtGRcpbLto/RVuXDSSA9MorYwiGCM
	 zgdwmK41peoCR04XxmBt1Ij2srQS5wtbuLdWHBF3az9tD3FRe4HOJlbb4GykbeRgfQ
	 sJ3QUzjvvr9Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51785C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660865332.27157.14685989315275509435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d438ae9f37a883e05be34c2fa571afdc17d78a53993b594784991df1368e10e9
Date: Mon, 24 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666608653
