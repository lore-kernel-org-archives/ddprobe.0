Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF46053BA
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFlcLSIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A3C7C433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699526896;
	bh=5nNDYmxypJ3aecSIW0aNtldGkiuJr+GAPc5rIwclpl4=;
	h=To:Subject:From:Date:From;
	b=BFlcLSISdhmPh21i7x3Jo1mozFkik54L/2+I1AjS6wgbCAAGIpQwVHH3Qal190EcW
	 0ZyFVAsrzFVHSvtE1M6jrPYpOUQu8rKhcWZ3nELVw25kNfvcf+r0FRq3jls8haXqDL
	 Tsk23j3K3PWyGqpi8k352C/RgeTwgMvlLXRwYhZYHXr+x6PaV5dsmAfxvLIoCWan9Q
	 IDKX9EwnzVFk9+r67iypyC4g8k0gDEMgaqOJWByEd0pG3UmuUsbJtSYe1pp8aZ6bOX
	 Gv+WWoo88fhU8dbBClkd3Ydn0iqcos4f89QqSEvc4nPHtuG7j3z/YEWTXg8CMky39C
	 QdxuWToJrdfag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BCAFC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169952689642.7945.14345601340960911569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2047fb5c4850a8b5bbf3ea52db1ae7372a66c4eaaeb92e397169962eb46c0045
Date: Thu, 09 Nov 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699526896
