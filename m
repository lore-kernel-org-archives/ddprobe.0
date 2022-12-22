Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCFA1FB1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88858C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671688287;
	bh=vATNtESi2Ve1yk1W+FpjTaOnbZfo2B+IvAe7d7Ap2cE=;
	h=To:Subject:From:Date:From;
	b=Ok/Itxlt55DRXLrO6LIOpfTVUOvznx4zhoqZqTZyg4qKx1HP4DrKy1azPe8qMVLfj
	 7ucE/tPknDPPRH6lMTFv3ZQGflUwJyHUqNITm+zP400Gpu1o/MGwdGblh8gIRXmXbI
	 9gROKetuOklvsIk0myLXd7PMgQpxO9TxW6UO33jlirDF1J39k6FTN76/fFoE2LY4qU
	 tEvipE9J7e6ZIBKzUGotzQl6/rXf0Wpj1Tc44VDvmLdfWSzJUiSwAksKAoQizTsH4y
	 F7faIt918WYEZTDcp5Ldw1dyV+vCbXCPp9KVX/1mm1pCE1lFeHhcI/uFe3Ovfizz/V
	 CmWtkJFc3Ygww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A759C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168828742.8183.8619218645401763134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c89ad22b5e67fc46b9f06b79d500cfb1397c3a72c914dbf248ec472ad05a9bd
Date: Thu, 22 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671688287
