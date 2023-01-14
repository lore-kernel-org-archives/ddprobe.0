Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C6DECC
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8318AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673689287;
	bh=jm/DOf2hT9VTZFc2nQQZgcvoY8rayaWPCaID9iQLmHQ=;
	h=To:Subject:From:Date:From;
	b=VVBr8iRxBJgYIDCpL0bx5RAmE/ECBuiQS9mQSNe3GO7Gw4jBWEVZwVwYFwDc/wo1E
	 qGZpylacHP21Btgx5Zk9y1xD9pcbzoYbux+k9+wp6cJ3Cf2xBYEspMJEl6nBEel5d6
	 pTsmt03Naz6QxkKv1uY46mnLjUwSVReIhqyJMBaG12rGVDH62QiOSpP6vvFPl3fi1E
	 gMt9vsgGBW5t7wjlrFdQqHvAPB87ioq3z/vdqWD8REQYdJl37ipmj6vJKEwd4y/aPm
	 2iC1NrO27scbSMSGTP09Yi2vUgikXF9a9Ksm5Q2YDv0dxEYOIPz3Dor5xR76gCoDR6
	 Y8V2aBkNki/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E330C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167368928744.4024.1400380886265822363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffb17d1630f7954779ef390f4536d0967668031ca139eea2ef8c10411a0668a
Date: Sat, 14 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673689287
