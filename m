Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781645220
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 18:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49E5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 18:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686594905;
	bh=ULqGX/9HjY403a9SLsME1nQkTw4AVBJfz9VLhQpHqcI=;
	h=To:Subject:From:Date:From;
	b=r94I1P1UejYhk/9t9Gs2pohSu4BNns+mMsogZ7k02ON62KOJFRxfQxbzBR5d80Ten
	 ukWwCKzpOGwAao1h+XnlpVXTLlC2/FGZyM8rZqDMyXypjY8LVL+eF8Zvwhh6yLn1LN
	 BuwRIzJtjQKZuapAA0vAZMC45634WAmyTdeb7+PKvrgBIO/cKvalkMcr+YCmUWIpok
	 sIQbKQSqygJNk+z3BhguTxBwrO3DjItfQl70uBTQuCNMz3u1bD0EJR73mj4zsZcv5G
	 bY2orwhbVCNpQPQoHBNLs0CeQAXM7SGxyxxHRcDmU8DAaBGFbPjiQBWgip0kzpv+sX
	 A323kD+Jf3zug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C701CC88CB2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 18:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168659490579.31113.13394186001946157014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed693491f404491c661537cbcdaffc3edcb9a14ad1ba61c3a73452c70eeaba89
Date: Mon, 12 Jun 2023 18:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686594905
