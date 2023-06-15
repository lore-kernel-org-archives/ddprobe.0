Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7151B1772D
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE81C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686866348;
	bh=e/sAA3IhdZ2DhdCYmLSBvcYc7EpHycX442a+R9GfAhw=;
	h=To:Subject:From:Date:From;
	b=swALJi53ll2w1s0+ytvYxzu/pgqzfsQgZS5/XBskBsGVj8x1xXqRhOJAvqtxNEduH
	 49ZgrhPvk9EB92VRbfsiMN8z51kGOQvLpuotaWfNL/sipd1gLwcsCuMME8tckj4CVu
	 8MdASAnm+BrcIZsURob59996fL86vQVZkz9vZ9z2tP7EFGqE0CybbjVdtjHndkyXL3
	 4+4qnU7Qoj7LF5VkY549nv+Ke/pYABSPJKAlkD5XDVbuQduxtTcS+02MD/N59nl9+t
	 KjzCesPYkOhF3aGmuDzYKFkwDTC9PQprPHlxFyXbeTuNPz6rMVSrXQmfIR7V5gkfCe
	 pMrPLpDsxZjtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB4FEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168686634867.17706.17987873065110830784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce87ce60fd9531078944d8bf4548180fbf9c8e7b409abab3c6902ba2a93ce8ad
Date: Thu, 15 Jun 2023 21:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686866348
