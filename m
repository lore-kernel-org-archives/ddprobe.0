Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498D210979
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 10:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWJ2t9dJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3998C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 10:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697020628;
	bh=J66o0uwr2C77ipE4F3GHfNFMJ77A4dmIHP7ulcqCtZo=;
	h=To:Subject:From:Date:From;
	b=IWJ2t9dJFBng2ueJngRRV0YjA+VX0+jHjHlDsaFB7dKBFBN2uk7E2uS953ZerIS13
	 VM1M0uz38uLEsIdrL88NVn3BNh7EVOQwmqhb/hKikrIrwtvMrm/gZbplUHjdlsvqx/
	 sdvKSEQpzvavo2ZoTaLg3WcIAgmGK/u1K3Sgs8Yy5DR3HY1f0C1HTs0D8tYsb0ytPf
	 MNQJ7xfmSTy8uYzhGPnK014tgEtaLXW4LKyVk5SoimOuKGFMDs9JurDKmiUPtdfxh9
	 BG44e8akwxZ454z744uWbdWdjFXoPqeOj84wqA7Eh1Kv2nXQ9HYmbis96+CBDjGIL+
	 RIp7lX6I5ET3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA35ACD6E59
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 10:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169702062868.1440.9563808883710732691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da72169affafa9513f474a81dc23a9241225ef064c5cf44cff6dde8eab0ea9dc
Date: Wed, 11 Oct 2023 10:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697020628
