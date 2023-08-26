Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708DC101F2
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 23:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0D0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 23:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693094048;
	bh=Eo8q2xSPKLEfmMFNhTVFwyTklklWKbHD4zhS2/TFWKU=;
	h=To:Subject:From:Date:From;
	b=o8jZLlyeqh6iMbeGtGm3yHplKbWyWAbo2xMGRAWwXndQae9U3khc8ESgFOH0OZHFc
	 LEFy8ZwWD4BOaZ49+10JbOnH+AOLBjSgPQjhly4inL6knopXILfoVO6AC0JoIlmNyx
	 uJkIBm4ZqUsJ7F+KTVI49dj6X02JaYkPebJVYbXiNCwW/gfM0aE+xozvN3bNpXrHpi
	 1xp5+WU197VS2XhRpvQbhXJBSRKft6jZta1E82SpjzEx3nYurVEWYl1GeDeObmihKj
	 G8ONSY8ZpnvA2UTJeqXh86Ui+Jo2s4lytExrA6gGWFBXO1OZ8JuPMeyUt5dCc2+9Rg
	 YKL2Yd/YvG36A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C93C83F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 23:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169309404868.6969.6932840383891954640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec869c4ebf6bd9e1bd88e711a9374c0f02aed35ca296af2d4699608662bf318a
Date: Sat, 26 Aug 2023 23:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693094048
