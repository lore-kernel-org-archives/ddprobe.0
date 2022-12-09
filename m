Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E495D816
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D91DC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670570487;
	bh=Mv75cvGVXJMJ1kYHRQR2QkpifTGPY3aqL0HXsJOxnbg=;
	h=To:Subject:From:Date:From;
	b=s4o+NZHidL7MFRM3GNwdD4INMMT1r20yPCW++wpUcDC83wQ06/6sY+vRQ7+8ZeWem
	 p9jB0lhdxNX+hAiWHBXjBet1qlxp1e/+SGiOexq7IikuFIGgVZiJkF584jBe7AySv4
	 4E08+7HmuBlL2hyI9Dk3CjFsJa3NqMMNuVS4TrSjnZ9y6E7AZmsshSrSuTRh2pvyF5
	 xqV50Gzogj71+596BIiqak6CbkRSeadQ3AcrI2ukjz2kFFxP8zmGk8bZYsTj5JEMLg
	 8RDOlFlGKDGY2sBO9svVW2OvNsDlbCFDFh7ZXdjRbIyEHo1Q0NbpViHKpUnXuim6Ln
	 hBb5D8E3njZ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627B8C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057048739.10447.3816718317874959801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd9fdd29f974b320dc0284300c41a43e52aabe450015c48a19e28e12be77a3d
Date: Fri, 09 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670570487
