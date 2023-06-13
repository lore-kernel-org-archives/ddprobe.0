Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAFC323C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 07:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0D9C4339B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 07:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686642965;
	bh=0/KsaJ4+IBvbw1AkknN83TDfIqOPB4dn2YRxdSl7OVs=;
	h=To:Subject:From:Date:From;
	b=P90eoturSaM+f3u0Wh48JBWrsZIgUOYac+psEUMHXsWV+eox2XzhtL/dHsaGzhmTF
	 mxLu1movc503FOpuLGMhpxuNh1Sou+oBUpWZkhROlJBP+jduWzXulryR/lCUSZrBAw
	 RaiXpak6LGyNU9vPOkND8C84UeTmMew7JmPeKDY6h8R1pyKJ7MZ12aEUrVfgRwe96C
	 Rjb9gE3aGRQ0yptDqoKn5ClL1VezkfOCHyJDAjBqf64tuENdp0bSs1p+peuCCmHaiZ
	 K0y3aJJQ0m6+ymiVZ4D31nxnn1LNvtaEgL3BQOV7Lgym5pJPjNNUD6yJNn6fZU3Cqp
	 2eWa3rQFDuZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C491AC88CB2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 07:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168664296579.26358.2999285328471455060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad34004222bbe0d53561868c562d3416cf64dada8b23615efb33e99707cc711a
Date: Tue, 13 Jun 2023 07:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686642965
