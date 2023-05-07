Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4304E17D8
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 06:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E017BC4339B
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 06:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683440285;
	bh=FmX3Sw2/eA7o4YLzkaZ2+2HSDtx2bqqEz6/I4gpbt4w=;
	h=To:Subject:From:Date:From;
	b=GUk7ig0r34CPsZ3g29RumGBPuYVvwj5q9L0Dda54Kuyf0CwPPi+M4Fqpka2u4orI3
	 gbeS/mPPvbAOdHMRa3fLC2hKgph9yGtHDaobqqyzFtTGtrVu/XOU3toa8x1JqVh1dd
	 i/OlPipHPJxC+l93bMEkdqvhd+7b+t5TxNo2Bvi5EBB3Gb4juY7bySvvi+5n0XW9Ei
	 f/KI7i1EFr/h4sgivpKjctZaNeMC/WhqtcfqHGf+1MihUCu9pvUORtx+ccVlQXGX7w
	 k4gY18o/cO/no1h96riB0926hXJGURO1uuvfUNh3c50dDd59ueDWrr4iJLyf89T0ki
	 DP99BOT5Sb/Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61D6C7EE24
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 06:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168344028576.1445.3410709518922883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38d8e0754d20acd2bca4735f4a42e9a15b9f653abe5f8f015bd45d1cc3fa86e
Date: Sun, 07 May 2023 06:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683440285
