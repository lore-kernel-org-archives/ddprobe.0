Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D765CA7
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8984FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672523487;
	bh=bOEj3pmcSPPOTmroJT3dkyBgc44FRVLZRHg34irUlmA=;
	h=To:Subject:From:Date:From;
	b=N/O1UKwKyry/WoCEvLVJ8SYIsatW+XGx7S/8/dPb0x+zNUJQdxnccYxacBNHkgwhb
	 jpgPcKq48FstfxJKgi41PCphWH/fXW2p0XEUOuMOOYY1+J691HMWfeNb6Je8BV2H2x
	 OooU+P5jUgwFuroMKaqXTqvDy+Y0YntoUpVOU70pPRJpylyvuj1m2uMn/7pBWYO8Fh
	 +D7/dT5Wqvey4d7I7qQ2jqCa+RTyxBuO4T0cfXPZ+XqE+tKipxA75msmTvSg3EPuwD
	 vm0DnKdLXh1JuTWYV5jzb64XvGZ+nzfNL4pFgsrJLm6FYtW0DOgfxhsWMASaWFj93B
	 5bviyZBQmXQxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F64AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252348744.30997.2479686912147586827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17551753b37c2c2b0f50e393fb32d4c06c41b721887236976297c1013e632f6c
Date: Sat, 31 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672523487
