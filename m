Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A8120B02
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsKNCywL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80492C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701426496;
	bh=F35avuHMssHv+4/UiCnhMx6xlNYSsWthk/51YhJa6ls=;
	h=To:Subject:From:Date:From;
	b=HsKNCywL8bbDosRXMbS03qZmh0XP5DH30BIBUaOauISVeANBTUT4yh72kyYuHy5xw
	 FUp59tfpxZpsEd2K/PIS40fYr8kyeILClEMbSgVKyM1wMWWh1ml+Lt30X9kSQN1o6B
	 2H6mscq+3bXf2c0TlgOaMyF3W6IRE7gQx9pGaS3ob6NTbqjP+1z5QYjnY72YSuCot2
	 5WcMJ4OuM0/7IYQbjBPg+3hcMV010BXaSKWCrqyv85kvC9FAI9yRne8Qcb3ld8m/pX
	 w640Szp9AiLk2s6IJBtekEXzOFT1t7ehJ1Am/Hls8gMaedN1gQqdTRTPkSsNFUWpde
	 uuulAmwii/2Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F2FC4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170142649640.15820.17683239464906843509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db064a6175b24ba4c605421edee440ab5f52aa569947bd3c11313d827b0ba596
Date: Fri, 01 Dec 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701426496
