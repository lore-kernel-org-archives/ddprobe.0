Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B35736B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 928D2C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671286287;
	bh=Q8yDp/YQcEj3sX/zejXBhc6BkNmSWpOuYgt+Xfu+q+E=;
	h=To:Subject:From:Date:From;
	b=lZ+5nVOYAnKVezY2tE+wSi8GaQzyObCfx/M4uLMqCyBEE77lxR7E+1Td5Ii7FW8Pd
	 ru3345o+Pap2TS7KksG0FD6aGhNJ0l8fq+YKaibkdyua1KYbEwamAe1zDF4S5WvmAh
	 Dwd8xXX6teEiOKocJd/vpuBL+hmSdV4GOz4mfCliWKwaTA/e9eYqTYQFv6iyyvqqwA
	 Yn4FlmN2gZIiv9W1Uh+NHcP3pgNNNrMfbSGr5hhO8nB2LBmN3oBzrR/LbJfKs+5j37
	 qysrHEq+l0Cl326nYcBSFssuUDhgXJlaHP60a8kXLEMK/8u/eRBnpTucgq5V2rKpDt
	 sgc6cQAgfxueg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DE7C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167128628740.26376.4497727278299179543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e24ede33cc301c16f063b019273ca34b7966ee6826bd8df98da16f67e43bd8
Date: Sat, 17 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671286287
