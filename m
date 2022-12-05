Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6C76125
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84713C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670262054;
	bh=m1zLxA9CVZHBTbrkmGU0n9S6FnYGkHDPwjt4nSlCDuY=;
	h=To:Subject:From:Date:From;
	b=DwW7EMVqzGodcFxO8CZGNOOQKkecIuNbKA1QHs4BJim1OmWtGjuRgVChFl7oLv0Xj
	 a9lMeBv9DkKjV3fVVRpDWZMHxFTYi6FW2xcQwSFVcGcgEuTlaYhC40o1AN5yxxd7kT
	 QkKvGHhhlMxYgZwxX1bBKy7EvK6Nf1u5GNX2rEa1IqeU2rnXHrDwODlZwR2EYu0+k/
	 5rvtK5E4OHlSMnix+WS7/ynAqLElObq6aWijZ6tx5qAkLvVdH1/U++LzpHzhoAC5TU
	 lwGjRr4FuDQHdq+7+jGeg/uQ8kgSGsAnk5wcpDA+lWJHN4vzvvw0+cV0XrwXEo9c9q
	 +80gvmdn84pDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6866CC4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026205441.22068.9461785706122499372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0687b260c94fe249a526f85f4a94a3218e7c651fc94ed8ce4425969bb4a2e94c
Date: Mon, 05 Dec 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670262054
