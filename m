Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0997C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F1DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661724652;
	bh=EST4+rlrDQunG65zELR9LeKuvlAspTvQ0E9fpiQicOc=;
	h=To:Subject:From:Date:From;
	b=UGBf/c+MEFUE1TqlThQO0ujDmjtAFxHPxZKx54LZr0aPA1dIG5cQn5V3mvLiAv+9q
	 JPjiAVOz2+vgwDWziRKuwzM92g7Y1FAgbLyz+p4I2suP2lYGKHByU5Ku26iVkEgM1S
	 i8qpO9zuJRGe0WHhP7eK7l4ctKIW4j9PUmSghAoH89rBHXT7uf2wyxObKnYO/BE9mK
	 S0eXfTYdY7tThaSc/zeAY02cPNNBXYlMXfTtoNflcgWCuDx29eBkKUruj0pWBrg4RM
	 vNl0Yd45PSZ4I5gDttnH43kPOzv3mriiAiNe1BqEILuhiIAEhDRmA2NBDTiT9K+86V
	 MLr1SQX4OFVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6186DECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172465238.23943.1205796407321120074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80bf0db72bd93eda2cf17f0bd9521818ef1ea9b14bf754e7a1d02f6cc701f9e
Date: Sun, 28 Aug 2022 22:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661724652
