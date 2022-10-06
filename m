Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF92E36A
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF6EC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665052253;
	bh=stzdl3IykqMMTdDTLrU10jZHh8Fzxv7wU2tQO2A10oA=;
	h=To:Subject:From:Date:From;
	b=lvaEa361AjZOVBpCVAoDG2vv/4cfEzZTEEdqhJ3iGDc5sgVRqguTbC30Oey4ltaZX
	 F9y3XehFVUXflmXQES6K1MlIHYGRNXuVvZfxdSeXdymV/3R3nEtTg9T9Yshy3arsTh
	 lZLxnHhU+VHLC9wgDIXwjU9fz1AX+bzCF07r+x/zw0Qls1u0RjU65FOPKuCWHbi0Lv
	 ducVhpU72D0vnRocJnoqpBye4f3Tb5qRHqN5iDUvA2+sSf+iCg+3tkIKvNTkDMGhgr
	 G7OfCpYISVMRBKg9p5UhtrSjwGe8i9PLk5iLOU8mHlLWIR/6YcgV8klwnnm+OF/gIx
	 pdS6k2W7wNeuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F7BC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166505225333.17149.10394904638437164561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73076f252be3b3217b42ce85be973942fecc682dad8b19d324da9beb49610204
Date: Thu, 06 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665052253
