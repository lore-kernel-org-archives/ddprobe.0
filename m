Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD9E17FA
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2B3C43470
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666356053;
	bh=yRCs1/2NDXmulVEAhWCimdZM1vqqg1528GngP7RCeE4=;
	h=To:Subject:From:Date:From;
	b=UNpATkFf28S+0Iqk1b2gcPJHNCKmxiV6eY0C3Vgd7XnFeWJnUC5QqlNgKSS9JfleF
	 O8mhFxptPqueyrFnIqeueziznd2tsZZsuMhyZUkDDGabriwTBSiudDcQx1IAkJw0kk
	 yTQOV7EX+qgoX8X6rwldW9VBKk1LoGrFLD2t+VYUqeTsDxT/p9Etv2E7B9PJ2TMnie
	 YMfqExW6Ud3CvsOgFdGtKSdCUdcumwxeC3QW6iVPPEHwa4aM0KMi5BHNb2IUCoQ5iX
	 Z2TlKKyz8YZtQ/+Iny00Cz3x+9uifu6JBhZul1DytH5ewR+TMHSXZ76VcCQ56DoPHn
	 hjYKfnGKn288g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F27C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166635605332.12828.11218665143427882773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b37373dde63e798c8aa12bb3f0c7db0d1daf1f173cf08bc1d9bbde419783675
Date: Fri, 21 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666356053
