Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C617C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 11:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F0FCC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 11:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661685652;
	bh=RqGf3jfeB5ec33di2pbTh3DEahk8Gse9Z8Gm8tT0hsY=;
	h=To:Subject:From:Date:From;
	b=NCFiLlhKB99thRe5EzvZ7+ZcT/+OZ2ZegmBymPZDJkkF6NozCERGqgBer+/1ILU9I
	 /vwDsuJ9hDpjzxhpUaQlvuu89ASBGtmxzq2L2CYwqqhwugXxLRWH1DXx3ekNaewY9/
	 cIzUwUzxIKX2qNH5FGWatE66ehokPciSHQmZQep6xKeM326HB1yPeK+XDI5yW1t1af
	 GMO08C7A15TzRF1s/NGowfcFxiz6jTequOJob/Jf4UGBMPhbf1V4hQSEzpz3V0DEHm
	 RWXq7ElUSnTphUZyuHE9lokb7Y/tZYAwUt/bO6D2zpqN+KdQV6Ovf3LDKGhshbr2Wt
	 8ePuTrYrVypaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5416AC0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 11:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168565233.17894.4603755800091028380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84545d8e648e54b28e435d9b8d126cbeb9b4bc6f3e6274ec44b3bee72ad81311
Date: Sun, 28 Aug 2022 11:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661685652
