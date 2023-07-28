Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665E6D305
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 09:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CBEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 09:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690535528;
	bh=Agh77ojWUV1vhTdyuv+YMWs8RtKI2wXXMNG+dsh3Z2U=;
	h=To:Subject:From:Date:From;
	b=LEoOT/iAa6lswpzkFY5nWO+5ZrZLw8K/Yr1ScRWJg2Xva98KC5qjjBDgzTGMpwMoM
	 ZAQFtZsqDCl7bOlYS4ZUwXIiMp0+dmbI42YdQ5NgSugsKkS38wZobAa9R2TSvXfNNc
	 zjrqUn6riBoK7VJX2sE0M7edJFCTKhgQKXvy4oC2cet5o6Fqz0j7V5g/Ig7V80QJcK
	 DTkvECAQCbNOCIvn9NWGNp5yHDrYOeKG6OA31kyfwrrbJguuVAwLCvwxzogPntdGQ1
	 cGPcoCAXoRlGHxEGsA9pOM0Ituy6sOgJXqy3x3n5ZXgUG6s55sk07HPDXSiXocBNwB
	 kSDxgRBa50Ncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B886EC0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 09:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169053552874.15806.4756832504357593878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a6d7e0e7f635386e6f1204a5148b4b5cb2327e0e958f3335512b9fd0f94db0
Date: Fri, 28 Jul 2023 09:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690535528
