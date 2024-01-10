Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F458364B4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWSf3Cdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99D49C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704868696;
	bh=4Xk7Q6n6eptzKwDeK6DBUBwwB2ljgYh/DrQ5jbEX36Q=;
	h=To:Subject:From:Date:From;
	b=CWSf3CdgXDfty0gMmr1iEKmg1K63GmPMPbVqstzMEPYaPQxN6PRxUWQ+Yeq7VmmOR
	 YpcvooSq78S2TwFqXoUnNJcFWfncLgEkeY5dxCLW6qfn4ipQNOSXBkmzK/pT06zh5x
	 P8dx5+hpZ36b9m4yO3MbjZOwVjVPjnTZwxv2J84ACk8NNXE1VrQUUAM6xWct6Ijb3L
	 lgCUvnwgDNZUHs54byzFz1G8r9eRHnWo5UiCPfycFTlwbs8QJ8LQ1Vk+/8mIGW59VD
	 iSqzh42VjtY7RBADPa72EyrvLSkNI4Gxj9pt02VgWJ7ftPnqNFi9Tgqg3/ZJlxu2hT
	 xwTyo4cgiOqTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 796EFC3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170486869648.5034.6462437407504831805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a53df585f02aaca76924cf41a0b2483bc9eeb84566d38ac65fe1a2d52d6e2af
Date: Wed, 10 Jan 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704868696
