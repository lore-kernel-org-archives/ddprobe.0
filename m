Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E6317EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0E2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663290053;
	bh=4OiUhMTHPCgM+ysauUufQJ+Mgtjh89LJICjzv6IwUfU=;
	h=To:Subject:From:Date:From;
	b=lOTiw8j+n8NtAeA73CIm5lIZxNpHXeufkX1reBV1sr2nHDLUepbedEyFDTQ1a/hVK
	 Zq6YtgDKGHGL3yWP6BMXnzet2f4dluS1C1n78icQF8vlh47to6C2V1yR+vFY/1SAQq
	 mAhORHnYNIrH27TQTivSPy9pwKY5nbLMEA3Uw3oIHNbmopcaVuX+GEYxs6wzoum4n4
	 9mPnWXkby2SwVame+iMjgJt6ELxgm5iU+MWNct3z8v4u1JKNLnIS+EKTd9U3NI0mBk
	 a+5vw+Lkp/jLN//Iv4DuIffACi+NQmPAHVgczV8YvOxaz1lRtQ7y7x30FFGd7uCYFR
	 6MR0lVp00yrMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537C6C32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329005333.27457.6827945390450506680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b5cf51f9d760dffe73a1e6e6ed49a13cae9addf3b01b5b3aa6216656171637
Date: Fri, 16 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663290053
