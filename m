Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E014882E
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 10:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5504C433C9
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 10:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695120908;
	bh=DE5wkBonJ1wQys9vC/xC8lxWfXDPkm53MclXLzKkSrI=;
	h=To:Subject:From:Date:From;
	b=BeW6Gm4OfxCIJE/jGJLh7wB+X9tmY6AKQ3B15xkn4j4qg1SnPY7wNoqpMpQBCZ7Yz
	 ZAXwwopenaS+PD48d03fJyAmtr53n/dLOE8nbScA4CRWc9hwPJALQ1piO3Smrr+OJH
	 zM8eA7QtxAdXahk37bNCaReSXEr2lQjZGGYnlvUL3DxCbs3oWD/GD13SoZKdAPMQdZ
	 hXkAjb2nlbZwCJqWqoeNtUln0EbRLu4H934GMdPbqRhJD7i6BhMdCoL51q9TsXvPVj
	 vE65XP4az5NN79d+6px2VgoDalK4P/dqPUCE4aA71qqCYuy7LYQ4jtYZCOEDLNyUSf
	 TbnAiKIReqiuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD07DCD54B2
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 10:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169512090869.31660.2328593188602292395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a06f674fea13439f8c48513aecd83d969fde8b9533d4b36eb0e38ecc47fe0cb
Date: Tue, 19 Sep 2023 10:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695120908
