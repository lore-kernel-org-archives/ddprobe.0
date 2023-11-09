Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ED9374E2
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKvBzowR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E830C433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699571296;
	bh=R1Nn/sx/CFXgf72l81XeUu75w6OG+UpyI5WSpyN+DGM=;
	h=To:Subject:From:Date:From;
	b=iKvBzowRRVhcSMksvTo9x262p9konHHYzSIdyYXAsOlLJJ3a0E+do6kChRGKKCm2L
	 YsJ8cEJ2i/Yn95FYjihktW5rz7LaYGPEspo8/d7F5TqT5WkdRfXL8aR3Q4QDDeVzEI
	 YMdLUDlbdFC2peAiROHRjkss8doNnRpXQ7qI77mYGygAsiyEfKDiq7kl7tg4Mz1Rsn
	 YhoqP4S3Ik/4MqJ2GrmL00ymvpSo6XFe4DgV6/9qy5XqUU2f5Fplqh3nkqzbb/ToaI
	 lR4wjHJ8Co+eJjDE31njDvSPS2ltx/W32mH0hax16Q+tRYODjPKSf25inbRO0BoNG3
	 TQ8933TD3pppQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75033C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169957129642.25085.10840827046920967249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0571e6e419181b545434e542afac313fa498bd28caf749e74e25ced6c512f266
Date: Thu, 09 Nov 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699571296
