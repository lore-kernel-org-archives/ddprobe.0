Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03E1187C
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 878CDC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665318653;
	bh=NfsA7qQeJtnfoUELhkeXdnlp7Tcg5yrvRUTwd3eCt8Q=;
	h=To:Subject:From:Date:From;
	b=Ag1AqkPioySg/BeYLwMU8CiIhD/JW0nINbqi8BjCNcwsqHDcgdJg+hU6G4CgvS7Qo
	 cUb6HpTtLhJTtnS1gx7x73u7fCcAhzfMxyOFDY4guxh+uWKiQbrwo+a1y/upZ0x7G0
	 pck1LkXpdGs4iTWp97t0LeJKr8HUcX45cGtHcdoLyQsHu6e8Uy3XK/dmU+j91J+ZWv
	 yk/vaBrful1cSVcgNNkhOl0pH77kHLqjgYL0AVLCgfz2KPnOf23c1M2+xA931+017n
	 MdRfus8R9uLe+OQ3EBPC4mAoKgmtQ9998SUNtZ3d+EdkVKWvm7D69qpnhOpxsHvbOL
	 070+ZMQXc3YUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6985EC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166531865339.23083.15244196757948660918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253a034d12d3ba7705ad57c58f7440ee811b60cc43e1d173deaa6880b678423b
Date: Sun, 09 Oct 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665318653
