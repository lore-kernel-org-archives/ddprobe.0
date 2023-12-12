Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0952F64CC9
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJ9ucWHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E4BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702418896;
	bh=bPOaf2lCMD97+k6L2j4Yj70VX85iyqamASkySOZpSlA=;
	h=To:Subject:From:Date:From;
	b=pJ9ucWHVuXaLTp3+tBCD9jo7WtXCE1u6TbFYfJZjLpzuNuYoLWaZ0MsDWt0ErZz0q
	 1PB5WmWzBiTydbE16nK6jSShL0BrhgJdzzUhWiwaLxJFaBT1TdVeMrBKFlG6/RteHE
	 LfiZKpRnER4whoEE2BnW7m9ko2BNemHfAh40i150rrwNV42rDbAX502n6z5//WnzCh
	 LdA78bb1YK8CIb/rqrpaGfbhiMDz5l5LaH6PUiiH/fYV8vJmQlX0+ScsTlHqiuZO0L
	 r0mB9wyjPzpPcf56kyKokG5Q/yB9X8Xo+CfoSSKT0rJJfrXGpmqnHkVLB8BuG6WZRc
	 8w3Mfot6GGuGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C451C4167B
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170241889637.27277.975874751275161616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9636e21a4a8bdbae901677745a10f09aa9afce7ca10c9bd6d7aa5c16a11161
Date: Tue, 12 Dec 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702418896
