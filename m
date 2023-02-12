Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6B11399
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 09:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC02DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 09:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676192645;
	bh=PHqYi1RXKz9L2b2mOAxXjhD9gLKiE+rsPecwgQt08h4=;
	h=To:Subject:From:Date:From;
	b=a4bj/toAfPgi3m4IMvzfTCmLp4ZVXzwq2pCvaW2jyis6V6MY/fAZh7FjXZqPpTGOW
	 0V+wF0B9l49h26Mm0WgJXk4NNEgA7ZwQ09iLVuWJQDsx30t8VzqlUkTaKFCbIFz1Fx
	 01h7sWJHCGpKZNvkf3InQFOHxgDf6/jBXEJg0MCro51KGdIDX//4a/xJs0coOmBHEu
	 ZURb/19YkjC6bMRKxsZ28TkdgBcwAnNtDXqolxZ9J4lXcZ0nLmm7bSmQ6hoEqVZZnN
	 0igAQ+ITHZnBQho2wZTJGwxRxBGsmIzZaz1qdlrSX6Gy9zuvjI7+vkblUydTWDbl7b
	 x3AAMMswqv5xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD742C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 09:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167619264576.12942.14919903958400162541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabc0a4b9461dc571012a3b618679cb094f1e9a76e1fd2b3f49eca0aa2165e62
Date: Sun, 12 Feb 2023 09:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676192645
