Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72602F2A
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E510C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662988253;
	bh=c6mu6S9UqITsv1JeBfACkshfx+3+foxPUgu3/hg+anA=;
	h=To:Subject:From:Date:From;
	b=WjTPfR0Dln9YOsULJWGPB8v7VpDrW8Ds+KH2mxZ0xSQ8TN/gzmeamgkdyMY8D5Pat
	 hJBrOCrUo/j5ez3+VEBJGZToin4cwnOwtTsVPuY3ZDuAvpFc20obgm3W/V8RcZRDfM
	 ufkhf3edJUosJHU7JGR/GxsTgE3BfbeYwiJWRkr2ZVCz4j8qNZWu1dAP6aldraEo0l
	 9U+vcWgi4DNEX6lGj+UJ6rCg4jtou+ym2CtnGKTMMl4WTfpPjIY0XQRaxp/8N2Cqc4
	 uCGZwvIqkg+++bBJ5RkRCiaRM7SyGX4lNCJ531J4Zrn2KeBaWL+RK/I7rsiPXWJOfk
	 0qhhv+BCCdJYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB72C6FA86
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166298825332.8896.15245406237376523465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93eacc1320fb038fd45486dbc751f8dfc8d54f1f3c3e5238fa09385f4d50e8b
Date: Mon, 12 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662988253
