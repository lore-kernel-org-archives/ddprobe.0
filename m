Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBEE3C2F
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oX1Szgyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 853C9C433C8
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700974696;
	bh=G3rFNpQ214bsWZAIj7X5Cph57XkyMheJ3Zqa9JU8rhE=;
	h=To:Subject:From:Date:From;
	b=oX1SzgycmspwBeEZ4g013oGRarluXbN8GPrHj9sE/HsHe4yeLIwJGAGcw3KRmALVz
	 ALorkZz5xuxMY8pNiFIgOJbZez5Ic/sQe06N0Sz1PFB+YJs7Zhdqp4vVKG6oeQVYf1
	 1r5+Opreo1j+ZJKW/QMxsza6QOqhutdkIxxFR3Xp0JEl9BEC8D25wcX5mXVxhLz5SF
	 DAxA6MczQ/2fULjm13PCDYh3LJodwnIuCeC0fkn76VsiNXDRZigTc+CdRKrA7fh0W/
	 ZUZo6JGeRg1qu2U6IpVSQ+/xbh9I8BC/N+Y4Mybtpb78XfI8U18++oTlUCqtZ80LKO
	 HhneAwt1Z9QGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6707BC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170097469638.27859.2393776443037022225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1377e497851e35c85fd528e34912b5d8eb0b7d905fbec8f448c827e7dc394c6d
Date: Sun, 26 Nov 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700974696
