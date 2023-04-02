Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCF13C02
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B6FC433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680445505;
	bh=N42tHTiY/VXJFTFfRHEYikdmIKcUzGJpCOb5MK8OirE=;
	h=To:Subject:From:Date:From;
	b=LctVTNQREeKjl5IrWzgiIvnVW+oDhPUWnuAIJJqKBmMitxvHjoxkUeXoYeTsAW/Ls
	 cnK7QOxJQ1jSKV1GTI2j/mdxhfHhB1hJRPAjDDY8BDpoFIBpukMXii7BXqcAHxDFKr
	 A2O27leR+Hqu4ZMJT6OzsLRoaFIF4XRKt6EswsPQqPwY3mSWPCDTmxJyk6GfDjM0FE
	 WRwJJbLJZbJL1dJI7rYanCG2ZVQoFUO/C8oeCw14vm+/8lpW/z2j1JjPJzjh6eCj0J
	 L3nuHDa2AoT0mPhiL4fexlrOET0dAY9jzSie9Nxu5LylvBbswksMaBhX3Ufo6OQiAE
	 f2XrBrebNX8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67D5C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168044550574.29300.2369222699786148482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60987ebeecb8bb4fa3eebc3ded3353778dfb0109e0b21c04ccc2f531611dfdd3
Date: Sun, 02 Apr 2023 14:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680445505
