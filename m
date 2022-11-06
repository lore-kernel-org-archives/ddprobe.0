Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA3D1FC4
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CD9C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667712654;
	bh=g8iq5FYkH3PJrQ0Nc84GJZNT+68Zsm1kDUUBP3KGA6A=;
	h=To:Subject:From:Date:From;
	b=uxGE1OHkhCSdhPPdm1lQZyuSccJ14zIQFN13UNDVuSOsUo2YMTJBBtvzgkWWiY3ek
	 Oc0iRoCndPt6Ju5St3eDuL3XNdwxjGn9DXmeIPsyIskHhMzk8iom+uHwzpvNbWbALj
	 3EPCNpvBJ9qJ6ZzMips2bPFQ4/nLcZl4YqdW0YRFrjHqPXDKbRt1IRZEGLRfgc3LE7
	 3c75rSAQE3RBwhHn96+52f0PKlOderEaDWjG11xVSrQ0Ya4mEiO2LH6jBusWjhsrvQ
	 LzDSpxn/+I6Hy/WTM+pLLkOkSzn+Css4u4L4CefK8IPqO2nyhRs2taQO5dFjbTcGeI
	 xKt0XUKXZcFWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E9FC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166771265431.24075.13935602677082309865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47e3cc2da59a539747cfbbf0331d226b5d78e8841a1d08dc853a6c996b0e3e2
Date: Sun, 06 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667712654
