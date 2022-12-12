Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F6C7B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED6FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670803887;
	bh=Bzlew1Gdachp98eQJwwPsJbnthLIOGVj61oRLUX/B4Y=;
	h=To:Subject:From:Date:From;
	b=l8E9YCx3N9/jGhqZxz0M4kyOYL6Thm0F9UfpxcwpUE0arMThEpXyuYYO+M71Bejiv
	 /Qkkk8W8zRqjt9w7PTd8WmAJbJIS5CRmgHZZfaCQN3/c0rK2/GCMqXQ7CM8in8dnjT
	 rDvOYwhi5uVNNuH4IC+mT5iKQaXiPOHkIPSLxV2R1pRmMQxwGdAFms8IsIsOm3EnuF
	 ald+OneLa5NMM7oqhTF/V29Qfa8+o6+8UO9gnDntnWBsYVcW0gzDJpEsiPPszyWfZ8
	 boHBQN15qDLwRwWlM8R4d+z1C6RptTW29lXS6i+Fb4llWAwu6cykgXg7slrR9O/5mq
	 vwu2oDCPpQUOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6419DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080388740.17453.592825128438895696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2044f31f719eaf8fac159bbe837d9f0d1c00effa1741c9405a1b711d98f34a6e
Date: Mon, 12 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670803887
