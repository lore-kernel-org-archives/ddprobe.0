Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB635185F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B72C433B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668509454;
	bh=IT40iErv93XS51w5xFs3iEUwlgPMvPkXI2cZxuuwTTA=;
	h=To:Subject:From:Date:From;
	b=kiPdq3b4GmVpYnFgJmY5YavgJ5D6rWp1+fKPdlo7UHcbUU5W9KJ+G58iDAWR2J/cZ
	 NNpMZhPmdc1neucOFmXri4JP/zY3VJ31If2UYhMtDI71OJEfYx6Lk51HVqwn+zbP9k
	 a8s6VNnu0NEE1TdcD6eKQjaDTIo+2nsAZQh7O3N7iG6iPPdRwhuWYEk2L0tWD/F7Vq
	 IOmf6n+0wcVKvcfub/gOT+JADfli1XC70/ZYAaoJb3uV59DuCQrFC/KZYaOH/GczDC
	 ZdnoIzUkJK7GdHMbCGTo5cPpPvpdIYCvmJa4qDdoxNabNjJQsYT02fQGADTD6WgMSC
	 sgFFzrHlxNZ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673CFC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166850945441.29884.6315617971191797727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c20d4477c907116fd1f95203d2bf203f78ffdd0df152a51d26fc5b24b20492c
Date: Tue, 15 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668509454
