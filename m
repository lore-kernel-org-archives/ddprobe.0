Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1A920FB
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 08:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC30AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 08:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676535065;
	bh=CzTQNCNwT0v+nwIve8uuT5uOQAD0XpyPTQyZtLZNzho=;
	h=To:Subject:From:Date:From;
	b=Jkt9qGbqIYLQhdj7FGUsoH6t/zEZcEk5eNAYdpjHL5ympUHB0TZYAAzXOqUgPuqdr
	 DRM8VYZDfNJdDzbG/iAT25dA1kV4BBWe6KgbE3nZCelkjMgsmYycHob1HSJX3ivcZN
	 k27h/ODZEpW7TQj79+X4Co3k1sTw7ptA3cI1jPC6oI6gj/hQY3POs2ibq2KsqBh3H+
	 nGgXnVdKXmBbDX6hzDx+kUk/ckMSYGQ0lnzoKRwhR4l7Oa0Grw7E9voFG0DFpqviPU
	 cYsgdv3julr8ROxeniBirYeyuv2R9W89S3UhR/EhAxYYIEvqumXHE0Ize7oRUl/Rrl
	 Bizt180lwxTwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD55C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 08:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167653506576.466.12884735187714904812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f4534ddde19e0b16312b3729a9cc52145ef84e2240511fff13b191e05dbd40
Date: Thu, 16 Feb 2023 08:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676535065
