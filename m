Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F492598
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 03:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB36AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 03:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689047228;
	bh=naXwc09+LWouNFwrAujom53COIAFSh6qoEqH9YOC1b0=;
	h=To:Subject:From:Date:From;
	b=Nwf3T4PvAHkkDA5lTIHG1c/bIXMwg7Da6lCixFFmqxcoJ3UelmDmh9Eb+lGbRE9jb
	 bmy2ovgHo9gJ/TLf5pYvnrG2jN/Xm/knMUnNKv6yjzV+DWSLA1IJcmr2P4ZUl3cHhm
	 9sqwXO0ARspqhTMuKV0K3ODB22X149VLrfkLa4x1Q+bYZsNpwMYxhdVfIqhUgXXvrW
	 ytvn+XcmZ5k/elr/JzlH5MbxR4Bk1J5oPew/MWqDgkASbU/JCNKHqHleCF8QrzkK0W
	 v5o45HSGuoYuwN3wmVUi7l+AYc/iWCd36F2x5JtBPEtRh5iGJQUmd6Ll64/t874Xt9
	 jDlLq2/GKujUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67B7EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 03:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168904722866.31802.11639672870716973956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e728ee1a0f835338552338c68b5f6bef0792889079c0a1ec99696fc334833ab
Date: Tue, 11 Jul 2023 03:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689047228
