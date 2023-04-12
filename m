Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEEA2F24
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 09:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2D7C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 09:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681293125;
	bh=OkLy/pVNBNzu2w/8F1xdRASBUaQ98Ch8b7QGifMbkWI=;
	h=To:Subject:From:Date:From;
	b=npeE9ez9MAwRWyTBkWekPA3dHIK6fI5Q/6p6LsGxzqS17lFaQNr83kvCljq6fqXe7
	 u143MJBDnFUJCkzOsJp73vptXpsuvKmwQ5Y1M4KiSOX5NJD7PsHmfOCVSpdSTD+fgn
	 jgv+QGF+NnSQ5yrcuMBflvnSIQ/iMsQGhZQMJRxSu+skzCDUg8BFeGzfoxmEKwB3nI
	 ItLvEq3iZxilf+QmZPOzrKu9FYWHMxI6fqsbGE1G2HuQaDPdpNhIZjfEgLiEJFPk19
	 ekz2jmZ6T4/aR+QeQF5G3m+bMGqdhwQRo1fwTFQyv801cFVlbgaIjly4eL6AyQTR5z
	 SIMIov0txXe/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F3EC77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 09:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168129312572.7464.5755564865104546011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf94d58a45a74483b3203a6aef9d041ea77c1fc2652cfd10b8da25e836e0abb
Date: Wed, 12 Apr 2023 09:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681293125
