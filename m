Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467887C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 01:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA5B2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 01:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682300526;
	bh=1c0fNhHEOVbk61HKLFLf1OUicxpXIaVU0vOVFhU8dSw=;
	h=To:Subject:From:Date:From;
	b=edm1psB4BqQsb99g4IBrfAZLXB6vhJSgUYez6EI6sAgOCnyusBhUH96DK1W6SYoIS
	 x7d0bn2WOgUBJF/bL1BS42wjIwUi4NEP5gksutDBUjNuiYMw0CTQ84gsiC0LWx3mIi
	 lbwotXOUCNy9Dc3i3hjMk2bPj/hQ5dhMNCzBV+dtfT1aI5MzOmmcB/lJGG5SZFLaNN
	 /YtmHDG5cYAZSTyG10Ao7nHjgqZ0wKKoy2DH/ChflmqvTGJOFgAPPEsEwOpxL6n2qH
	 HB+0V2DUFE68HBOiBUG5LXebuhy3c2+gcyLeEmQUfy4k1NNoDiCeRFnqIKKQycrSSN
	 zVQMToY4b4Fdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CACAEC6FD18
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 01:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168230052578.7455.2406441204274349946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4df4ca257a961c2399652365c42eef451f2315c6e0211c71c1a6300d33b2fc2
Date: Mon, 24 Apr 2023 01:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682300525
