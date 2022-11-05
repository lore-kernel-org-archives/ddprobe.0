Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0763185B
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76748C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667627454;
	bh=+K1KlxcpVmRmIsL1Zl4Bfzb+81Aeyr7olbSkZL+7vKo=;
	h=To:Subject:From:Date:From;
	b=pyQkalMC7tcln1Omw3Z4DIqWHwHa9VH+VqCX0yp0aRkm7SsZcvFEStZ4G/C7cCRrp
	 Pp3Gy1qFf0UKuK+0pPw0YRyD/TI0qkdIvOBkdinHNLSKNyNpv7YM8og3l7DCM/kCT0
	 NLnpPwlvEwqkHEMuLe8inWQBV1k/5ARRxHXXEU8nOWVX2nHy+YEKhKuw1ayvHw0A69
	 y3c5d45Me7EzA7PevESp8pJ3uNImlrq9UkqS88pAvhNq2o/otiSqRl9nVINZF5ttVZ
	 mrQwrFe8oUy8kLYMh2HaFIbXzZx3FZJZbSyZ+FTUW5FCi/WI0SGQ/8Xm4g+Kg3MrHe
	 lIv96P85Q1bQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A12BC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166762745433.10158.14049850453744650497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fafbd9362bc2c3775511e260a5b6136924b455ff55af56c1d3e36b35b42a21a
Date: Sat, 05 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667627454
