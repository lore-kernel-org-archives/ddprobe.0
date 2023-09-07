Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5389412B80
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 15:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7EAC43395
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 15:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694102048;
	bh=KrWgl4pNfwp+okDkJDFcVoFZlp8LPZZgveqEGuiXf5s=;
	h=To:Subject:From:Date:From;
	b=t5V5e+5Dvs4+POZTzhRXojlxYZtuRVOnQE1xsoONJkIfPx7ul6CVBRB9zFbovsLtM
	 crTkXIA+DMZpb3HvUYqYFsAQXll0fA9dL1ImVlAYfmWVOybqyHV3qyLNsfRwjdC1xU
	 gjtOQ8boLLS/zrKCJYMh9TlSOg2kAMbNf8qX2Gx7pBuvIesaKpi2TPfHtXxCKNRk1u
	 nO7maxXix8aPgbY+dqi3XqoZK1+XJS8eHWPUeblzfbLDzzufbFzXkiTj0l110Z/R4G
	 vUVz/gUDRLBIt+YyAiW/bV3yJnzIpm+onG2Mei3laD+d/YNvYMSs6RdyM7sF5X0Ovr
	 Oabjoc+sE5RvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00EDEC873D
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 15:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169410204871.2659.17825580979063423471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24380b06f41d6c12228ecf426b5dce696806cbfe1d6f78d1ef5287213adc55c4
Date: Thu, 07 Sep 2023 15:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694102048
