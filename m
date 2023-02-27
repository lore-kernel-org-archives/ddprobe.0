Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533626AAE
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 13:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A1EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 13:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677504366;
	bh=oIqxyIM/9+8aGtXmCPWs5Gmv+/GjTlhym+MX9R2VFC4=;
	h=To:Subject:From:Date:From;
	b=MTzx2QgpEQ8AgnyTaPQVAGG2J5IRQD2JWDO0k+lTQ+Fjl/gKGlS7sLO8hBn3a2seB
	 OddLyj6hpkp9dirGC7h+NQaVa+Jbm6YIvkm0qtExnthIT57E8o0CXJDDk3Y6fXGsVk
	 gwZsfePpJcYQzH62hMTxLKbXzpoXUeKpMyMJ7/FBFQkOMgwyioPBL1qQg7oSa2NU4r
	 x/VLLUVj8autqwrVTM4s4I4B73YaY3RE/+pH8N5MUDkV2/lJocOalRa6NG2Xi/eFoV
	 bpAiR1gAR0batA2/W8bHRme/oKo13tV2Kd93cDZ4YC7lQLMEGdQuM5TETYEVriGf4z
	 zy6Q+horH1pJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7B2FC64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 13:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167750436586.29346.14801345221382510414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc875d4b063d369929f13f7573b9f42eea7f52855d1f2a91c375ca4b676adc6
Date: Mon, 27 Feb 2023 13:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677504365
