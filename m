Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363467E2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 00:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD58BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 00:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676941145;
	bh=K/piUlN0mAQKKL6L041rmPfss+tEOYmAnbF9UEXylfI=;
	h=To:Subject:From:Date:From;
	b=ke5DQC91xUhUaw6y1Nmi/5+yQBSjttdcR2gRamPGXWaUx8N2jvEGgIBh3BbshHaHW
	 uSFzTRrbSZi13m5VJe25ngFykUlDVw9Q9CCf5DmaGarN/SvvT5xp2yIkGwt7Pvu08B
	 KaYHG92n6vzaSY95Vg1byAu1Dxvhe1NbtY5WJ7xLeIRa7v1EILj/xbptEnfyG1qZsF
	 MrlajU/4vAqd/UZ9xMc1mgf2XKgzlLBl+X9iT2XVT5zd7PIPTOUQZJj69W+zA0GSya
	 FypsqRrlzCR1wG4fTMxAfxGu3MORhCxCdFMWOtkM4hPMw9g51EFmkYLs6YrXI+CSoi
	 HAfJ0Sw/qqz4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF041C61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 00:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167694114577.17192.8604763587125689426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828c9cd4d09cd4c47cc1d2eb0103790d82f908c0c40a62fe0cba00db1455f6ed
Date: Tue, 21 Feb 2023 00:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676941145
