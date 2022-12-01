Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AF010F6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF3CC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669884054;
	bh=rLEw+0wON7uhDC5WO+fp+Iv6BMgv/ma7FEDIhHr1SjQ=;
	h=To:Subject:From:Date:From;
	b=ew7OHI+o+92X1bRPyFA0NaAtjqF2Zpu0ie+ksrtzb5WrlP1bsNLlUwuWL5KyICoBn
	 iAfBiIGEOKgXr3aN05ZaBYBl+LH370BRbGMDEjXs8CAdx/4/H+cRSMUO2NRenLQFq2
	 pEgv2p5YAxWe/aX1blTf2CqGMLzxljG6dfk6mQwBmu79dzP+6PwbaIfykYh3TmzpyD
	 IEdGxBFG1z6eNo93lXIUqGMm9irYuEDAquYjVcR07MDijxnms7v7KwUU7RI/GNohCD
	 sgB8N4KgTPlCNBn6EhXQi+s3wE5u0JgnHfBVt8BvRsyaXos7tRUR0pCyVGMFOypYCp
	 6GV3FedFoKCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C94C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166988405434.32068.18172778400445563694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a47486ae518be95f1955ec83ec71ab9a532d57178a00fdaed5973717e77895d
Date: Thu, 01 Dec 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669884054
