Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F654749D
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 20:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9992C433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 20:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693425848;
	bh=H7tMQGdP7sW4WMO58GhZc3DDHgNaLH8G6sbqeu3edHI=;
	h=To:Subject:From:Date:From;
	b=ssqBK2+5oHkbNF/FVsakUWQ+HaCcBerueypdgTkubkSYeKzJEyakKUpJQajJnae4I
	 O7caNtxsuRYJwR1oYo2n4U2Ec6Q0S8Gh7MUZnO2Ytt7of2b48LmnJya3FdI0w9xHnu
	 j5CZU182u5cC/Xlvip9xZyOBs0Y0vpcR9RPIFG5NAs8k9pENh0pW3lcN91iXoyVeF6
	 gaBKSTMcr9cgl/sn9+s3bw1/rGLVFRTJ7mHMAEatzSv8VWDtx9RqqkL55amqxQrBFx
	 dSXg33AgqqKovWxZkCXuVwTmXU93tWCRcZX45r2+yO+jjDvT3oaVppsAjBtPublLBB
	 qY12WxbAxf4hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCE7C83F14
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 20:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169342584869.19077.12241861897641735138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f06bf45c8133c98b5d19e25de454b1312048c060db83db2b2f4008198c33ef
Date: Wed, 30 Aug 2023 20:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693425848
