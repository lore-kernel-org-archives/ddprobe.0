Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1215A46B7
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99076C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673823687;
	bh=C2TSi5T7SgDB0X1VqBP/eI/Rq+IjXiYWJLRF70G5NOc=;
	h=To:Subject:From:Date:From;
	b=s96yW7Dbv5+nytOlKH/U+bdmsnYm3cAS2SSZLKotRO1/dMVbJVTLYHUXuD79aHXGG
	 tsp2IH+jE7+o4L0k12HaOVvUHW/oqffaHEiGRCxub3uZ21rbumV2aqsek3ytpImsKb
	 ccDJyuCfVV+QaVLphmtJ71xz3ntS7fiQWZpU9AVDandt8JMZCHVRb+iv/QnrPQC6y3
	 GKK6OEydJivXDsAQbfpNdDIrgtiUF+X8oSS3iKiu+jyq+/vadjBcaFkQ86UKRmtJMQ
	 LLmp+Kfo3NSPzNYgSYaBlCMrbDudTb6SVERGdkTjg2PuHFnOtmzWxnZfTWoZK9T9Go
	 gQeH+vBXIMqKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A664C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382368744.23773.1781150556665259131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8312ff55dc1e96b0debab1ab29d6802c3e03ed87876a29d607416a4364ed2e43
Date: Sun, 15 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673823687
