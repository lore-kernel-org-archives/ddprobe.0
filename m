Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E412D10E6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EDEC433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665987653;
	bh=+4SkjCRRncwIqwtogKko1keuC2bFUjw+PeO0CKc3Zo4=;
	h=To:Subject:From:Date:From;
	b=aBPOBHhlK2y/WsdTj0CsYUxmm5rc0Vdja9ZKEApmDDPy07OtWhTgqYLKv1I4FxsB+
	 844RIxJYap5TRvdlsDXjCExQvw8+mKZi5i5gPDkS0+uvRGpJggzzZmDfROQGU4Eya2
	 2mrtIqAtsWRflXa8VF0nE7AoDuS6jp3EpCB0kB6mImachikYLCgqmg2JlgHdxtT/jr
	 oO3W1A6bxRuNGvYGMh0B49geCBUkTRUTA5n8iOdYmotdIJocA70nC0sZeLb+I+vrCA
	 OpzNB7ez4nmaa8E/LZ4flh7K3ujN+7GHdTT+8Di+L39nz6ENxV8blgA9X6Fmoj3s5u
	 eFMvauvkZKvLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65265C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598765340.29348.17823717968980762624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819250f37d1078f06b25495372a6e5c24c6865bcc8fc93d129865209a40bf1d6
Date: Mon, 17 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665987653
