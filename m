Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D131046B3
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B75C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671548487;
	bh=Y6gAC1llgSW3PE7BUmdRPCKszhaC7hzAbiSIFq4OCRQ=;
	h=To:Subject:From:Date:From;
	b=cZQBXM8/7H7LSn20A0CnZYmY+E3rapf2EU2GfA+WW5IM5Nj4dwPA9rbb6StmjaV70
	 Q/ffvk1JiT2DbQp4NWy5jFNXN5LB0EuKHZKYBbpN+G8/MowBWYF4/cTLDYpbR9dfiI
	 K6AXPCTYk2kDotEnAdj0lpSPgi+ADAHML65b2JFgckCzDPWABC9PWyz9Qac+aFMKQ0
	 B0fi93GF1WYmgmdchyUr1s2zth3vTttwC2N8qPZnh4lK+AHpLtNf++wkzQMxkOeHCj
	 v8SpmyNLa9yPh96rsKLmxZODco29ZbjTLVTg0wXohHcNrzlSa+gpzVJkvLMUfpcJC4
	 XEODNgsw/yVTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 707C7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154848745.5682.16722866651934547623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95beb71b52f4dea358a52d670548055615970a308a1be4c8d1571163ffb59c08
Date: Tue, 20 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671548487
