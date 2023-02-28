Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FD49475
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 22:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD16FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 22:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677622565;
	bh=yTyQETirn5tKiLIoevlK/VtWEvAVrRRnTBYiu4aSgTI=;
	h=To:Subject:From:Date:From;
	b=i9M1AwrqXnO2o4iOP7szuTBbEgaVgmy4ZcOIDR6ODeIcU5yRjOETvpyjxiPGIF6ET
	 DjrFlayLj5TXb2Ye7greeRwNFaFxC8J9/OYK1BcbQRSx+ha7zLTcHiPwvbRLrLYV8e
	 aqNDH2XO8ewRxS0OCWjnme8rivnddo2EYNwEyQORRnUF75RlAQ/KQ54TikTIAMOkRa
	 pRwQTD3Yr7nDgIFt1UNWkkBt8YFR0vv0yiQtAK03V0EZgv3zHolhEe3PT4NfvDz9jj
	 8UOFWYyHMdlOYf652PVnVuOHLpNP3WqkJoSoHs/Lot8fR+zYibH7Zwbr3Jzvsa7tR/
	 zrVM8XrukGB6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE28DC64EC7
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 22:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167762256576.13435.5855595156009437006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182cb173be4fd5ecb40cac5a0f0769b77ab877f1fde74c47131710cda88b8fb8
Date: Tue, 28 Feb 2023 22:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677622565
