Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428742590
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 15:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06F40C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 15:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674401526;
	bh=yxPc0OCbhXMyXoJdGw31Hx7KyVdZmyIcB1HWxwbuc84=;
	h=To:Subject:From:Date:From;
	b=Y4OAXv5Ir6meAue0smVXBchSjy8wWG6/6ylxqX59ZMa6IzTXfpQMyjmWE/zyAjidg
	 PNZuffxIt64SPmTCIXqbhIhgLriQrnthQOHIetu6B1Nw7S3FHOcysKx3E0CHPNgYw4
	 CYypRWyQm7gSShHMg/Vga8rce9yGhZqbNzGTnmGLPVAZpZT1hOtWbWFpZBRYzGChrA
	 547duQFIiQA3DJTzXxDgfieVORkL/4+JIMojKnHq9V2RllYKTcpTZAsyJmnP7i5PZC
	 bDQP4jzXyEoelNK954j2JOScR4qgugt1GkJ3fA/5rxNA+vUQnTXD5q6Odu24OT3XC1
	 Y+6uOsrRpjaVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2305C27C76
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 15:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167440152584.7328.1454112709815841653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5418a880292f8d4d7deb52a61f0c755302b826ae93f842e24bc9ef4bbff08bf5
Date: Sun, 22 Jan 2023 15:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674401525
