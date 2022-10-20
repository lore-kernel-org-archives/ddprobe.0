Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1DF7B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D01C433B5
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666268453;
	bh=dsZCZfjcri4YpQwK32dXLkHfKUzezc/9op8CDJurn/A=;
	h=To:Subject:From:Date:From;
	b=HaCicpl1ATdy3CF7rKDmO7ceADopnf9ekHlfqS5YT8Ue/gnv9vooVZca487HvBRVt
	 my8Eo+UHyKZXymyea0q+/wZPGft4DP60Xge6QV5oNBHj8YtQXoGJq1jlpAuIvO4NGm
	 okP3yux5/lfycmAn+koPRgFFfYcry3chFqkOUCj0N08HrAHcUBgzOHXLICA+jeM/wt
	 G5xHN9+UJ5DxEof0GoGqhNfTR4X/LaS8btNMv6gzuHmiL+3GCL4+MSXOW1XvUdtO6s
	 urApUQRopVeLB1boGgipQzcPaW1oeUMHW1avaWD10bDtzgf7boPi3/oLM9hQGBeiQY
	 TDRLnnvth0DqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5369DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166626845333.5227.14165906655622969455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd1c83ec6eb6ad7902473c3b2c52d4c1debec49d01961a4a6f17ddd46bc8309
Date: Thu, 20 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666268453
