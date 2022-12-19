Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCA51C02
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EDE0C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671458487;
	bh=wxCJMRtyxOhwuQxkDGG9zxcR1lAmV4FAGGgpI9da3z4=;
	h=To:Subject:From:Date:From;
	b=exK3VjM46/hfq2kagSSaBDmohG75fIhXtIrMP9LVjbWOnjbwg8ii0P/XI39L3aCyv
	 1ZMVZXbEW1PPsc9Foc56CpfD7kT4+n1KJX7bqLCwUY+OzGXTUeth78U4XmOJj9diPJ
	 fQsuJCLL3u6oAa4PN1bf6C4s9R8tTWo49VUmf5nySViFs/KPxMQm1M98dV0k76gEJc
	 RG64QGz0ARsA6MdlKCloouKhv49Xc/OCmeN50LSehy+7i/aS6o55tu6C7pD2OiYwOz
	 U0DRl62goJ1+3IfobmDy9eByVPhFuEC3dhA08U9Z3gWq98CW2V7fDyKnRPUg0CU7Kh
	 C+UV5RNRBG5Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C9ADC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167145848743.28914.16345972246069806348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f017a8bcec7c49ac78be1ded6caf9d9ecb27abec6dc888a1a12b59541b4f0424
Date: Mon, 19 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671458487
