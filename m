Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435707EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 05:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D87C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 05:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679895725;
	bh=K6qYpXEp/LqgfvS7Yy9ZHit2RP6lyiV7s5mGeN7nEM4=;
	h=To:Subject:From:Date:From;
	b=ZOvP/2nzKV52X7I36NLgL2Q4TV/KXMnfBKeyWFdX8NDSi3NeZuhxYyGrTZYxVaZE5
	 dXW+hKtikjoAi8a2hj1oiOBfjX3DbOOWsUM+4o1rHmrcqZmDq72yH4z097c3VL1YMb
	 G+f82w8o9WjrB5S6zDpcSCKnS557zZpLCvGGr2yX2vx5+mCbC5zcsSY+Hl8jkRz5Yt
	 t1g8Crl3Xj/fpkz8TlYz5r1mGf5anp0oovf1ZJoLhL676E/4N77kx4nwqe6lvuOLAL
	 5UuGM7K6/JimL3xOVUCzcj+is9pR/5tb9yDnaAY219Z3TV08Xw7NBcd2cTspSPsy17
	 OPHmYE7BE9a0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BCBC7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 05:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167989572580.21982.3713048338015774287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e394c37d3687ef030038d4fb3faf11658e72bef2403a68ded6b7843579df9280
Date: Mon, 27 Mar 2023 05:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679895725
