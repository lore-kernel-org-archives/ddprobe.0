Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88BFBE55B
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 12:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01711C433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 12:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688385969;
	bh=l2Lc3Yt/yxDpN/JTlVLMTrNpKIGmL1s9Pjk2bPDzfBI=;
	h=To:Subject:From:Date:From;
	b=j+4LBr62RBXKYK9lC5O71hDpUH0tO06vjEQnDa6B4mdjpbDsGOOMCmQ3ihvLUKIdh
	 sSCpVxCU3JpIWeDhcVcdvs38tunyFi0YvzX2QIEvxceW+GF6PhGJPkNxUwALibQUPs
	 HOWPzE6we85fC50GGaXxKSbzG7MyXmd6qgqvvwZv/AheUYs2iHcAvN1xwSce0L5TDz
	 r5nv+M5itrWepMawVnJ9sfwbxdtZnpZ60cUCxgZRaxMgEbUI03e877Qy+f0tCyYDae
	 W09r3g/3bCduboV17zIKK8rlcbOq1In5MC/YuE21xjGPRnRJIqRLIFUF9lZzUO1ojP
	 DYtJIhgadRzEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D83CDEB64DD
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 12:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168838596887.17195.9713074982481290001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c111d2b275e455c9662b424e40be4f4f341acc3ae9c07dae2a118cd6cfa43e
Date: Mon, 03 Jul 2023 12:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688385968
