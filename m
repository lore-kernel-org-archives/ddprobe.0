Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F69F4C7D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2DBC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687776188;
	bh=gHJOWyGtgk54cuYSsDzFc5D72JZerdHaO37WFOy0mT4=;
	h=To:Subject:From:Date:From;
	b=Qd2PAE6QoB4xeVuQ1Fvr0cifRYO7oWy/RQpx5gT7OInAuzlyAaTR/9h0G+rGG2DEc
	 0wZIMFiYzZ5mvPzbnL+tgeMCbJy+gTapjoM3FpjIr7QnKJBW1sRsDXgxyyvlEbfJtb
	 dFt1OdfVDpNxcR1nJ2K8YIv9u3Hzrm95X5rPV3mDnB0cEjymHStIIKyymGzsQbVKKY
	 HgzcJ8FOvbIJ+rTDQvke0DdbcCCLB3179ebTU1ItdGQ7I/6R2TnsAr6aNWumPGmlaf
	 JZe2STnVReneJYplsbdtBd9QERRyBXPMxxtEp0/7BL7hb5Fl32IHNhk52LRqi2UM1g
	 w2qlb1D4yLjkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5261EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 10:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168777618878.21264.4893380680919066573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a2acddd37bf354ea84088ea7ce92c2af53a497a47b0ce1f3c4bb17fd7ecfae
Date: Mon, 26 Jun 2023 10:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687776188
