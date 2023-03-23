Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2020328E8
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 08:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D354CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679558945;
	bh=Tx7Qq4Cip1lw5f5rmx+Tauk4bY+Qi0/jTo/2gtRByzE=;
	h=To:Subject:From:Date:From;
	b=pt0wOam2nlbCCzGpE41aJkr17NI/9dc1Ez3VLo1cpTUv6bEQLH9aZPNYoc/Opm/68
	 3I/hrPnJixVzu6X6a0BaNs+DoyYxC5KfcMyhufnnHlbjIBx0xM/2A+v9rXj9kfwwI5
	 DkiPKlGt/sQHyVrFFlZ0BiMry6iqvLnwHWT4BdZ3li+ML2v7vl1qjywP2qkonfpWme
	 QfM07zDTqjaMNSaH8H649rFW2f5oO4X1eO9gopv7XSJQW+Pk2eyXbIrEPgAFX13aUb
	 fX0ruHoIjGSvog9NCHJXXgZ4crofeEWsoLbE4XVxUYon+eBvBdPNUl8TTAgjSjob2R
	 MgdfA5OgoIEbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FDDC6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 08:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167955894574.31954.15787232396909327689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b31f6b3ddfbd83fd3eff9638c1c11d2a44b31161983ecd35b4dd3492daf96f4
Date: Thu, 23 Mar 2023 08:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679558945
