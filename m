Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25AF7E3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 922BDC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672966287;
	bh=QyxfcSH3B6sZvGMVgOJ94DCAtuLd2Dg0qrscNFgSMGA=;
	h=To:Subject:From:Date:From;
	b=BXlxdXsBuWzYMBBixxpzXGHjRf5NtHC1k22M5wismFX8T6J3jG458WxoZqmr0AGCF
	 oheOWG534DlFd7QYIl0/tJdFtA3wPlwNHBFLPn4gX61zHnYYJjNaCqLL0Yl0ohMpLA
	 UATMhoDPyFMsQ3LCYpfdfZ+d9F7ohQOHA0K2u7X7aJ6EFxbcvZeLqbEtwl8siSqgLc
	 p7R9N/r8KmH+hn8thMsoo7ToKTuS/4wkSMfka+7tmdQNLMhrU1GvjGZuh5FUg2uSbx
	 0hJzGwebM3gMjOUvhN+dWFPTirfbCmWMSWp3+FALL2Q/VFcZgllNZ5oq92P6BeCcKE
	 v7ipkRB5cWldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 780D6C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296628747.15889.15116785701205678921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895e4ec0bdac8b543d36984dd39151d5df4dcb0fda65b3dcd2596394a4eea1cf
Date: Fri, 06 Jan 2023 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672966287
