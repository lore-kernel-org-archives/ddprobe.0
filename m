Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4414ED310
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 23:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B35C433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 23:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681948505;
	bh=sPYaJRBRGxKRXVvoeGB9vpQbd0WrLZ/Zk1ceJgrRKUU=;
	h=To:Subject:From:Date:From;
	b=ltlA3VCwP8Hez9tTv2ciV/jpGJDI5rydPEaWkxKEfOlfzFiDTdgmdnsCqL3s2Ub1s
	 JJ6NOcHzNTZaZ5EZoreLo3FNGK1W8XexwpOC45FWI9eJmLdwPIpa87YdL9UaQudYht
	 YS7BMGCSCtmQ95CZnxTo1Ao8Xelfcsm+tdV/JsHAWCMWkkDNl8xtAuFQoeuDJfES75
	 OAhvH/zjbaMGrUjhoMrTqEE8iaNNNWbAZ8iBkIJ9Ln2tM8jttQuX5NKdEI6OVg5mOf
	 sDXpuwI6dVz6nZn0V5BdkM/6gz8ogL/XHHtmwYpvTw0o4+rMEfNZVvnwKj74ry8PIJ
	 F8FBOyyaGCP1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE603C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 23:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168194850577.9860.15947181505618941108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa5d0dbcc4c37f55c6167447ff405d10c3a3e1f392d6ef632c2d0804a6a23f8
Date: Wed, 19 Apr 2023 23:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681948505
