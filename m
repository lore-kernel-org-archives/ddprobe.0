Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2317C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 01:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFB48C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 01:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686102726;
	bh=KDhVA5B5MkxlQENWaYygIxWdL7wzMaj8D5TpBRecYRU=;
	h=To:Subject:From:Date:From;
	b=NF+u2Rx/tslmmMr29k5WxPmeDtPDnBwAx3szsm7bD0lwqYfpVtWDRTTFM7io2nqMS
	 VFv8hB8Zderpb0rZWx183crO7xsa4JOY1WTxjR44weu18pazlGrsQaBKrhwGRz16Kx
	 D4FQqS9AvTLs+4/Z186NhFmyk7bniqYM94gsaVHbPNYfb9sPvjaHpVYoBGettSxT8e
	 1VqzDK2GbJ1y+0nr+H0Oy4pOrFxRlh9/RWp8dPOpRPYYC+zdcJMCDH9+Of5gRvqZkr
	 7xSbcuEFWL/6uAM1nAqNE0RCR2GgX72voRz0zXaZZd/EGPY4guCdUURuzcjK4WYCd+
	 qWelVC9T2tDjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1F6C7EE2F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 01:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168610272582.30662.13768616810170767278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f6f2d245cf3b7334932888074813f2a4afa55a2734ee629f6cbbba733cbdf0
Date: Wed, 07 Jun 2023 01:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686102725
