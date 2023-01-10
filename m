Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8A215A7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8973CC433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673317287;
	bh=guor7ceU5/0K9n6+kfJHrYQdqi8tMe2bp3mjLOIt7AY=;
	h=To:Subject:From:Date:From;
	b=pnh9eF1YiKPML8oqPDm3/t2LGfItco/vEVnlNc2bH/JfUYZpMKyget66A095ImJP9
	 abE63iHWZnLkCpPlxRvyIQ+oDkXnDCqvnnnwDHCBQIOvJa/2Ge0GdVNOCwgqoSDHaC
	 RXhMGa199aGopZhjYOceHMRmCHgP82sTCXTZEXw3OAHIiPzH6ht48TvHime77A+QvK
	 Lih2Cb+Fg/WVUSdW6f32oCLHMSJ99xz4tgO0d1Hyh37FFVN3mTj19L86E7YD848t7m
	 BXiYHZk55chZYv8Pm6a8uPULboIB2kJ5Fp5ppi+1cWjJYyREWkuVcmrYfJsRp28TH0
	 WbLbCzfJE94pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 725A1C54EBD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331728746.1597.13743085605314475263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a164c60360c717c971fcc29b461305a51aca62379d263c26d25015ad9f6552c
Date: Tue, 10 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673317287
