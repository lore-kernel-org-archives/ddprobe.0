Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D0310F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 735CCC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665290453;
	bh=K6M+qThd1WyUFjX72oYQRKri7Q3pecBL1vdbt1ygbDk=;
	h=To:Subject:From:Date:From;
	b=nzM0OTIIZhCXaH11MVr0RGAWmvvmLoqjAPbxCQ4EhNG3FTD8ljWO2JzjiXtWVEaHO
	 kgyOoWpZxZS8531F6wgId50kPjqlPIqGaS2EOx1e2ZE44ImvjFyGkM5axyAK4cKt7S
	 DULe2piDYh6xlsnaolJLx4Sy9l21mJ/xBeH0dpW6mCPPuANGJvTDwjEEuFy6N9hynq
	 vaiErZET5L/YsfYReeShLw9wmHMUjzw6V1IJr8u8xxfgn72IBeJoKCe1DjMqYvqZQJ
	 dMs+MSJb/bdSAawoO+/MzGjMo7Y/Tj4+y1f3vT5ifMolVT3Uq0/5J4OS5yp+CYfEnC
	 U6FFPOa97T3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E81C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166529045332.20652.934045713455917802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61bca066f32edc395de7582e7f0123b6a93384888e7bd180ee0a62e12b4a8430
Date: Sun, 09 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665290453
