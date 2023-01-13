Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57BDBA3A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D1FAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673644287;
	bh=AzHPt1CMX3pNHcVsPwW4woebQ1yX2mc7rqyb5JglUoY=;
	h=To:Subject:From:Date:From;
	b=kH5deBD+VF0diJg+PPjKAuK7r5tFni94sxgXAS7HaZmwkkbdKbekt347BP3FFghba
	 fyXv1CxBWdb1TfkY+54hwR1TxLcLkjcXivdvnzyWEnhWzDgThCwSHwmG8NoqybthQF
	 Gm2Ym3a/BCKTg/jpmvOjaDJpZYVHVjrGjeIHeaVb9/NlkzQJrnoGrX/ynQN/3wjlY1
	 7anIeEZ1Soyfhzqoxk6dFsUYj522m1fAXtXfU4OZiMT3BEQtNOwM6lFIjRHjpkm+Zm
	 0xD8Mg/uYJel1Wa3pmxY56RZkmEckn5Mus54Rs9Zuj40gTWI01ovlzYQ71IPu4ckab
	 9YzCsPoTzsEPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF40C6379F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364428743.25213.13405882566380237428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ef02151b848702631ed5d0a486d284edf6befc07488bcbf6c44f148801ba34
Date: Fri, 13 Jan 2023 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673644287
