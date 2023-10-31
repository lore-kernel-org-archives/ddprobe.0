Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E2428EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Il/A0mPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FB9DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698766096;
	bh=xud/2utUPF+1cWAKD987pcSBJ06vWfbKP447/ksBGh0=;
	h=To:Subject:From:Date:From;
	b=Il/A0mPKMy3Ajta4t2DTfvCZoUpHYLH7bvyw/WFmvk6yyRK9V4/qHj09etd5EvHtv
	 DDSzZA4r8pD67WjBz26HhfvfbNDfqCwN5vaRsq8sFxRsRsZiK+KfiDF4onSqnUhCND
	 1iWwJCb90Ds/jmdY/Uo6OirA7tmGpl/0dPO1l1hi5JQacwQ54UB76MAcle+YBiv24d
	 YOYp4Tzu7w5BymuofdgJ8q4ceIfA7sCKCPTUNYSBOtfHJVJRy3BJyw1LRs3Tl6W6OI
	 H6yp9JJgVc4d7P/71c/OP5kiDd3NG/i+AAy/R2OBIEq125O01H6F7hiJfZKD/cnLpz
	 FaoA20liBXI6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E6EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169876609646.5221.11595924729345392248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef2c0e9b6571ae60bf284ba6f0dbccbe7d45f0925089ccabedc51253b3c2588
Date: Tue, 31 Oct 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698766096
