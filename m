Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DED020690
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 20:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2A7DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687464189;
	bh=OXz7wj3oTzdtV8p2JgKA2dVBkZEnAFSF3Z2W9Hu2mM0=;
	h=To:Subject:From:Date:From;
	b=nbzBppf9ZqRjMyjTC0TRd/SalOZ0SvlVevBCNfTx/ZJau1UleODs7ERdtnopffRQ9
	 xaT4M+7oQbhowoX5pB/LI95GKaerQGzg7Jw3BQ+Wnh4MykC1vYgLJEHOW51516JMrW
	 dqQx6DHkzi9qL41neUdx+D6GH15lbY4tNI0lybXFihwLO64QdzHr8RCmOtlw7Ls9tx
	 b7whCsz0WhwMT3NIWo7tSa47VT4eeoZSPGyNCLEW8g4DoZMfc6vzpkMdh4xyDbeWfU
	 MoXplkhbQSpLNXx79toU5OEiZzLygI8DmJ4Z+2TDTTvreGK1pGbd/EBx8MYSE3iC7W
	 IfXzi85McTvUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CEDEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 20:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168746418876.17312.6011693955267694247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61ae94ba80b05b4fe3ab71fb14bbe99baa00f4defd9a3a2800718747f4c4c1e
Date: Thu, 22 Jun 2023 20:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687464188
