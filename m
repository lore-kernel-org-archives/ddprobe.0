Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520C2323C
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 16:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E55ABC4339B
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 16:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676736965;
	bh=RYgyvm15ZUsgtnuJOisLQ3Sn/KZsykSWmS+BmCgYQhI=;
	h=To:Subject:From:Date:From;
	b=U3hzexcY+wJCvHwQ1GaWoHZ8GfOePNpPSUAcYQVTgEihBvl9M4bY6p5xj4EZbflmh
	 uYy+K0Itd782CzA7lUt/K9r5ufWPaU/ORDzGQFZCFYLaxMUn9UgztipKsYGNfkZS5e
	 OPcwpV8k4IsDbBCxtL0MbVilHbX7w040b/IYTmZF4eHR9gWMxMq6VDz7CnyFLyDCT+
	 O+84ibawJdjttKPIFc5nXuzkLjqJvxT09/wPb6dsAj/SC2Sd0cI2yQlqCDvOKkrqZp
	 /3kkfpsA2c49hFxcomhIt3jSpGxzUKf4pLgKApWS/fjPDpTm9QrTlIl8pUhzzl7XeC
	 c9z5+mEOnDotw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1AAC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 16:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167673696577.7390.8817166872611887975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f28f0aeff37fe79959debd06cc200c4d3df069e29c12dd32438adce04c272c0
Date: Sat, 18 Feb 2023 16:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676736965
