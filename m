Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B12FA94B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 11:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93AEC433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 11:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689592268;
	bh=BeAiISf6irFRavis6bVpCoYpJOtUpN6c0h27ZMEuB+M=;
	h=To:Subject:From:Date:From;
	b=fve1aXuqmYaA1pmVmCBttOCo4oJKa4+YgqAh58M/Ehx0t6ZzT+FSQJC6w5hDj9abf
	 YCbR9+qAF12WE5c3rEc89jp7CNbV4tHWUyR9Sfxm9NVKWvayml9vSIA6bqVsRhoy9V
	 60i0KKdH5qvMuaqW/LtzSjIfPiWsaYM8oTbtnTjO7OFhiBQfAzPXSjGH0SxjQN+2hH
	 ySkq+JPvB6qVJv+gmf4qWWyp0Marn+PNq+nSxmDj3s+C2KnIkrDBM6npZRa56+ZMSm
	 DMgQ8RHF3VmKjKBqfSswDkeuiHHlYVUKeyFrRBDZuFxooCZXr+30QgHpYhz/hGj5g7
	 c7F9M7G9ynEIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8574EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 11:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168959226868.19814.14016967374523862667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87cdbec62201996386baf9aaaa138d852ecd63a9b5f39d9f43002c9390456ec2
Date: Mon, 17 Jul 2023 11:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689592268
