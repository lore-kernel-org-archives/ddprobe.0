Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E723C5C98
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 07:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE11BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 07:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691997188;
	bh=mPZ+VnDDQKLxBXk4JHbY5/dZNRPXD41emoiXKHvst5E=;
	h=To:Subject:From:Date:From;
	b=IU1WDf8/hmcK+x4pTlU0nyUqh53pZBgLN4MJrp1WE1pkwbDCJ86XY3OnWTjfu/I4I
	 LmFtA0XiZ7BNucaezAH9iJdJudKO6ZbfBeKAFcqEeRXG38KCYpPMAsWg4szn7YN2kD
	 s/SIFhSvjOrwfYyc9sJx/ks6FVpPGCmY3Y1auYjQ+79NLzQbVvystEOh2QIfjAezxF
	 YUMBnjnNDNjEON0fKtdpj3deWZqoVaFT7Lm+V7p+sFNPYGSk/4o4z0uj4EVSFbzlsy
	 YeKDBK8LpngUTtterQ2ZFMXtrMq/vbawJ07fIlivbMu34izjKCoBKMuQ2MXcbqROH2
	 HvRCQgB78rFiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A581DC001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 07:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169199718866.11385.13251823963579141006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874c18c35f8b3b478edcf99c67623d0937934c549dd88929dca8fc05ebe92f4f
Date: Mon, 14 Aug 2023 07:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691997188
