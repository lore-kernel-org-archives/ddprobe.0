Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F55A1FAC
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 08:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC48BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 08:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674723185;
	bh=WZcEoBe/E+qvmBSiwpH+8SzHXkRX6EXooDy/OHNZ8cY=;
	h=To:Subject:From:Date:From;
	b=QdxNFcQjZkwplhQZ1iE8JQ9Ej/yHyq15P0QTByT6Go6QM7qc3MzUWcaj7TA1ncDsq
	 1KavyReS40Yzb+YP3ctk7+GfYZUOLbiJeObYuWKMtz2URcwkYZDKWLI5T2zcsPew2k
	 UgstN7SM/HaUY3KQhCCXKQ9YyOzqCkjsryDawNz32P6spGsHYfua2f9ng5Z71uKhg7
	 pymoXu31ttlCTc+0VjIB2MvTm8JgZPDAcx+z6NUmTIs5yyE7zvReouBKv6mYuFzZZJ
	 NBraxVpgA8+U0Mb+WBGjDlCnyo9pl8EY9i6MVSKi45iFtdb+hXpMeJDOmrv3yObxlz
	 gaoYYSZr+bIDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B562FC05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 08:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167472318573.25960.11543224296034082263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418905edce0319a179a8b695c77be5b68fc132135a6f41d366d45583dbd4af86
Date: Thu, 26 Jan 2023 08:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674723185
