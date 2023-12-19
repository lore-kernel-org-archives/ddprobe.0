Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0316512B6D
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mby8duDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829C7C433C9
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702973296;
	bh=0dlwG9TwNauPm21oCbDQFSG6cQ9aip6G0TAC45iPddo=;
	h=To:Subject:From:Date:From;
	b=Mby8duDyJ206424Q9/U+cbhMH6SSnlijUUke0jusoOEueSru+9GRnJDcwtC2vCx0A
	 oMUXjhxgMFscFIKAH9EaFKQZcKLtIQXjYov6teBRQ54xzoDLea+3qnGZeFeA+3P+7o
	 co3qDpxe6sMNJn9m8V6jtNxd+iH4LW6Bzik4MKrQyVcBCu+6I7CDJcLcqz2zW+bgh3
	 Jvypg1qUGvGtBcTMk/mNTEJR2t4sjDd6PafxblphBt/dLfkmaUsJOrO5roTQtJJJbM
	 e2rSy72WsJDWsR0GI0SAuVdWjg71PePcoxpL2fmGpAOjQU12ZoVZuD5lu7alXJsl2y
	 y9oUZKNcHNFyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F11C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170297329638.21892.15291667410557843349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67851e011f8a09434b24b11bb8df966a948329f012afdebd5d2882e09a3ca93b
Date: Tue, 19 Dec 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702973296
