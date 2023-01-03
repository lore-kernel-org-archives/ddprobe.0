Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D2033FF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83712C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672749087;
	bh=prb5lo8tDwKSpiTE9QepjsV2ukkVLGeCQ6Yt6yxV2Ns=;
	h=To:Subject:From:Date:From;
	b=VdrwM7Z9+lAg32u7bXcKrK3/9uDBbtRHUKW2z6nGvA0b1rBlV2tBHpCBtxr4TApIG
	 Hd66mTUpcvuPI/ODlHNTRmrSloNAc2VD9Gm2fQsXXH0xZMdjZ2yfkhkzAJVqSJxvaK
	 jKvAIr3FyspZVlt7xWRcIKtRSrcaSwKs2CwYckkJzY+dq695smheng8ppYwPRdSAqW
	 gG2Sji8h7OzffuPJv6H6myo+9xC38dXncKjUXP48CfdS8O4b8i/sl8RQeoV4YocjNE
	 H+IR7YDffXks/YklrFYo/NdKAHJ92kKGoqboZUBQQAodcc4GawsT/HjfnCJbAw0vZs
	 JSyIT4iXpWIvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642BCC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167274908738.4596.2667688728393544727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322db8c1a91531d2a1940d5c53000ea6cc6dacc88b3f7308213d8944c711d469
Date: Tue, 03 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672749087
